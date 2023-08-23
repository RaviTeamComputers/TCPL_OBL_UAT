report 50321 "Customer Ledger Mail"
{
    ProcessingOnly = true;
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(Customer; 18)
        {
            DataItemTableView = SORTING("No.")
                                WHERE("No." = FILTER(<> ''),
                                       "Customer Type" = FILTER(<> 'LEGAL' & <> 'MISC.' & <> 'EXIM' & <> 'COCO'),
                                      Balance = FILTER(> 0));

            trigger OnAfterGetRecord()
            var
                CustLedgEntry: Record 21;
                CustomerLedgerCCTeam: Report 50284;
                TempBlob: Codeunit "Temp Blob";
                Instm: InStream;
                OutStrm: OutStream;
            begin
                Clear(TempBlob);
                Clear(Instm);
                Clear(OutStrm);
                Clear(EmailAddressList);
                Clear(EmailCCList);
                Clear(BodyText);
                IF Customer."Customer Status" = Customer."Customer Status"::Closed THEN CurrReport.SKIP;

                //>>>>>>-------Generate
                CustLedgEntry.RESET;
                CustLedgEntry.SETFILTER("Customer No.", Customer."No.");
                CustLedgEntry.SETFILTER("Posting Date", '%1..%2', FromDate, ToDate);
                IF CustLedgEntry.FINDFIRST THEN BEGIN
                    CLEAR(CustomerLedgerCCTeam);
                    CustomerLedgerCCTeam.SETTABLEVIEW(CustLedgEntry);
                    TextFile := CustLedgEntry."Customer No." + '.pdf';
                    TempBlob.CreateOutStream(OutStrm);
                    CustomerLedgerCCTeam.SaveAs('', ReportFormat::Pdf, OutStrm);
                    TempBlob.CreateInStream(Instm);
                    // 15800 CustomerLedgerCCTeam.SAVEASPDF(TextFile);
                    //<<<<<<<-------Generate

                    //>>>>>>------Send
                    SalespersonPurchaser.RESET;
                    IF SalespersonPurchaser.GET(GetSalespersonPurchaserCode()) THEN;
                    IF SalespersonPurchaser."E-Mail" <> '' THEN BEGIN
                        EmailAddressList.Add(SalespersonPurchaser."E-Mail");

                        // 15800SMTPMail.CreateMessage('Orient Bell Tiles','creditcontrol@orientbell.com',SalespersonPurchaser."E-Mail",'Customer Ledger for '+Customer.Name+', '+Customer.City,'',TRUE);
                        //SMTPMail.CreateMessage('Orient Bell Tiles','kulbhushan.sharma@orientbell.com','kulbhushan.sharma@orientbell.com','Customer Ledger for '+Customer.Name+', '+Customer.City,'',TRUE);


                        SalespersonPurchaser.RESET;
                        IF SalespersonPurchaser.GET(Customer."CC Team") THEN
                            IF SalespersonPurchaser."E-Mail" <> '' THEN
                                // SMTPMail.AddCC(SalespersonPurchaser."E-Mail");
                                EmailCCList.Add(SalespersonPurchaser."E-Mail");

                        BodyText := ('Dear Sir/Madam');
                        BodyText += ('<br><br>');
                        BodyText += ('Please find the enclosed customer Ledger for ' + Customer.Name + ', ' + Customer.City + ' For the period of ' + FORMAT(FromDate) + ' to ' + FORMAT(ToDate));
                        BodyText += ('<br>');
                        BodyText += ('This is for your record');
                        BodyText += ('<br><br>');
                        BodyText += ('Regards,');
                        BodyText += ('<br>');
                        BodyText += ('Orient Bell Limited');
                        BodyText += ('<br>');
                        BodyText += ('Iris House, 16 Business Center, Nangal Raya');
                        BodyText += ('<br>');
                        BodyText += ('New Delhi 110046, India');
                        BodyText += ('<br>');
                        BodyText += ('Fax. +91 11 2852 1273');
                        BodyText += ('<br>');
                        //EmailAddressList.Add(SalespersonPurchaser."E-Mail");
                        //EmailCCList.add('saurabh.saxena@orientbell.com');
                        //Clear(EmailAddressList);// 15578000
                        //Clear(EmailCCList);// 15578000
                        //
                        EmailMsg.Create(EmailAddressList, 'Customer Ledger for ' + Customer.Name + ', ' + Customer.City, BodyText, true, EmailCCList, EmailBccList);
                        EmailMsg.AddAttachment(TextFile, 'application/pdf', Instm);
                        EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);


                    END;
                END;
                //<<<<<<------

            end;

            trigger OnPreDataItem()
            begin

                CASE FFType OF
                    FFType::"Sales Person":
                        SETRANGE(Customer."Salesperson Code", FieldForceCode);
                    FFType::PCH:
                        SETRANGE(Customer."PCH Code", FieldForceCode);
                    FFType::"Zonal Manager":
                        SETRANGE(Customer."Zonal Manager", FieldForceCode);
                    FFType::ZH:
                        SETRANGE(Customer."Zonal Head", FieldForceCode);
                END;
                SETRANGE("Customer Status", Customer."Customer Status"::Active);
                SETRANGE(Customer.Blocked, 0);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                field("From Date"; FromDate)
                {
                }
                field("To Date"; ToDate)
                {
                }
                field("Field Force"; FFType)
                {
                }
                field("Sales Force Code"; FieldForceCode)
                {
                    TableRelation = "Salesperson/Purchaser";
                }
                field("Mark CC TO PCH"; CCPCH)
                {
                    Visible = false;
                }
                field("Mark CC TO ZM"; CCZM)
                {
                    Visible = false;
                }
                field("Mark CC TO ZH"; CCZH)
                {
                    Visible = false;
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        IF (UPPERCASE(USERID) <> 'FA015') AND (UPPERCASE(USERID) <> 'FA017') AND (UPPERCASE(USERID) <> 'FA012') AND (UPPERCASE(USERID) <> 'FA014') AND (UPPERCASE(USERID) <> 'FA032') AND (UPPERCASE(USERID) <> 'ADMIN') and (UpperCase(UserId) <> 'OBLTILES\N') THEN
            ERROR('You are not Allowed');
    end;

    trigger OnPreReport()
    begin
        /*
        CLEAR(FromDate);
        CLEAR(ToDate);
        CLEAR(FFType);
        CLEAR(FieldForceCode);
        */
        IF (FromDate = 0D) OR (ToDate = 0D) OR (FFType = FFType::" ") OR (FieldForceCode = '')
          THEN
            ERROR('Please select the Proper Filters');

        IF FFType = FFType::" " THEN
            ERROR(BlankFFType);

    end;

    var
        CompanyInformation: Record 79;
        FromDate: Date;
        ToDate: Date;
        FFType: Option " ","Sales Person",PCH,"Zonal Manager",ZH;
        FieldForceCode: Code[10];
        CCPCH: Boolean;
        CCZM: Boolean;
        CCZH: Boolean;
        // 15800 SMTPMailSetup: Record 409;
        // 15800  SMTPMail: Codeunit 400;
        SalespersonPurchaser: Record 13;
        EmailObj: Codeunit Email;
        EmailMsg: codeunit "Email Message";
        EmailCCList: List of [Text];
        BodyText: Text;
        EmailAddressList: List of [Text];
        EmailBccList: list of [Text];
        Instrm: InStream;
        TInstrm1: InStream;

        TextCons001: Label '<nbsp>';
        TextCons002: Label '<br>';
        TextCons003: Label '</Table>';
        TextCons004: Label '</HTML>';
        TextCons005: Label '<TR>';
        TextCons006: Label '<table border="1" width="25%" align="right">';
        TextCons007: Label '</TR>';
        InCorrectMail: Boolean;
        TextFile: Text[250];
        EmailAddress: Text[250];
        fileName: Text[250];
        i: Integer;
        NoOfAtSigns: Integer;
        BlankFFType: Label 'FF Type must have a value!!';


    local procedure SendEmail()
    begin
    end;

    local procedure GetSalespersonPurchaserCode(): Code[20]
    begin
        CASE FFType OF
            FFType::"Sales Person":
                EXIT(Customer."Salesperson Code");
            FFType::PCH:
                EXIT(Customer."PCH Code");
            FFType::"Zonal Manager":
                EXIT(Customer."Zonal Manager");
            FFType::ZH:
                EXIT(Customer."Zonal Head");
        END;
    end;
}

