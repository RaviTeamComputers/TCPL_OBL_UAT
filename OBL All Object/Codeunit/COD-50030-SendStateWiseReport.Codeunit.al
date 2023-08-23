codeunit 50030 SendStateWiseReport
{

    trigger OnRun()
    var
        MatrixMaster: Record 50003;
        ZHCode: Code[10];
        PendingApprovalNotification: Codeunit 50066;
        UserSetup: Record 91;
    begin

        GlbFromDate := CALCDATE('-CM', TODAY - 1);
        GlbToDate := TODAY - 1;

        //MSAK 190919 Run report id 50031
        REPORT.RUN(50031, FALSE, FALSE);
        //MSAK 190919 Run report id 50031

        //Generate Detail Sheets Caption

        // 15800 No Need GenerateReportDetailed;


        //Generate Target Report Caption
        MatrixMaster.RESET;
        MatrixMaster.SETCURRENTKEY(ZH, PCH);
        MatrixMaster.SETFILTER("Type 1", '<>%1', '');
        MatrixMaster.SETFILTER(Description, '<>%1', '');
        // MatrixMaster.SetFilter(PCH, '%1|%2', '1112763', '1112046'); // 15800 
        IF MatrixMaster.FINDFIRST THEN BEGIN
            GenerateTargetVSAchieveReport('', FALSE); //vale
            GenerateTargetVSAchieveReport('', TRUE); //gvt
            //GenerateTargetVSAchieveReporthsk('',TRUE); //hsk Report
            SLEEP(10);
            SendEmailTargetVsAchieve('1111688', '', FALSE); //send mail complete
            SendEmailTargetVsAchieve('1111739', '', FALSE); //send mail complete
            SendEmailTargetVsAchieve('1111808', '', FALSE); //send mail complete
            SendEmailTargetVsAchieve('1111894', '', FALSE); //send mail complete
            SendEmailTargetVsAchieve('1111283', '', FALSE); //send mail complete
            SendEmailTargetVsAchieve('1110088', '', FALSE); //send mail complete
            SendEmailTargetVsAchieve('1110089', '', FALSE); //send mail complete
            SendEmailTargetVsAchieve('1112520', '', FALSE); //send mail complete
            SendEmailTargetVsAchieve('1112303', '', FALSE); //send mail complete
            SendEmailTargetVsAchieve('1111030', '', FALSE); //send mail complete 
            //<< 20-07-23
            SendEmailTargetVsAchieve('1112762', '', FALSE);
            //>> 20-07-23
            REPEAT
                //MatrixMaster.CALCFIELDS(PCH);
                IF MatrixMaster.ZH <> ZHCode THEN BEGIN
                    ZHCode := MatrixMaster.ZH;
                    GenerateZHTargetVSAchieveReport(ZHCode, FALSE);
                    GenerateZHTargetVSAchieveReport(ZHCode, TRUE);
                    SLEEP(10);
                    SendEmailZHTargetVsAchieve(ZHCode, MatrixMaster."Type 1", FALSE);

                END;
                GenerateTargetVSAchieveReport(MatrixMaster."Type 1", FALSE);
                GenerateTargetVSAchieveReport(MatrixMaster."Type 1", TRUE);
                SLEEP(10);
                SendEmailTargetVsAchieve(MatrixMaster.PCH, MatrixMaster."Type 1", FALSE);
            UNTIL MatrixMaster.NEXT = 0;
        END;


        // Mail to SP With Summary and Detail
        MailtoSPs;
        SLEEP(1000);
        // Mail to PCH With Summary and Detail
        MailtoPCH;
        SLEEP(1000);
        // Mail to ZH With Summary and Detail
        MailtoZH;
        SLEEP(1000);
        MailtoCSO;
        //MESSAGE('Done');
    end;

    var
        SalesInvoiceHeader: Record 112;
        SalesPerson: Record 13;
        txtfile: Text[100];
        Customer: Record 18;
        // SMTPSetup: Record 409;
        GlbFromDate: Date;
        GlbToDate: Date;
        tamt: Decimal;
        UpdateMatrixMaster: Report 50031;
        MatrixMaster: Record 50003;


    procedure GenerateReportDetailed()
    var
        Report50033: Report "Sales TGT vs Achvmnt";
        Report50034: Report "Debtors Report MIS";
        Docno: Code[20];
        Docno1: Code[20];
        Report50036: Report "Sales Data (Sales Journal)";
        SOutsrm: OutStream;
        TempBlob: Codeunit "Temp Blob";
        SInstrm: InStream;
        GLSetup: Record "General Ledger Setup";
    begin

        //PCH
        SalesPerson.RESET;
        SalesPerson.SETRANGE(Status, SalesPerson.Status::Enable);
        IF SalesPerson.FINDFIRST THEN
            REPEAT
                CLEAR(Report50036);
                Report50036.SetParameters(GlbFromDate, GlbToDate, '', '', SalesPerson.Code, '', FALSE);
                txtfile := 'BH_' + SalesPerson.Code;
                Clear(TempBlob);
                Clear(SInstrm);
                Clear(SOutsrm);
                TempBlob.CreateInStream(SInstrm);
                TempBlob.CreateOutStream(SOutsrm);
                Report50036.SaveAs('', ReportFormat::Excel, SOutsrm);
                Clear(SInstrm);
                Clear(SOutsrm);
                TempBlob.CreateInStream(SInstrm);
                SalesPerson."Report Storage".CreateOutStream(SOutsrm);
                CopyStream(SOutsrm, SInstrm);
                SalesPerson.Modify();
            // Report50036.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
            //IF GUIALLOWED THEN
            //MESSAGE('PCH Report Generated');
            UNTIL SalesPerson.NEXT = 0;

        //SP
        SalesPerson.RESET;
        SalesPerson.SETRANGE(Status, SalesPerson.Status::Enable);
        IF SalesPerson.FINDFIRST THEN
            REPEAT
                CLEAR(Report50036);
                Report50036.SetParameters(GlbFromDate, GlbToDate, '', '', '', SalesPerson.Code, FALSE);
                txtfile := 'SP_' + SalesPerson.Code;
                Clear(TempBlob);
                Clear(SInstrm);
                Clear(SOutsrm);
                TempBlob.CreateInStream(SInstrm);
                TempBlob.CreateOutStream(SOutsrm);
                Report50036.SaveAs('', ReportFormat::Excel, SOutsrm);
                Clear(SInstrm);
                Clear(SOutsrm);
                TempBlob.CreateInStream(SInstrm);
                SalesPerson."Report Storage".CreateOutStream(SOutsrm);
                CopyStream(SOutsrm, SInstrm);
                SalesPerson.Modify();
            // Report50036.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
            //IF GUIALLOWED THEN
            //MESSAGE('PCH Report Generated');
            UNTIL SalesPerson.NEXT = 0;

        //ZH
        SalesPerson.RESET;
        SalesPerson.SETRANGE(Status, SalesPerson.Status::Enable);
        IF SalesPerson.FINDFIRST THEN
            REPEAT
                CLEAR(Report50036);
                Report50036.SetParameters(GlbFromDate, GlbToDate, '', SalesPerson.Code, '', '', FALSE);
                txtfile := 'ZH_' + SalesPerson.Code;
                Clear(TempBlob);
                Clear(SInstrm);
                Clear(SOutsrm);
                TempBlob.CreateInStream(SInstrm);
                TempBlob.CreateOutStream(SOutsrm);
                Report50036.SaveAs('', ReportFormat::Excel, SOutsrm);
                Clear(SInstrm);
                Clear(SOutsrm);
                TempBlob.CreateInStream(SInstrm);
                SalesPerson."Report Storage".CreateOutStream(SOutsrm);
                CopyStream(SOutsrm, SInstrm);
                SalesPerson.Modify();

            // Report50036.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
            //IF GUIALLOWED THEN
            //MESSAGE('PCH Report Generated');
            UNTIL SalesPerson.NEXT = 0;
        GLSetup.Get();
        Clear(GLSetup."Cso Storage");

        CLEAR(Report50036);
        Report50036.SetParameters(GlbFromDate, GlbToDate, '', '', '', '', FALSE);
        txtfile := 'CSO_' + FORMAT(GlbToDate);
        txtfile := CONVERTSTR(txtfile, '/', '_');
        Clear(TempBlob);
        Clear(SInstrm);
        Clear(SOutsrm);
        TempBlob.CreateInStream(SInstrm);
        TempBlob.CreateOutStream(SOutsrm);
        Report50036.SaveAs('', ReportFormat::Excel, SOutsrm);
        Clear(SInstrm);
        Clear(SOutsrm);
        TempBlob.CreateInStream(SInstrm);
        GLSetup."Cso Storage".CreateOutStream(SOutsrm);
        CopyStream(SOutsrm, SInstrm);
        GLSetup.Modify();

        // Report50036.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
    end;

    /*     procedure SendEmailDetailed()
        var
            // SMTPMail: Codeunit 400;
            // SMTPMailSetup: Record 409;
            Docno2: Code[20];
            Docno3: Code[20];
            EmailObj: Codeunit Email; // 15578TEXT
            EmailMsg: codeunit "Email Message";
            EmailCCList: List of [Text];
            BodyText: Text;
            EmailAddressList: List of [Text];
            EmailBccList: list of [Text];
        begin
            //PCH
            SalesPerson.RESET;
            IF SalesPerson.FINDFIRST THEN
                REPEAT
                    IF SalesPerson."E-Mail" <> '' THEN BEGIN
                        SMTPMailSetup.GET;
                        SMTPMailSetup.TESTFIELD("User ID");
                        CLEAR(SMTPMail);
                        SMTPMail.CreateMessage('Orient Bell Limited.', 'donotreply@orientbell.com', SalesPerson."E-Mail", 'State Wise Report', '', TRUE);
                        //        SMTPMail.CreateMessage('Orient Bell Limited.','donotreply@orientbell.com','akash.kumar@mindshell.info','State Wise Report','', TRUE);
                        BodyText := ('Dear Sir <br>');
                        BodyText += ('Please find the attached report with this email. <br><br>');
                        BodyText += ('Thank You and Have a Good Day!');

                        txtfile := 'BH_' + Customer."PCH Code";
                        IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                            SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');
                            SMTPMail.Send();
                        END;
                    END;
                UNTIL SalesPerson.NEXT = 0;

            //ZH
            SalesPerson.RESET;
            IF SalesPerson.FINDFIRST THEN
                REPEAT
                    IF SalesPerson."E-Mail" <> '' THEN BEGIN
                        SMTPMailSetup.GET;
                        SMTPMailSetup.TESTFIELD("User ID");
                        CLEAR(SMTPMail);
                        SMTPMail.CreateMessage('Orient Bell Limited.', 'donotreply@orientbell.com', SalesPerson."E-Mail", 'State Wise Report', '', TRUE);
                        //        SMTPMail.CreateMessage('Orient Bell Limited.','donotreply@orientbell.com','akash.kumar@mindshell.info','State Wise Report','', TRUE);
                        BodyText := ('Dear Sir <br>');
                        BodyText += ('Please find the attached report with this email. <br><br>');
                        BodyText += ('Thank You and Have a Good Day!');

                        txtfile := 'ZH_' + Customer."Zonal Head";
                        IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                            SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');
                            SMTPMail.Send();
                        END;
                    END;
                UNTIL SalesPerson.NEXT = 0;

            //SP
            SalesPerson.RESET;
            IF SalesPerson.FINDFIRST THEN
                REPEAT
                    IF SalesPerson."E-Mail" <> '' THEN BEGIN
                        Customer.RESET;
                        Customer.SETRANGE("Salesperson Code", SalesPerson.Code);
                        //Customer.SETRANGE("Salesperson Code", '1110479');
                        IF Customer.FINDFIRST THEN
                            REPEAT
                                IF (Docno3 <> Customer."Salesperson Code") THEN BEGIN
                                    Docno3 := Customer."Salesperson Code";
                                    SMTPMailSetup.GET;
                                    SMTPMailSetup.TESTFIELD("User ID");
                                    CLEAR(SMTPMail);
                                    SMTPMail.CreateMessage('Orient Bell Limited.', 'donotreply@orientbell.com', SalesPerson."E-Mail", 'State Wise Report', '', TRUE);
                                    //SMTPMail.CreateMessage('Orient Bell Limited.','donotreply@orientbell.com','akash.kumar@mindshell.info','State Wise Report','', TRUE);
                                    BodyText := ('Dear Sir <br>');
                                    BodyText += ('Please find the attached report with this email. <br><br>');
                                    BodyText += ('Thank You and Have a Good Day!');

                                    txtfile := 'SP_' + Customer."Salesperson Code";
                                    IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                                        SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');
                                        SMTPMail.Send();
                                        MESSAGE('SP Mail Sent');
                                    END;
                                END;
                            UNTIL Customer.NEXT = 0;
                    END;
                UNTIL SalesPerson.NEXT = 0;
        end;
     */ // 15578 Not use in On Run function

    procedure GenerateReportSummary()
    var
        Report50033: Report 50033;
        Report50034: Report 50034;
        Docno4: Code[20];
        Docno5: Code[20];
    begin
        //PCH
        SalesPerson.RESET;
        IF SalesPerson.FINDFIRST THEN
            REPEAT
                Customer.RESET;
                Customer.SETRANGE("PCH Code", SalesPerson.Code);
                //Customer.SETRANGE("PCH Code", '1110479');
                IF Customer.FINDFIRST THEN
                    REPEAT
                        IF (Docno4 <> Customer."PCH Code") THEN BEGIN
                            Docno4 := Customer."PCH Code";
                            SalesInvoiceHeader.RESET;
                            SalesInvoiceHeader.SETRANGE("Posting Date", 20180110D, 20181030D);//100118D, 103018D
                            IF SalesInvoiceHeader.FINDFIRST THEN BEGIN
                                CLEAR(Report50034);
                                Report50034.SETTABLEVIEW(Customer);
                                Report50034.SETTABLEVIEW(SalesInvoiceHeader);
                                //txtfile :=  CONVERTSTR(SalesInvoiceHeader."No.",'/','_');
                                txtfile := 'Summary_BH_' + Customer."PCH Code";
                                Report50034.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
                                //MESSAGE('BH Report Generated');
                            END;
                        END;
                    UNTIL Customer.NEXT = 0;
            UNTIL SalesPerson.NEXT = 0;

        //ZH
        SalesPerson.RESET;
        IF SalesPerson.FINDFIRST THEN
            REPEAT
                Customer.RESET;
                Customer.SETRANGE("Zonal Head", SalesPerson.Code);
                //Customer.SETRANGE("PCH Code", '1110479');
                IF Customer.FINDFIRST THEN
                    REPEAT
                        IF (Docno4 <> Customer."Zonal Head") THEN BEGIN
                            Docno4 := Customer."Zonal Head";
                            SalesInvoiceHeader.RESET;
                            SalesInvoiceHeader.SETRANGE("Posting Date", 20180101D, 20181030D);//100118D, 103018D
                            IF SalesInvoiceHeader.FINDFIRST THEN BEGIN
                                CLEAR(Report50034);
                                Report50034.SETTABLEVIEW(Customer);
                                Report50034.SETTABLEVIEW(SalesInvoiceHeader);
                                //txtfile :=  CONVERTSTR(SalesInvoiceHeader."No.",'/','_');
                                txtfile := 'Summary_ZH_' + Customer."Zonal Head";
                                Report50034.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
                                MESSAGE('ZH Report Generated');
                            END;
                        END;
                    UNTIL Customer.NEXT = 0;
            UNTIL SalesPerson.NEXT = 0;

        //SP
        SalesPerson.RESET;
        IF SalesPerson.FINDFIRST THEN
            REPEAT
                Customer.RESET;
                Customer.SETRANGE("Salesperson Code", SalesPerson.Code);
                //Customer.SETRANGE("Salesperson Code", '1110479');
                IF Customer.FINDFIRST THEN
                    REPEAT
                        IF (Docno5 <> Customer."Salesperson Code") THEN BEGIN
                            Docno5 := Customer."Salesperson Code";
                            SalesInvoiceHeader.RESET;
                            SalesInvoiceHeader.SETRANGE("Posting Date", 20180110D, 20181030D);//100118D, 103018D
                            IF SalesInvoiceHeader.FINDFIRST THEN BEGIN
                                CLEAR(Report50034);
                                Report50034.SETTABLEVIEW(Customer);
                                Report50034.SETTABLEVIEW(SalesInvoiceHeader);
                                //txtfile :=  CONVERTSTR(SalesInvoiceHeader."No.",'/','_');
                                txtfile := 'Summary_SP_' + Customer."Salesperson Code";
                                Report50034.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
                                MESSAGE('SP Report Generated');
                            END;
                        END;
                    UNTIL Customer.NEXT = 0;
            UNTIL SalesPerson.NEXT = 0;
    end;


    procedure SendEmailSummary()
    var
    /* SMTPMail: Codeunit 400;
    SMTPMailSetup: Record 409;
    Docno6: Code[20];
    Docno7: Code[20];
    EmailObj: Codeunit Email; // 15578TEXT
    EmailMsg: codeunit "Email Message";
    EmailCCList: List of [Text];
    BodyText: Text;
    EmailAddressList: List of [Text];
    EmailBccList: list of [Text]; */ // 15578
    begin
        //PCH
        /* SalesPerson.RESET;
        IF SalesPerson.FINDFIRST THEN
            REPEAT
                IF SalesPerson."E-Mail" <> '' THEN BEGIN
                    Customer.RESET;
                    Customer.SETRANGE("PCH Code", SalesPerson.Code);
                    //Customer.SETRANGE("PCH Code", '1110479');
                    IF Customer.FINDFIRST THEN
                        REPEAT
                            IF (Docno6 <> Customer."PCH Code") THEN BEGIN
                                Docno6 := Customer."PCH Code";
                                SMTPMailSetup.GET;
                                SMTPMailSetup.TESTFIELD("User ID");
                                CLEAR(SMTPMail);
                                //SMTPMail.CreateMessage('Orient Bell Limited.','donotreply@orientbell.com',SalesPerson."E-Mail",'State Wise Report','', TRUE);
                                //SMTPMail.CreateMessage('Orient Bell Limited.','donotreply@orientbell.com','akash.kumar@mindshell.info','State Wise Report','', TRUE);
                                BodyText := ('Dear Sir <br>');
                                BodyText += ('Please find the attached report with this email. <br><br>');
                                BodyText += ('Thank You and Have a Good Day!');

                                txtfile := 'Summary_BH_' + Customer."PCH Code";
                                IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                                    SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');
                                    SMTPMail.Send();
                                    MESSAGE('Mail Sent');
                                END;
                            END;
                        UNTIL Customer.NEXT = 0;
                END;
            UNTIL SalesPerson.NEXT = 0;


        //ZH
        SalesPerson.RESET;
        IF SalesPerson.FINDFIRST THEN
            REPEAT
                IF SalesPerson."E-Mail" <> '' THEN BEGIN
                    Customer.RESET;
                    Customer.SETRANGE("Zonal Head", SalesPerson.Code);
                    //Customer.SETRANGE("PCH Code", '1110479');
                    IF Customer.FINDFIRST THEN
                        REPEAT
                            IF (Docno6 <> Customer."Zonal Head") THEN BEGIN
                                Docno6 := Customer."Zonal Head";
                                SMTPMailSetup.GET;
                                SMTPMailSetup.TESTFIELD("User ID");
                                CLEAR(SMTPMail);
                                //SMTPMail.CreateMessage('Orient Bell Limited.','donotreply@orientbell.com',SalesPerson."E-Mail",'State Wise Report','', TRUE);
                                //SMTPMail.CreateMessage('Orient Bell Limited.','donotreply@orientbell.com','akash.kumar@mindshell.info','State Wise Report','', TRUE);
                                BodyText += ('Dear Sir <br>');
                                BodyText += ('Please find the attached report with this email. <br><br>');
                                BodyText += ('Thank You and Have a Good Day!');

                                txtfile := 'Summary_ZH_' + Customer."PCH Code";
                                IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                                    SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');
                                    SMTPMail.Send();
                                    MESSAGE('Mail Sent');
                                END;
                            END;
                        UNTIL Customer.NEXT = 0;
                END;
            UNTIL SalesPerson.NEXT = 0;

        //SP
        SalesPerson.RESET;
        IF SalesPerson.FINDFIRST THEN
            REPEAT
                IF SalesPerson."E-Mail" <> '' THEN BEGIN
                    Customer.RESET;
                    Customer.SETRANGE("Salesperson Code", SalesPerson.Code);
                    //Customer.SETRANGE("Salesperson Code", '1110479');
                    IF Customer.FINDFIRST THEN
                        REPEAT
                            IF (Docno7 <> Customer."Salesperson Code") THEN BEGIN
                                Docno7 := Customer."Salesperson Code";
                                SMTPMailSetup.GET;
                                SMTPMailSetup.TESTFIELD("User ID");
                                CLEAR(SMTPMail);
                                //SMTPMail.CreateMessage('Orient Bell Limited.','donotreply@orientbell.com',SalesPerson."E-Mail",'State Wise Report','', TRUE);
                                //SMTPMail.CreateMessage('Orient Bell Limited.','donotreply@orientbell.com','akash.kumar@mindshell.info','State Wise Report','', TRUE);
                                BodyText += ('Dear Sir <br>');
                                BodyText += ('Please find the attached report with this email. <br><br>');
                                BodyText += ('Thank You and Have a Good Day!');

                                txtfile := 'Summary_SP_' + Customer."Salesperson Code";
                                IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                                    SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');
                                    SMTPMail.Send();
                                    MESSAGE('SP Mail Sent');
                                END;
                            END;
                        UNTIL Customer.NEXT = 0;
                END;
            UNTIL SalesPerson.NEXT = 0;
 */  // 15578
    end;


    procedure GenerateTotalReportDetailed()
    var
        Report50033: Report 50033;
        Report50034: Report 50034;
        Docno: Code[20];
        Docno1: Code[20];
    begin
        /*SalesInvoiceHeader.RESET;
        SalesInvoiceHeader.SETCURRENTKEY("Posting Date");
        SalesInvoiceHeader.SETRANGE("Posting Date", 011018D, 311018D);
        IF SalesInvoiceHeader.FINDFIRST THEN BEGIN
          CLEAR(Report50033);
          Report50033.SetDateRange(011018D, 311018D);
          Report50033.SETTABLEVIEW(SalesInvoiceHeader);
          //txtfile :=  CONVERTSTR(SalesInvoiceHeader."No.",'/','_');
          txtfile := 'TotalReport';
          Report50033.SAVEASEXCEL('C:\StateWiseReport\'+txtfile+'.xlsx');
          IF GUIALLOWED THEN
          MESSAGE('Total Report Generated');
        END;
        
        */

    end;

    local procedure SendPCHMails(AreaCode: Code[10]; PCHCode: Code[10]; SPCode: Code[10])
    var
        SalesData: Query 50025;
    begin
        CLEAR(SalesData);
        SalesData.SETFILTER(SalesData.Area_Code, AreaCode);
        IF PCHCode <> '' THEN
            SalesData.SETFILTER(SalesData.PCH_Code, PCHCode);
        IF SPCode <> '' THEN
            SalesData.SETFILTER(SalesData.Salesperson_Code, SPCode);
        SalesData.SETFILTER(SalesData.Posting_Date, '%1..%2', TODAY - 100, TODAY);
        WHILE SalesData.READ DO BEGIN


        END;
    end;


    procedure MailtoSPs()
    var
        SalesPersons: Record 13;
        DealerSchemeDetails: Record 50078;
        txtfile: Text[250];
        SchemeMaster: Record 50074;
        EmailAddress: Text[250];
        InCorrectMail: Boolean;
        NoOfAtSigns: Integer;
        i: Integer;
        // 15578 SMTPSetup: Record 409;
        // 15578 SMTPMailCodeUnit: Codeunit 400;
        SalesData: Query 50025;
        Text50000: Label 'Sales Details :';
        Text50010: Label ' <br/> ';
        Text50011: Label 'Description :-  ';
        Text50012: Label 'Remarks :-  ';
        Text50013: Label 'Reason:';
        Text59999: Label '<html>';
        Text60000: Label '<Table>';
        Text60001: Label '<TR Border=4>';
        Text60002: Label '<TD  width=200 Align=Left>';
        Text60003: Label '</TD>';
        Text60004: Label '</TR>';
        Text60005: Label '</Table>';
        Text60006: Label '</html>';
        Text60007: Label '<TD  width=500 Align=Left>';
        Text60008: Label '<TD  width=100 Align=Center>';
        Text60009: Label '<TD Align=Left>';
        Text60010: Label '<TD  width=800 Align=right>';
        Text60011: Label '<BR>';
        Text60012: Label '<B>';
        Text60013: Label '</B>';
        Text60014: Label '<TD  width=850 Align=right>';
        Text60015: Label '<font size="3"> ';
        Text60016: Label '</font>';
        Text50022: Label 'Mail Sent Successfully !!!!';
        Text50023: Label 'This is to advice that the following shipment is being despatched from our factory as follows.';
        Text50024: Label '<TD  width=1000 Align=Left>';
        Text50025: Label 'This e-Mail is auto generated from Microsoft Dynamics Navison ERP.';
        Text50026: Label '<TR>';
        Text50027: Label '<table border="1" width="70%">';
        Text50028: Label '<TH>';
        Text50029: Label '</TH>';
        Text50030: Label '<td width="20%">';
        Text50031: Label '<td width="50%">';
        Text50032: Label '<FONT SIZE=6 FACE="Sans Serif">';
        Text50041: Label '<TD  width=5 Align=Center>';
        SrNo: Integer;
        FromDate: Date;
        ToDate: Date;
        fileName: Text;
        CompletePath: Text;
        TotQty: Decimal;
        TotAmt: Decimal;
        BlnSendMail: Boolean;
        EmailObj: Codeunit Email; // 15578TEXT
        EmailMsg: codeunit "Email Message";
        EmailCCList: List of [Text];
        BodyText: Text;
        EmailAddressList: List of [Text];
        EmailBccList: list of [Text];
        Instrm: InStream;
        Report50036: Report 50036;
        SInstrm: InStream;
        SOutsrm: OutStream;
        TempBlob: Codeunit "Temp Blob";
        Instm: InStream;
    begin
        GlbFromDate := CALCDATE('-CM', TODAY - 1); // Change
        GlbToDate := TODAY - 1; // Change

        FromDate := GlbFromDate;
        ToDate := GlbToDate;
        SalesPersons.RESET;
        //SalesPersons.SETFILTER(Code,'%1|%2','1111601','1111679');
        SalesPersons.SETRANGE(SalesPersons.Status, SalesPersons.Status::Enable);
        IF SalesPersons.FINDFIRST THEN
            REPEAT
                Clear(EmailAddressList);
                Clear(EmailBccList);
                Clear(EmailCCList);
                Clear(BodyText);
                EmailAddress := SalesPersons."E-Mail";
                InCorrectMail := FALSE;
                NoOfAtSigns := 0;
                FOR i := 1 TO STRLEN(EmailAddress) DO BEGIN
                    IF EmailAddress[i] = '@' THEN
                        NoOfAtSigns := NoOfAtSigns + 1;
                    IF (((EmailAddress[i] >= 'a') AND (EmailAddress[i] <= 'z')) OR
                      ((EmailAddress[i] >= 'A') AND (EmailAddress[i] <= 'Z')) OR
                      ((EmailAddress[i] >= '0') AND (EmailAddress[i] <= '9')) OR
                      (EmailAddress[i] IN ['@', '.', '-', '_']))
                    THEN BEGIN
                    END ELSE BEGIN
                        InCorrectMail := TRUE;
                    END
                END;
                CLEAR(SalesData);
                //SalesData.SETFILTER(SalesData.Area_Code,AreaCode);
                SalesData.SETFILTER(SalesData.Salesperson_Code, SalesPersons.Code);
                SalesData.SETFILTER(SalesData.Posting_Date, '%1..%2', FromDate, GlbToDate);
                SalesData.OPEN;
                //IF SalesData.READ THEN BEGIN
                //MESSAGE(SalesPersons.Code);
                IF InCorrectMail = FALSE THEN BEGIN
                    TotQty := 0;
                    TotAmt := 0;

                    // 15578  SMTPMailCodeUnit.AddCC('donotreply@orientbell.com');
                    EmailCCList.Add('donotreply@orientbell.com');
                    IF SalesPersons.Name <> '' THEN
                        BodyText := ('Dear  ' + SalesPersons.Name)
                    ELSE
                        BodyText += ('Dear  ');
                    BodyText += ('<br><br>');
                    BodyText += ('Please find the enclosed detail of Sales Data for the Current Month.(SALES RETURN NOT CONSIDERED IN BELOW MENTIONED SUMMARY) ');
                    BodyText += ('<br><br>');
                    //Table Start
                    BodyText += (Text60005);
                    BodyText += (Text60006);
                    BodyText += (Text50027 + Text50026 + Text50041 + Text60012 + 'S.No.' + Text60013 + Text60003);
                    BodyText += (Text50030 + Text60012 + 'Territory' + Text60013 + Text60003);
                    BodyText += (Text50030 + Text60012 + 'Customer Name' + Text60013 + Text60003);
                    SrNo := 1;
                    BodyText += (Text50030 + Text60012 + 'Sum of Sq. Mtr.' + Text60013 + Text60003);
                    BodyText += (Text50030 + Text60012 + 'Value' + Text60013 + Text60003);

                    BodyText += (Text60004);

                    WHILE SalesData.READ DO BEGIN
                        BodyText += (Text50026 + Text50041 + FORMAT(SrNo) + Text60003);
                        BodyText += (Text50041 + FORMAT(SalesData.Description_2) + Text60003);
                        BodyText += (Text50041 + FORMAT(SalesData.Name) + Text60003);
                        BodyText += (Text50041 + FORMAT(SalesData.Sum_Quantity_Base) + Text60003);
                        BodyText += (Text50041 + FORMAT(ROUND(SalesData.Line_Amount / 100000, 0.01, '=')) + Text60003);
                        TotQty += SalesData.Sum_Quantity_Base;
                        TotAmt += ROUND(SalesData.Line_Amount / 100000, 0.01, '=');
                        SrNo += 1;
                        BlnSendMail := TRUE;
                    END;
                    BodyText += (Text50026 + Text50041 + FORMAT('Total -->>') + Text60003);
                    BodyText += (Text50041 + FORMAT('') + Text60003);
                    BodyText += (Text50041 + FORMAT('') + Text60003);
                    BodyText += (Text50041 + FORMAT(TotQty) + Text60003);
                    BodyText += (Text50041 + FORMAT(ROUND(TotAmt, 0.01, '=')) + Text60003);

                    //MSKS
                    BodyText += (Text60004);

                    BodyText += (Text60005);

                    BodyText += (Text60006);
                    BodyText += (Text60011);

                    BodyText += ('<br><br>');
                    BodyText += ('This is for your records');
                    BodyText += ('<br><br>');
                    BodyText += ('Regards, <br>');
                    BodyText += ('Orient Bell Limited <br>');
                    BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
                    BodyText += ('New Delhi 110046, India <br>');
                    BodyText += ('Tel. +91 11 4711 9100 <br>');
                    BodyText += ('Fax. +91 11 2852 1273 <br>');
                    fileName := '';
                    fileName := 'SP_' + SalesPersons.Code + '.xlsx';
                    IF (STRPOS(SalesPersons."E-Mail", ' ') = 0) AND (SalesPersons."E-Mail" <> '') THEN BEGIN
                        // 15578  SMTPSetup.GET();
                        EmailAddressList.Add(SalesPersons."E-Mail");
                        EmailCCList.Add('donotreply@orientbell.com');
                        EmailMsg.Create(EmailAddressList, ' - Sales Details - ' + SalesPersons.Name, BodyText, true, EmailCCList, EmailBccList);
                    END ELSE BEGIN
                        // 15578 SMTPSetup.GET();
                        EmailAddressList.Add('donotreply@orientbell.com');
                        EmailCCList.Add('donotreply@orientbell.com');
                        EmailMsg.Create(EmailAddressList, ' - Sales Details - ' + SalesPersons.Name, BodyText, true, EmailCCList, EmailBccList);

                    END;
                    CLEAR(Report50036);
                    Report50036.SetParameters(GlbFromDate, GlbToDate, '', '', '', SalesPersons.Code, FALSE);
                    txtfile := 'SP_' + SalesPersons.Code;
                    Clear(TempBlob);
                    Clear(SInstrm);
                    Clear(SOutsrm);
                    TempBlob.CreateInStream(SInstrm);
                    TempBlob.CreateOutStream(SOutsrm);
                    Report50036.SaveAs('', ReportFormat::Excel, SOutsrm);
                    Clear(SInstrm);
                    Clear(SOutsrm);
                    TempBlob.CreateInStream(SInstrm);
                    SalesPersons."Report Storage".CreateOutStream(SOutsrm);
                    CopyStream(SOutsrm, SInstrm);
                    SalesPersons.Modify();
                    /*IF (EXISTS('C:\StateWiseReport\' + fileName)) THEN BEGIN
                        CompletePath := 'C:\StateWiseReport\' + fileName;
                        SMTPMailCodeUnit.AddAttachment(CompletePath, fileName);
                    END;*/ // 15578
                    Clear(Instm);
                    SalesPersons.SetAutoCalcFields("Report Storage");
                    SalesPersons."Report Storage".CreateInStream(Instm);


                    /* IF (EXISTS('C:\StateWiseReport\' + fileName)) THEN BEGIN
                        CompletePath := 'C:\StateWiseReport\' + fileName;
                        SMTPMailCodeUnit.AddAttachment(CompletePath, fileName);
                    END; */ // 15578
                    IF TotAmt <> 0 THEN begin
                        EmailMsg.AddAttachment(fileName, 'application/excel', Instm);
                        EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
                    end;
                END;
            //END;
            UNTIL SalesPersons.NEXT = 0;
    end;


    procedure MailtoPCH()
    var
        SalesPersons: Record 13;
        DealerSchemeDetails: Record 50078;
        txtfile: Text[250];
        SchemeMaster: Record 50074;
        EmailAddress: Text[250];
        InCorrectMail: Boolean;
        NoOfAtSigns: Integer;
        i: Integer;
        // 15578 SMTPSetup: Record 409;
        // 15578 SMTPMailCodeUnit: Codeunit "400";
        SalesData: Query 50025;
        Text50000: Label 'Sales Details :';
        Text50010: Label ' <br/> ';
        Text50011: Label 'Description :-  ';
        Text50012: Label 'Remarks :-  ';
        Text50013: Label 'Reason:';
        Text59999: Label '<html>';
        Text60000: Label '<Table>';
        Text60001: Label '<TR Border=4>';
        Text60002: Label '<TD  width=200 Align=Left>';
        Text60003: Label '</TD>';
        Text60004: Label '</TR>';
        Text60005: Label '</Table>';
        Text60006: Label '</html>';
        Text60007: Label '<TD  width=500 Align=Left>';
        Text60008: Label '<TD  width=100 Align=Center>';
        Text60009: Label '<TD Align=Left>';
        Text60010: Label '<TD  width=800 Align=right>';
        Text60011: Label '<BR>';
        Text60012: Label '<B>';
        Text60013: Label '</B>';
        Text60014: Label '<TD  width=850 Align=right>';
        Text60015: Label '<font size="3"> ';
        Text60016: Label '</font>';
        Text50022: Label 'Mail Sent Successfully !!!!';
        Text50023: Label 'This is to advice that the following shipment is being despatched from our factory as follows.';
        Text50024: Label '<TD  width=1000 Align=Left>';
        Text50025: Label 'This e-Mail is auto generated from Microsoft Dynamics Navison ERP.';
        Text50026: Label '<TR>';
        Text50027: Label '<table border="1" width="70%">';
        Text50028: Label '<TH>';
        Text50029: Label '</TH>';
        Text50030: Label '<td width="20%">';
        Text50031: Label '<td width="50%">';
        Text50032: Label '<FONT SIZE=6 FACE="Sans Serif">';
        Text50041: Label '<TD  width=5 Align=Center>';
        SrNo: Integer;
        fromDate: Date;
        ToDate: Date;
        fileName: Text;
        CompletePath: Text;
        TotQty: Decimal;
        TotAmt: Decimal;
        BlnSendMail: Boolean;
        EmailObj: Codeunit Email; // 15578TEXT
        EmailMsg: codeunit "Email Message";
        EmailCCList: List of [Text];
        BodyText: Text;
        EmailAddressList: List of [Text];
        EmailBccList: list of [Text];
        Instm: InStream;
        Report50036: Report 50036;
        TempBlob: Codeunit "Temp Blob";
        SOutsrm: OutStream;
        SInstrm: InStream;

    begin
        GlbFromDate := CALCDATE('-CM', TODAY - 1); // Change
        GlbToDate := TODAY - 1; // Change

        fromDate := GlbFromDate;
        ToDate := GlbToDate;

        SalesPersons.RESET;
        //SalesPersons.SETFILTER(Code,'%1|%2','VAC-DEHRA','1111622');

        SalesPersons.SETRANGE(SalesPersons.Status, SalesPersons.Status::Enable);
        IF SalesPersons.FINDFIRST THEN
            REPEAT
                Clear(EmailAddressList);
                Clear(EmailBccList);
                Clear(EmailCCList);
                Clear(BodyText);
                EmailAddress := SalesPersons."E-Mail";
                InCorrectMail := FALSE;
                NoOfAtSigns := 0;
                FOR i := 1 TO STRLEN(EmailAddress) DO BEGIN
                    IF EmailAddress[i] = '@' THEN
                        NoOfAtSigns := NoOfAtSigns + 1;
                    IF (((EmailAddress[i] >= 'a') AND (EmailAddress[i] <= 'z')) OR
                      ((EmailAddress[i] >= 'A') AND (EmailAddress[i] <= 'Z')) OR
                      ((EmailAddress[i] >= '0') AND (EmailAddress[i] <= '9')) OR
                      (EmailAddress[i] IN ['@', '.', '-', '_']))
                    THEN BEGIN
                    END ELSE BEGIN
                        InCorrectMail := TRUE;
                    END
                END;
                CLEAR(SalesData);
                //SalesData.SETFILTER(SalesData.Area_Code,AreaCode);
                SalesData.SETFILTER(SalesData.PCH_Code, '%1', SalesPersons.Code);
                SalesData.SETFILTER(SalesData.Posting_Date, '%1..%2', fromDate, GlbToDate);
                SalesData.OPEN;
                //          IF SalesData.READ THEN BEGIN
                //MESSAGE(SalesPersons.Code);
                IF InCorrectMail = FALSE THEN BEGIN
                    TotQty := 0;
                    TotAmt := 0;
                    /* IF (STRPOS(SalesPersons."E-Mail", ' ') = 0) AND (SalesPersons."E-Mail" <> '') THEN BEGIN
                       // 15578  SMTPSetup.GET();
                        SMTPMailCodeUnit.CreateMessage('Orient Bell Limited.', 'donotreply@orientbell.com',
                                                      SalesPersons."E-Mail", ' - BH Sales Details - ' + SalesPersons.Name, '', TRUE);

                    END ELSE BEGIN
                       // 15578 SMTPSetup.GET();
                        SMTPMailCodeUnit.CreateMessage('Orient Bell Limited.', 'donotreply@orientbell.com',
                                                      'donotreply@orientbell.com', 'Sales Details - ' + SalesPersons.Name, '', TRUE);
                    END; */ // 15578 

                    // 15578  SMTPMailCodeUnit.AddCC('donotreply@orientbell.com');
                    EmailCCList.Add('donotreply@orientbell.com');
                    IF SalesPersons.Name <> '' THEN
                        BodyText := ('Dear  ' + SalesPersons.Name)
                    ELSE
                        BodyText += ('Dear  ');
                    BodyText += ('<br><br>');
                    BodyText += ('Please find the enclosed detail of Sales Data for the Current Month.(SALES RETURN NOT CONSIDERED IN BELOW MENTIONED SUMMARY) ');
                    BodyText += ('<br><br>');
                    //Table Start
                    BodyText += (Text60005);
                    BodyText += (Text60006);
                    BodyText += (Text50027 + Text50026 + Text50041 + Text60012 + 'S.No.' + Text60013 + Text60003);
                    BodyText += (Text50030 + Text60012 + 'Territory' + Text60013 + Text60003);
                    BodyText += (Text50030 + Text60012 + 'Customer Name' + Text60013 + Text60003);
                    SrNo := 1;
                    BodyText += (Text50030 + Text60012 + 'Sum of Sq. Mtr.' + Text60013 + Text60003);
                    BodyText += (Text50030 + Text60012 + 'Value' + Text60013 + Text60003);

                    BodyText += (Text60004);

                    WHILE SalesData.READ DO BEGIN
                        BodyText += (Text50026 + Text50041 + FORMAT(SrNo) + Text60003);
                        BodyText += (Text50041 + FORMAT(SalesData.Description_2) + Text60003);
                        BodyText += (Text50041 + FORMAT(SalesData.Name) + Text60003);
                        BodyText += (Text50041 + FORMAT(SalesData.Sum_Quantity_Base) + Text60003);
                        BodyText += (Text50041 + FORMAT(ROUND(SalesData.Line_Amount / 100000, 0.01, '=')) + Text60003);
                        TotQty += SalesData.Sum_Quantity_Base;
                        TotAmt += ROUND(SalesData.Line_Amount / 100000, 0.01, '=');
                        BlnSendMail := TRUE;
                        SrNo += 1;
                    END;
                    BodyText += (Text50026 + Text50041 + FORMAT('Total -->>') + Text60003);
                    BodyText += (Text50041 + FORMAT('') + Text60003);
                    BodyText += (Text50041 + FORMAT('') + Text60003);
                    BodyText += (Text50041 + FORMAT(TotQty) + Text60003);
                    BodyText += (Text50041 + FORMAT(ROUND(TotAmt, 0.01, '=')) + Text60003);

                    //MSKS
                    BodyText += (Text60004);

                    BodyText += (Text60005);

                    BodyText += (Text60006);
                    BodyText += (Text60011);

                    BodyText += ('<br><br>');
                    BodyText += ('This is for your records');
                    BodyText += ('<br><br>');
                    BodyText += ('Regards, <br>');
                    BodyText += ('Orient Bell Limited <br>');
                    BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
                    BodyText += ('New Delhi 110046, India <br>');
                    BodyText += ('Tel. +91 11 4711 9100 <br>');
                    BodyText += ('Fax. +91 11 2852 1273 <br>');
                    fileName := '';
                    fileName := 'BH_' + SalesPersons.Code + '.xlsx';
                    IF (STRPOS(SalesPersons."E-Mail", ' ') = 0) AND (SalesPersons."E-Mail" <> '') THEN BEGIN
                        // 15578  SMTPSetup.GET();
                        EmailAddressList.Add(SalesPersons."E-Mail");
                        EmailMsg.Create(EmailAddressList, ' - BH Sales Details - ' + SalesPersons.Name, BodyText, true, EmailCCList, EmailBccList);
                    END ELSE BEGIN
                        // 15578 SMTPSetup.GET();
                        EmailAddressList.Add('donotreply@orientbell.com');
                        EmailMsg.Create(EmailAddressList, ' - BH Sales Details - ' + SalesPersons.Name, BodyText, true, EmailCCList, EmailBccList);

                    END;
                    CLEAR(Report50036);
                    Report50036.SetParameters(GlbFromDate, GlbToDate, '', '', SalesPersons.Code, '', FALSE);
                    txtfile := 'BH_' + SalesPersons.Code;
                    Clear(TempBlob);
                    Clear(SInstrm);
                    Clear(SOutsrm);
                    TempBlob.CreateInStream(SInstrm);
                    TempBlob.CreateOutStream(SOutsrm);
                    Report50036.SaveAs('', ReportFormat::Excel, SOutsrm);
                    Clear(SInstrm);
                    Clear(SOutsrm);
                    TempBlob.CreateInStream(SInstrm);
                    SalesPersons."Report Storage".CreateOutStream(SOutsrm);
                    CopyStream(SOutsrm, SInstrm);
                    SalesPersons.Modify();
                    /*IF (EXISTS('C:\StateWiseReport\' + fileName)) THEN BEGIN
                        CompletePath := 'C:\StateWiseReport\' + fileName;
                        SMTPMailCodeUnit.AddAttachment(CompletePath, fileName);
                    END;*/ // 15578
                    Clear(Instm);
                    SalesPersons.SetAutoCalcFields("Report Storage");
                    SalesPersons."Report Storage".CreateInStream(Instm);
                    IF TotAmt <> 0 THEN begin
                        EmailMsg.AddAttachment(fileName, 'application/excel', Instm);
                        EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
                    end;

                END;
            //  END;
            UNTIL SalesPersons.NEXT = 0;
    end;


    procedure MailtoCSO()
    var
        SalesPersons: Record 13;
        DealerSchemeDetails: Record 50078;
        txtfile: Text[250];
        SchemeMaster: Record 50074;
        EmailAddress: Text[250];
        InCorrectMail: Boolean;
        NoOfAtSigns: Integer;
        i: Integer;
        // 15578 SMTPSetup: Record 409;
        // 15578 SMTPMailCodeUnit: Codeunit 400;
        SalesData: Query 50025;
        Text50000: Label 'Sales Details :';
        Text50010: Label ' <br/> ';
        Text50011: Label 'Description :-  ';
        Text50012: Label 'Remarks :-  ';
        Text50013: Label 'Reason:';
        Text59999: Label '<html>';
        Text60000: Label '<Table>';
        Text60001: Label '<TR Border=4>';
        Text60002: Label '<TD  width=200 Align=Left>';
        Text60003: Label '</TD>';
        Text60004: Label '</TR>';
        Text60005: Label '</Table>';
        Text60006: Label '</html>';
        Text60007: Label '<TD  width=500 Align=Left>';
        Text60008: Label '<TD  width=100 Align=Center>';
        Text60009: Label '<TD Align=Left>';
        Text60010: Label '<TD  width=800 Align=right>';
        Text60011: Label '<BR>';
        Text60012: Label '<B>';
        Text60013: Label '</B>';
        Text60014: Label '<TD  width=850 Align=right>';
        Text60015: Label '<font size="3"> ';
        Text60016: Label '</font>';
        Text50022: Label 'Mail Sent Successfully !!!!';
        Text50023: Label 'This is to advice that the following shipment is being despatched from our factory as follows.';
        Text50024: Label '<TD  width=1000 Align=Left>';
        Text50025: Label 'This e-Mail is auto generated from Microsoft Dynamics Navison ERP.';
        Text50026: Label '<TR>';
        Text50027: Label '<table border="1" width="70%">';
        Text50028: Label '<TH>';
        Text50029: Label '</TH>';
        Text50030: Label '<td width="20%">';
        Text50031: Label '<td width="50%">';
        Text50032: Label '<FONT SIZE=6 FACE="Sans Serif">';
        Text50041: Label '<TD  width=5 Align=Center>';
        SrNo: Integer;
        FromDate: Date;
        ToDate: Date;
        fileName: Text;
        CompletePath: Text;
        TotQty: Decimal;
        TotAmt: Decimal;
        BlnSendMail: Boolean;
        EmailObj: Codeunit Email; // 15578TEXT
        EmailMsg: codeunit "Email Message";
        EmailCCList: List of [Text];
        BodyText: Text;
        EmailAddressList: List of [Text];
        EmailBccList: list of [Text];
        Instrm: InStream;
        GLSetup: Record "General Ledger Setup";
        Report50036: Report 50036;
        TempBlob: Codeunit "Temp Blob";
        SInstrm: InStream;
        SOutsrm: OutStream;
        Instm: InStream;
        GLSetup1: Record "General Ledger Setup";
    begin
        Clear(EmailAddressList);
        Clear(EmailBccList);
        Clear(EmailCCList);
        Clear(BodyText);
        GLSetup1.Get();
        GlbFromDate := CALCDATE('-CM', TODAY - 1); // Change
        GlbToDate := TODAY - 1; // Change

        FromDate := GlbFromDate;
        ToDate := GlbToDate;
        EmailAddress := 'bs.negi@orientbell.com';
        InCorrectMail := FALSE;
        NoOfAtSigns := 0;
        FOR i := 1 TO STRLEN(EmailAddress) DO BEGIN
            IF EmailAddress[i] = '@' THEN
                NoOfAtSigns := NoOfAtSigns + 1;
            IF (((EmailAddress[i] >= 'a') AND (EmailAddress[i] <= 'z')) OR
              ((EmailAddress[i] >= 'A') AND (EmailAddress[i] <= 'Z')) OR
              ((EmailAddress[i] >= '0') AND (EmailAddress[i] <= '9')) OR
              (EmailAddress[i] IN ['@', '.', '-', '_']))
            THEN BEGIN
            END ELSE BEGIN
                InCorrectMail := TRUE;
            END
        END;
        CLEAR(SalesData);
        //SalesData.SETFILTER(SalesData.Area_Code,AreaCode);
        SalesData.SETFILTER(SalesData.Posting_Date, '%1..%2', FromDate, TODAY - 1);
        SalesData.OPEN;
        //IF SalesData.READ THEN BEGIN
        //MESSAGE(SalesPersons.Code);
        IF InCorrectMail = FALSE THEN BEGIN

            // 15578 SMTPSetup.GET();
            EmailCCList.Add('santosh.upadhyay@orientbell.com');
            EmailCCList.Add('donotreply@orientbell.com');
            EmailCCList.Add('pushpender.kumar@orientbell.com');
            EmailCCList.Add('rachit.vij@orientbell.com');
            EmailCCList.Add('divya.chauhan@orientbell.com');
            EmailCCList.Add('jegatheeswaran.palsamy@orientbell.com');
            EmailCCList.Add('amit.goel@orientbell.com');
            EmailCCList.Add('sujeet.singh@orientbell.com');
            // 15800  EmailCCList.Add('santosh.upadhyay@orientbell.com'); // 15800 as Per Give by Laxman Sir to Add Mail id in CC.
            BodyText := ('Dear  ');
            BodyText += ('<br><br>');
            BodyText += ('Please find the enclosed detail of Sales Data for the Current Month.(SALES RETURN NOT CONSIDERED IN BELOW MENTIONED SUMMARY) ');
            BodyText += ('<br><br>');
            //Table Start
            BodyText += (Text60005);
            BodyText += (Text60006);
            BodyText += (Text50027 + Text50026 + Text50041 + Text60012 + 'S.No.' + Text60013 + Text60003);
            BodyText += (Text50030 + Text60012 + 'Territory' + Text60013 + Text60003);
            BodyText += (Text50030 + Text60012 + 'Customer Name' + Text60013 + Text60003);
            SrNo := 1;
            BodyText += (Text50030 + Text60012 + 'Sum of Sq. Mtr.' + Text60013 + Text60003);
            BodyText += (Text50030 + Text60012 + 'Value' + Text60013 + Text60003);

            BodyText += (Text60004);

            WHILE SalesData.READ DO BEGIN
                BodyText += (Text50026 + Text50041 + FORMAT(SrNo) + Text60003);
                BodyText += (Text50041 + FORMAT(SalesData.Description_2) + Text60003);
                BodyText += (Text50041 + FORMAT(SalesData.Name) + Text60003);
                BodyText += (Text50041 + FORMAT(SalesData.Sum_Quantity_Base) + Text60003);
                BodyText += (Text50041 + FORMAT(ROUND(SalesData.Line_Amount / 100000, 0.01, '=')) + Text60003);
                TotQty += SalesData.Sum_Quantity_Base;
                TotAmt += ROUND(SalesData.Line_Amount / 100000, 0.01, '=');
                SrNo += 1;
                BlnSendMail := TRUE;
            END;
            BodyText += (Text50026 + Text50041 + FORMAT('Total -->>') + Text60003);
            BodyText += (Text50041 + FORMAT('') + Text60003);
            BodyText += (Text50041 + FORMAT('') + Text60003);
            BodyText += (Text50041 + FORMAT(TotQty) + Text60003);
            BodyText += (Text50041 + FORMAT(ROUND(TotAmt, 0.01, '=')) + Text60003);
            //MSKS
            BodyText += (Text60004);

            BodyText += (Text60005);

            BodyText += (Text60006);
            BodyText += (Text60011);

            BodyText += ('<br><br>');
            BodyText += ('This is for your records');
            BodyText += ('<br><br>');
            BodyText += ('Regards, <br>');
            BodyText += ('Orient Bell Limited <br>');
            BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
            BodyText += ('New Delhi 110046, India <br>');
            BodyText += ('Tel. +91 11 4711 9100 <br>');
            BodyText += ('Fax. +91 11 2852 1273 <br>');
            fileName := '';
            fileName := 'CSO_' + FORMAT(ToDate) + '.xlsx';
            fileName := CONVERTSTR(fileName, '/', '_');

            EmailCCList.Add('donotreply@orientbell.com');
            EmailAddressList.Add('bs.negi@orientbell.com');
            EmailMsg.Create(EmailAddressList, 'Sales Details', BodyText, true, EmailCCList, EmailBccList);

            CLEAR(Report50036);
            Report50036.SetParameters(GlbFromDate, GlbToDate, '', '', '', '', FALSE);
            txtfile := 'CSO_' + FORMAT(GlbToDate);
            Clear(TempBlob);
            Clear(SInstrm);
            Clear(SOutsrm);
            TempBlob.CreateInStream(SInstrm);
            TempBlob.CreateOutStream(SOutsrm);
            Report50036.SaveAs('', ReportFormat::Excel, SOutsrm);
            Clear(SInstrm);
            Clear(SOutsrm);
            Clear(GLSetup1."Cso Storage");
            TempBlob.CreateInStream(SInstrm);
            GLSetup1."Cso Storage".CreateOutStream(SOutsrm);
            CopyStream(SOutsrm, SInstrm);
            GLSetup1.Modify();

            /*IF (EXISTS('C:\StateWiseReport\' + fileName)) THEN BEGIN
                CompletePath := 'C:\StateWiseReport\' + fileName;
                SMTPMailCodeUnit.AddAttachment(CompletePath, fileName);
            END;*/ // 15578
            Clear(Instm);
            GLSetup1.SetAutoCalcFields("Cso Storage");
            GLSetup1."Cso Storage".CreateInStream(Instm);

            /* IF (EXISTS('C:\StateWiseReport\' + fileName)) THEN BEGIN
                CompletePath := 'C:\StateWiseReport\' + fileName;
                SMTPMailCodeUnit.AddAttachment(CompletePath, fileName);
            END; */ // 15578
            IF TotAmt <> 0 THEN begin
                EmailMsg.AddAttachment(fileName, 'application/excel', Instm);
                EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
            end;
            //END;
        END;
    end;

    local procedure GenerateTargetVSAchieveReport(AreaCode: Code[20]; Qty: Boolean)
    var
        TargetVsAchievement: Report "Target Vs Achievement GVT";
        MatrixMaster: Record "Matrix Master";
        TargetVsAchievementhsk: Report "Target Vs Achie HSK DRA";
        TargetVsAchievementwz: Report "Target Vs Achie West Zone";
        TInstrm: InStream;
        TOutStm: OutStream;
        TempBlob: Codeunit "Temp Blob";
    begin
        IF Qty THEN BEGIN
            MatrixMaster.RESET;
            IF AreaCode <> '' THEN
                MatrixMaster.SETRANGE("Type 1", AreaCode);
            IF MatrixMaster.FINDFIRST THEN BEGIN
                CLEAR(TargetVsAchievement);
                TargetVsAchievement.SetReportType(TRUE);
                TargetVsAchievement.SETTABLEVIEW(MatrixMaster);
                IF AreaCode = '' THEN
                    txtfile := 'SKDReport ' ELSE
                    txtfile := 'SKDReport ' + AreaCode;
                Clear(TempBlob);
                Clear(TInstrm);
                Clear(TOutStm);
                Clear(MatrixMaster."Target VS Achievement GVT");
                TempBlob.CreateInStream(TInstrm);
                TempBlob.CreateOutStream(TOutStm);
                TargetVsAchievement.SaveAs('', ReportFormat::Excel, TOutStm);
                Clear(TInstrm);
                Clear(TOutStm);
                TempBlob.CreateInStream(TInstrm);
                MatrixMaster."Target VS Achievement GVT".CreateOutStream(TOutStm);
                CopyStream(TOutStm, TInstrm);
                MatrixMaster.MODIFY;


                // TargetVsAchievement.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');

                //New
                CLEAR(TargetVsAchievementhsk);
                TargetVsAchievementhsk.SetReportType(TRUE);
                TargetVsAchievementhsk.SETTABLEVIEW(MatrixMaster);
                IF AreaCode = '' THEN
                    txtfile := 'HSK_DRA_Report ' ELSE
                    txtfile := 'HSK_DRA_Report ' + AreaCode;
                Clear(TempBlob);
                Clear(TInstrm);
                Clear(TOutStm);
                Clear(MatrixMaster."Target Vs Achie HSK DRA");
                TempBlob.CreateInStream(TInstrm);
                TempBlob.CreateOutStream(TOutStm);
                TargetVsAchievementhsk.SaveAs('', ReportFormat::Excel, TOutStm);
                Clear(TInstrm);
                Clear(TOutStm);
                TempBlob.CreateInStream(TInstrm);
                MatrixMaster."Target Vs Achie HSK DRA".CreateOutStream(TOutStm);
                CopyStream(TOutStm, TInstrm);
                MatrixMaster.MODIFY;

                // TargetVsAchievementhsk.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
                //New

                //New
                CLEAR(TargetVsAchievementwz);
                TargetVsAchievementwz.SetReportType(TRUE);
                TargetVsAchievementwz.SETTABLEVIEW(MatrixMaster);
                IF AreaCode = '' THEN
                    txtfile := 'WZ_Report ' ELSE
                    txtfile := 'WZ_Report ' + AreaCode;

                // TargetVsAchievementwz.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
                //New
                Clear(TempBlob);
                Clear(TInstrm);
                Clear(TOutStm);
                Clear(MatrixMaster."Target Vs Achie West Zone");
                TempBlob.CreateInStream(TInstrm);
                TempBlob.CreateOutStream(TOutStm);
                TargetVsAchievementwz.SaveAs('', ReportFormat::Excel, TOutStm);
                Clear(TInstrm);
                Clear(TOutStm);
                TempBlob.CreateInStream(TInstrm);
                MatrixMaster."Target Vs Achie West Zone".CreateOutStream(TOutStm);
                CopyStream(TOutStm, TInstrm);
                MatrixMaster.MODIFY;



            END;
        END ELSE BEGIN
            MatrixMaster.RESET;
            IF AreaCode <> '' THEN
                MatrixMaster.SETRANGE("Type 1", AreaCode);
            IF MatrixMaster.FINDFIRST THEN BEGIN
                CLEAR(TargetVsAchievement);
                TargetVsAchievement.SetReportType(FALSE);
                TargetVsAchievement.SETTABLEVIEW(MatrixMaster);
                IF AreaCode = '' THEN
                    txtfile := 'TerritorySale ' ELSE
                    txtfile := 'TerritorySale ' + AreaCode;
                Clear(TempBlob);
                Clear(TInstrm);
                Clear(TOutStm);
                Clear(MatrixMaster."Target VS Achievement GVT True");
                TempBlob.CreateInStream(TInstrm);
                TempBlob.CreateOutStream(TOutStm);
                TargetVsAchievement.SaveAs('', ReportFormat::Excel, TOutStm);
                Clear(TInstrm);
                Clear(TOutStm);
                TempBlob.CreateInStream(TInstrm);
                MatrixMaster."Target VS Achievement GVT True".CreateOutStream(TOutStm);
                CopyStream(TOutStm, TInstrm);
                MatrixMaster.MODIFY;


                // TargetVsAchievement.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
            END;
        END;
    end;


    procedure SendEmailTargetVsAchieve(PCHCode: Code[10]; AREACode: Code[20]; Qty: Boolean)
    var
        // SMTPMail: Codeunit "400";
        // SMTPMailSetup: Record "409";
        Docno2: Code[20];
        Docno3: Code[20];
        EmailObj: Codeunit Email; // 15578TEXT
        EmailMsg: codeunit "Email Message";
        EmailCCList: List of [Text];
        BodyText: Text;
        EmailAddressList: List of [Text];
        EmailBccList: list of [Text];
        Instrm: InStream;
        TInstrm1: InStream;
        TInstrm2: InStream;
        TInstrm3: InStream;
        TInstrm4: InStream;
        MatrixMaster: Record "Matrix Master";
    begin
        //PCH
        SalesPerson.RESET;
        SalesPerson.SETRANGE(Code, PCHCode);
        IF SalesPerson.FINDFIRST THEN BEGIN
            Clear(EmailAddressList);
            Clear(EmailBccList);
            Clear(EmailCCList);
            Clear(BodyText);
            IF SalesPerson."E-Mail" <> '' THEN BEGIN
                // 15578 SMTPMailSetup.GET;
                // 15578 SMTPMailSetup.TESTFIELD("User ID");
                // 15578 CLEAR(SMTPMail);
                //SMTPMail.CreateMessage('Orient Bell Limited.','donotreply@orientbell.com',SalesPerson."E-Mail",'State Wise Report','', TRUE);
                // 15578  SMTPMail.CreateMessage('Orient Bell Limited.', 'donotreply@orientbell.com', SalesPerson."E-Mail", 'TGT V/S Achvmt|SKD Report|HSK and Dora Report- ' + FORMAT(TODAY - 1), '', TRUE);
                //SMTPMail.CreateMessage('Orient Bell Limited.','donotreply@orientbell.com','kulwant@mindshell.info','TGT V/S Achvmt|GVT Sales Tracker - '+FORMAT(TODAY -1),'', TRUE);
                //SMTPMail.AddCC('bs.negi@orientbell.com');
                // 15578 SMTPMail.AddCC('donotreply@orientbell.com');
                EmailCCList.Add('donotreply@orientbell.com');
                BodyText := ('Dear Sir <br>');
                BodyText += ('Please find the attached report with this email. <br><br>');
                BodyText += ('Thank You and Have a Good Day!');

                BodyText += ('<br><br>');
                BodyText += ('This is for your records');
                BodyText += ('<br><br>');
                BodyText += ('Regards, <br>');
                BodyText += ('Orient Bell Limited <br>');
                BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
                BodyText += ('New Delhi 110046, India <br>');
                BodyText += ('Tel. +91 11 4711 9100 <br>');
                BodyText += ('Fax. +91 11 2852 1273 <br>');

                txtfile := 'TerritorySale ' + AREACode;
                EmailAddressList.Add(SalesPerson."E-Mail");
                EmailMsg.Create(EmailAddressList, 'TGT V/S Achvmt|SKD Report|HSK and Dora Report- ' + FORMAT(TODAY - 1), BodyText, true, EmailCCList, EmailBccList);
                // 15578 SMTPMail.CreateMessage('Orient Bell Limited.', 'donotreply@orientbell.com', SalesPerson."E-Mail", 'TGT V/S Achvmt|SKD Report|HSK and Dora Report- ' + FORMAT(TODAY - 1), '', TRUE);
                /*8IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                      SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');
                      txtfile := 'SKDReport ' + AREACode;
                      IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                          SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');

                      END;
                      txtfile := 'HSK_DRA_Report ' + AREACode;
                      IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                          SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');
                      END;
                      txtfile := 'WZ_Report ' + AREACode;
                      IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                          SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');
                      END; 
                    
                   
                END;*/ // 15578
                MatrixMaster.Reset();
                MatrixMaster.SetRange(PCH, PCHCode);
                MatrixMaster.SetRange("Type 1", AREACode);
                MatrixMaster.SetAutoCalcFields("Target VS Achievement GVT", "Target VS Achievement GVT True", "Target Vs Achie HSK DRA", "Target Vs Achie West Zone");
                if MatrixMaster.FindFirst() then begin
                    Clear(TInstrm4);
                    MatrixMaster."Target VS Achievement GVT True".CreateInStream(TInstrm4);
                    EmailMsg.AddAttachment('TerritorySale ' + AREACode + '.xlsx', 'application/excel', TInstrm4);
                    Clear(TInstrm1);
                    MatrixMaster."Target VS Achievement GVT".CreateInStream(TInstrm1);
                    EmailMsg.AddAttachment('SKDReport ' + AREACode + '.xlsx', 'application/excel', TInstrm1);
                    Clear(TInstrm2);
                    MatrixMaster."Target Vs Achie HSK DRA".CreateInStream(TInstrm2);
                    EmailMsg.AddAttachment('HSK_DRA_Report ' + AREACode + '.xlsx', 'application/excel', TInstrm2);
                    Clear(TInstrm3);
                    MatrixMaster."Target Vs Achie West Zone".CreateInStream(TInstrm3);
                    EmailMsg.AddAttachment('WZ_Report ' + AREACode + '.xlsx', 'application/excel', TInstrm3);
                end;
                if AREACode = '' then begin
                    MatrixMaster.Reset();
                    MatrixMaster.SetAutoCalcFields("Target VS Achievement GVT", "Target VS Achievement GVT True", "Target Vs Achie HSK DRA", "Target Vs Achie West Zone");
                    if MatrixMaster.FindFirst() then begin
                        Clear(TInstrm4);
                        MatrixMaster."Target VS Achievement GVT True".CreateInStream(TInstrm4);
                        EmailMsg.AddAttachment('TerritorySale ' + '.xlsx', 'application/excel', TInstrm4);
                        Clear(TInstrm1);
                        MatrixMaster."Target VS Achievement GVT".CreateInStream(TInstrm1);
                        EmailMsg.AddAttachment('SKDReport ' + '.xlsx', 'application/excel', TInstrm1);
                        Clear(TInstrm2);
                        MatrixMaster."Target Vs Achie HSK DRA".CreateInStream(TInstrm2);
                        EmailMsg.AddAttachment('HSK_DRA_Report ' + '.xlsx', 'application/excel', TInstrm2);
                        Clear(TInstrm3);
                        MatrixMaster."Target Vs Achie West Zone".CreateInStream(TInstrm3);
                        EmailMsg.AddAttachment('WZ_Report ' + '.xlsx', 'application/excel', TInstrm3);
                    end;
                end;




                EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
            END;
        END;
    end;

    local procedure GenerateZHTargetVSAchieveReport(ZHCode: Code[20]; Qty: Boolean)
    var
        TargetVsAchievement: Report 50037;
        MatrixMaster: Record 50003;
        TargetVsAchievementhsk: Report 50052;
        TargetVsAchievementwz: Report 50076;
        TempBlob: Codeunit "Temp Blob";
        TInstrm: InStream;
        TOutStm: OutStream;
    begin
        IF Qty THEN BEGIN
            MatrixMaster.RESET;
            IF ZHCode <> '' THEN
                MatrixMaster.SETRANGE(ZH, ZHCode);
            IF MatrixMaster.FINDFIRST THEN BEGIN
                CLEAR(TargetVsAchievement);
                TargetVsAchievement.SetReportType(TRUE);
                TargetVsAchievement.SETTABLEVIEW(MatrixMaster);
                txtfile := 'SKDReport ' + ZHCode;
                Clear(TempBlob);
                Clear(TInstrm);
                Clear(TOutStm);
                Clear(MatrixMaster."ZH_Target VS Achievement GVT");
                TempBlob.CreateInStream(TInstrm);
                TempBlob.CreateOutStream(TOutStm);
                TargetVsAchievement.SaveAs('', ReportFormat::Excel, TOutStm);
                Clear(TInstrm);
                Clear(TOutStm);
                TempBlob.CreateInStream(TInstrm);
                MatrixMaster."ZH_Target VS Achievement GVT".CreateOutStream(TOutStm);
                CopyStream(TOutStm, TInstrm);
                MatrixMaster.MODIFY;

                // TargetVsAchievement.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
                //New
                CLEAR(TargetVsAchievementhsk);
                TargetVsAchievementhsk.SetReportType(TRUE);
                TargetVsAchievementhsk.SETTABLEVIEW(MatrixMaster);
                IF ZHCode = '' THEN
                    txtfile := 'HSK_DRA_Report ' ELSE
                    txtfile := 'HSK_DRA_Report ' + ZHCode;
                Clear(TempBlob);
                Clear(TInstrm);
                Clear(TOutStm);
                Clear(MatrixMaster."ZH_Target Vs Achie HSK DRA");
                TempBlob.CreateInStream(TInstrm);
                TempBlob.CreateOutStream(TOutStm);
                TargetVsAchievementhsk.SaveAs('', ReportFormat::Excel, TOutStm);
                Clear(TInstrm);
                Clear(TOutStm);
                TempBlob.CreateInStream(TInstrm);
                MatrixMaster."ZH_Target Vs Achie HSK DRA".CreateOutStream(TOutStm);
                CopyStream(TOutStm, TInstrm);
                MatrixMaster.MODIFY;

                //TargetVsAchievementhsk.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
                //New
                CLEAR(TargetVsAchievementwz);
                TargetVsAchievementwz.SetReportType(TRUE);
                TargetVsAchievementwz.SETTABLEVIEW(MatrixMaster);
                IF ZHCode = '' THEN
                    txtfile := 'WZ_Report ' ELSE
                    txtfile := 'WZ_Report ' + ZHCode;
                Clear(TempBlob);
                Clear(TInstrm);
                Clear(TOutStm);
                Clear(MatrixMaster."ZH_Target Vs Achie West Zone");
                TempBlob.CreateInStream(TInstrm);
                TempBlob.CreateOutStream(TOutStm);
                TargetVsAchievementwz.SaveAs('', ReportFormat::Excel, TOutStm);
                Clear(TInstrm);
                Clear(TOutStm);
                TempBlob.CreateInStream(TInstrm);
                MatrixMaster."ZH_Target Vs Achie West Zone".CreateOutStream(TOutStm);
                CopyStream(TOutStm, TInstrm);
                MatrixMaster.MODIFY;

                // TargetVsAchievementwz.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
            END;
        END ELSE BEGIN
            MatrixMaster.RESET;
            IF ZHCode <> '' THEN
                MatrixMaster.SETRANGE(ZH, ZHCode);
            IF MatrixMaster.FINDFIRST THEN BEGIN
                CLEAR(TargetVsAchievement);
                TargetVsAchievement.SetReportType(FALSE);
                TargetVsAchievement.SETTABLEVIEW(MatrixMaster);
                txtfile := 'TerritorySale ' + ZHCode;
                Clear(TempBlob);
                Clear(TInstrm);
                Clear(TOutStm);
                Clear(MatrixMaster."ZH_Target VS Achieve GVTTrue");
                TempBlob.CreateInStream(TInstrm);
                TempBlob.CreateOutStream(TOutStm);
                TargetVsAchievement.SaveAs('', ReportFormat::Excel, TOutStm);
                Clear(TInstrm);
                Clear(TOutStm);
                TempBlob.CreateInStream(TInstrm);
                MatrixMaster."ZH_Target VS Achieve GVTTrue".CreateOutStream(TOutStm);
                CopyStream(TOutStm, TInstrm);
                MatrixMaster.MODIFY;
                // TargetVsAchievement.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
            END;
        END;
    end;


    procedure SendEmailZHTargetVsAchieve(PCHCode: Code[10]; AREACode: Code[20]; Qty: Boolean)
    var
        // SMTPMail: Codeunit "400";
        // SMTPMailSetup: Record "409";
        Docno2: Code[20];
        Docno3: Code[20];
        EmailObj: Codeunit Email; // 15578TEXT
        EmailMsg: codeunit "Email Message";
        EmailCCList: List of [Text];
        BodyText: Text;
        EmailAddressList: List of [Text];
        EmailBccList: list of [Text];
        Instrm: InStream;
        TInstrm4: InStream;
        TInstrm1: InStream;
        TInstrm2: InStream;
        TInstrm3: InStream;
        MatrixMaster: Record "Matrix Master";
    begin
        //PCH
        SalesPerson.RESET;
        SalesPerson.SETRANGE(Code, PCHCode);
        IF SalesPerson.FINDFIRST THEN BEGIN
            Clear(EmailAddressList);
            Clear(EmailBccList);
            Clear(EmailCCList);
            Clear(BodyText);
            IF SalesPerson."E-Mail" <> '' THEN BEGIN
                /*  SMTPMailSetup.GET;
                 SMTPMailSetup.TESTFIELD("User ID");
                 CLEAR(SMTPMail); */ // 15578 
                                     //SMTPMail.CreateMessage('Orient Bell Limited.','donotreply@orientbell.com',SalesPerson."E-Mail",'State Wise Report','', TRUE);
                                     // 15578 SMTPMail.CreateMessage('Orient Bell Limited.', 'donotreply@orientbell.com', SalesPerson."E-Mail", 'TGT V/S Achvmt|SKD Report|HSK and Dora Report - ' + FORMAT(TODAY - 1), '', TRUE);
                                     //SMTPMail.CreateMessage('Orient Bell Limited.','donotreply@orientbell.com','kulwant@mindshell.info','TGT V/S Achvmt|GVT Sales Tracker - '+FORMAT(TODAY -1),'', TRUE);
                                     //SMTPMail.AddCC('bs.negi@orientbell.com');
                                     // 15578 SMTPMail.AddCC('donotreply@orientbell.com');
                EmailCCList.Add('donotreply@orientbell.com');
                BodyText := ('Dear Sir <br>');
                BodyText += ('Please find the attached report with this email. <br><br>');
                BodyText += ('Thank You and Have a Good Day!');

                BodyText += ('<br><br>');
                BodyText += ('This is for your records');
                BodyText += ('<br><br>');
                BodyText += ('Regards, <br>');
                BodyText += ('Orient Bell Limited <br>');
                BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
                BodyText += ('New Delhi 110046, India <br>');
                BodyText += ('Tel. +91 11 4711 9100 <br>');
                BodyText += ('Fax. +91 11 2852 1273 <br>');

                txtfile := 'TerritorySale ' + PCHCode;
                /* IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                    SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');
                    txtfile := 'SKDReport ' + PCHCode;
                    IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                        SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');
                    END;
                    txtfile := 'HSK_DRA_Report ' + PCHCode;
                    IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                        SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');
                    END;
                    txtfile := 'WZ_Report ' + PCHCode;
                    IF (EXISTS('C:\StateWiseReport\' + txtfile + '.xlsx')) THEN BEGIN
                        SMTPMail.AddAttachment('C:\StateWiseReport\' + txtfile + '.xlsx', txtfile + '.xlsx');
                    END; */ // 15578 
                            // 15578  SMTPMail.CreateMessage('Orient Bell Limited.', 'donotreply@orientbell.com', SalesPerson."E-Mail", 'TGT V/S Achvmt|SKD Report|HSK and Dora Report - ' + FORMAT(TODAY - 1), '', TRUE);
                EmailAddressList.Add(SalesPerson."E-Mail");
                EmailMsg.Create(EmailAddressList, 'TGT V/S Achvmt|SKD Report|HSK and Dora Report - ' + FORMAT(TODAY - 1), BodyText, true, EmailCCList, EmailBccList);
                MatrixMaster.Reset();
                MatrixMaster.SetRange(ZH, PCHCode);
                MatrixMaster.SetAutoCalcFields("ZH_Target VS Achieve GVTTrue", "ZH_Target VS Achievement GVT", "ZH_Target Vs Achie HSK DRA", "ZH_Target Vs Achie West Zone");
                if MatrixMaster.FindFirst() then begin
                    Clear(TInstrm4);
                    MatrixMaster."ZH_Target VS Achieve GVTTrue".CreateInStream(TInstrm4);
                    EmailMsg.AddAttachment('TerritorySale ' + PCHCode + '.xlsx', 'application/excel', TInstrm4);
                    Clear(TInstrm1);
                    MatrixMaster."ZH_Target VS Achievement GVT".CreateInStream(TInstrm1);
                    EmailMsg.AddAttachment('SKDReport ' + PCHCode + '.xlsx', 'application/excel', TInstrm1);
                    Clear(TInstrm2);
                    MatrixMaster."ZH_Target Vs Achie HSK DRA".CreateInStream(TInstrm2);
                    EmailMsg.AddAttachment('HSK_DRA_Report ' + PCHCode + '.xlsx', 'application/excel', TInstrm2);
                    Clear(TInstrm3);
                    MatrixMaster."ZH_Target Vs Achie West Zone".CreateInStream(TInstrm3);
                    EmailMsg.AddAttachment('WZ_Report ' + PCHCode + '.xlsx', 'application/excel', TInstrm3);
                end;
                EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
            END;
        END;
    END;



    procedure MailtoZH()
    var
        SalesPersons: Record 13;
        DealerSchemeDetails: Record 50078;
        txtfile: Text[250];
        SchemeMaster: Record 50074;
        EmailAddress: Text[250];
        InCorrectMail: Boolean;
        NoOfAtSigns: Integer;
        i: Integer;
        // SMTPSetup: Record "409";
        // SMTPMailCodeUnit: Codeunit "400";
        SalesData: Query 50025;
        Text50000: Label 'Sales Details :';
        Text50010: Label ' <br/> ';
        Text50011: Label 'Description :-  ';
        Text50012: Label 'Remarks :-  ';
        Text50013: Label 'Reason:';
        Text59999: Label '<html>';
        Text60000: Label '<Table>';
        Text60001: Label '<TR Border=4>';
        Text60002: Label '<TD  width=200 Align=Left>';
        Text60003: Label '</TD>';
        Text60004: Label '</TR>';
        Text60005: Label '</Table>';
        Text60006: Label '</html>';
        Text60007: Label '<TD  width=500 Align=Left>';
        Text60008: Label '<TD  width=100 Align=Center>';
        Text60009: Label '<TD Align=Left>';
        Text60010: Label '<TD  width=800 Align=right>';
        Text60011: Label '<BR>';
        Text60012: Label '<B>';
        Text60013: Label '</B>';
        Text60014: Label '<TD  width=850 Align=right>';
        Text60015: Label '<font size="3"> ';
        Text60016: Label '</font>';
        Text50022: Label 'Mail Sent Successfully !!!!';
        Text50023: Label 'This is to advice that the following shipment is being despatched from our factory as follows.';
        Text50024: Label '<TD  width=1000 Align=Left>';
        Text50025: Label 'This e-Mail is auto generated from Microsoft Dynamics Navison ERP.';
        Text50026: Label '<TR>';
        Text50027: Label '<table border="1" width="70%">';
        Text50028: Label '<TH>';
        Text50029: Label '</TH>';
        Text50030: Label '<td width="20%">';
        Text50031: Label '<td width="50%">';
        Text50032: Label '<FONT SIZE=6 FACE="Sans Serif">';
        Text50041: Label '<TD  width=5 Align=Center>';
        SrNo: Integer;
        fromDate: Date;
        ToDate: Date;
        fileName: Text;
        CompletePath: Text;
        TotQty: Decimal;
        TotAmt: Decimal;
        BlnSendMail: Boolean;
        EmailObj: Codeunit Email; // 15578TEXT
        EmailMsg: codeunit "Email Message";
        EmailCCList: List of [Text];
        BodyText: Text;
        EmailAddressList: List of [Text];
        EmailBccList: list of [Text];
        Instrm: InStream;
        Report50036: Report 50036;
        Instm: InStream;
        SInstrm: InStream;
        TempBlob: Codeunit "Temp Blob";
        SOutsrm: OutStream;
    begin
        GlbFromDate := CALCDATE('-CM', TODAY - 1); // Change
        GlbToDate := TODAY - 1; // Change

        fromDate := GlbFromDate;
        ToDate := GlbToDate;

        SalesPersons.RESET;
        //SalesPersons.SETFILTER(Code,'%1|%2','VAC-DEHRA','1111622');

        SalesPersons.SETRANGE(SalesPersons.Status, SalesPersons.Status::Enable);
        IF SalesPersons.FINDFIRST THEN
            REPEAT
                Clear(EmailAddressList);
                Clear(EmailBccList);
                Clear(EmailCCList);
                Clear(BodyText);
                EmailAddress := SalesPersons."E-Mail";
                InCorrectMail := FALSE;
                NoOfAtSigns := 0;
                FOR i := 1 TO STRLEN(EmailAddress) DO BEGIN
                    IF EmailAddress[i] = '@' THEN
                        NoOfAtSigns := NoOfAtSigns + 1;
                    IF (((EmailAddress[i] >= 'a') AND (EmailAddress[i] <= 'z')) OR
                      ((EmailAddress[i] >= 'A') AND (EmailAddress[i] <= 'Z')) OR
                      ((EmailAddress[i] >= '0') AND (EmailAddress[i] <= '9')) OR
                      (EmailAddress[i] IN ['@', '.', '-', '_']))
                    THEN BEGIN
                    END ELSE BEGIN
                        InCorrectMail := TRUE;
                    END
                END;
                CLEAR(SalesData);
                //SalesData.SETFILTER(SalesData.Area_Code,AreaCode);
                SalesData.SETFILTER(SalesData.Zonal_Head, '%1', SalesPersons.Code);
                SalesData.SETFILTER(SalesData.Posting_Date, '%1..%2', fromDate, GlbToDate);
                SalesData.OPEN;
                //          IF SalesData.READ THEN BEGIN
                //MESSAGE(SalesPersons.Code);
                IF InCorrectMail = FALSE THEN BEGIN
                    TotQty := 0;
                    TotAmt := 0;

                    // 15578 SMTPMailCodeUnit.AddCC('donotreply@orientbell.com');
                    EmailCCList.Add('donotreply@orientbell.com');
                    IF SalesPersons.Name <> '' THEN
                        BodyText := ('Dear  ' + SalesPersons.Name)
                    ELSE
                        BodyText += ('Dear  ');
                    BodyText += ('<br><br>');
                    BodyText += ('Please find the enclosed detail of Sales Data for the Current Month.(SALES RETURN NOT CONSIDERED IN BELOW MENTIONED SUMMARY) ');
                    BodyText += ('<br><br>');
                    //Table Start
                    BodyText += (Text60005);
                    BodyText += (Text60006);
                    BodyText += (Text50027 + Text50026 + Text50041 + Text60012 + 'S.No.' + Text60013 + Text60003);
                    BodyText += (Text50030 + Text60012 + 'Territory' + Text60013 + Text60003);
                    BodyText += (Text50030 + Text60012 + 'Customer Name' + Text60013 + Text60003);
                    SrNo := 1;
                    BodyText += (Text50030 + Text60012 + 'Sum of Sq. Mtr.' + Text60013 + Text60003);
                    BodyText += (Text50030 + Text60012 + 'Value' + Text60013 + Text60003);

                    BodyText += (Text60004);

                    WHILE SalesData.READ DO BEGIN
                        BodyText += (Text50026 + Text50041 + FORMAT(SrNo) + Text60003);
                        BodyText += (Text50041 + FORMAT(SalesData.Description_2) + Text60003);
                        BodyText += (Text50041 + FORMAT(SalesData.Name) + Text60003);
                        BodyText += (Text50041 + FORMAT(SalesData.Sum_Quantity_Base) + Text60003);
                        BodyText += (Text50041 + FORMAT(ROUND(SalesData.Line_Amount / 100000, 0.01, '=')) + Text60003);
                        TotQty += SalesData.Sum_Quantity_Base;
                        TotAmt += ROUND(SalesData.Line_Amount / 100000, 0.01, '=');
                        BlnSendMail := TRUE;
                        SrNo += 1;
                    END;
                    BodyText += (Text50026 + Text50041 + FORMAT('Total -->>') + Text60003);
                    BodyText += (Text50041 + FORMAT('') + Text60003);
                    BodyText += (Text50041 + FORMAT('') + Text60003);
                    BodyText += (Text50041 + FORMAT(TotQty) + Text60003);
                    BodyText += (Text50041 + FORMAT(ROUND(TotAmt, 0.01, '=')) + Text60003);

                    //MSKS
                    BodyText += (Text60004);

                    BodyText += (Text60005);

                    BodyText += (Text60006);
                    BodyText += (Text60011);

                    BodyText += ('<br><br>');
                    BodyText += ('This is for your records');
                    BodyText += ('<br><br>');
                    BodyText += ('Regards, <br>');
                    BodyText += ('Orient Bell Limited <br>');
                    BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
                    BodyText += ('New Delhi 110046, India <br>');
                    BodyText += ('Tel. +91 11 4711 9100 <br>');
                    BodyText += ('Fax. +91 11 2852 1273 <br>');
                    fileName := '';
                    fileName := 'ZH_' + SalesPersons.Code + '.xlsx';
                    IF (STRPOS(SalesPersons."E-Mail", ' ') = 0) AND (SalesPersons."E-Mail" <> '') THEN BEGIN
                        // 15578  SMTPSetup.GET();
                        EmailAddressList.Add(SalesPersons."E-Mail");
                        EmailMsg.Create(EmailAddressList, '- ZH Sales Details - ' + SalesPersons.Name, BodyText, true, EmailCCList, EmailBccList);
                    END ELSE BEGIN
                        // 15578 SMTPSetup.GET();
                        EmailAddressList.Add('donotreply@orientbell.com');
                        EmailMsg.Create(EmailAddressList, 'Sales Details - ' + SalesPersons.Name, BodyText, true, EmailCCList, EmailBccList);

                    END;
                    CLEAR(Report50036);
                    Report50036.SetParameters(GlbFromDate, GlbToDate, '', SalesPersons.Code, '', '', FALSE);
                    txtfile := 'ZH_' + SalesPersons.Code;
                    Clear(TempBlob);
                    Clear(SInstrm);
                    Clear(SOutsrm);
                    TempBlob.CreateInStream(SInstrm);
                    TempBlob.CreateOutStream(SOutsrm);
                    Report50036.SaveAs('', ReportFormat::Excel, SOutsrm);
                    Clear(SInstrm);
                    Clear(SOutsrm);
                    TempBlob.CreateInStream(SInstrm);
                    SalesPersons."Report Storage".CreateOutStream(SOutsrm);
                    CopyStream(SOutsrm, SInstrm);
                    SalesPersons.Modify();
                    /*IF (EXISTS('C:\StateWiseReport\' + fileName)) THEN BEGIN
                        CompletePath := 'C:\StateWiseReport\' + fileName;
                        SMTPMailCodeUnit.AddAttachment(CompletePath, fileName);
                    END;*/ // 15578
                    Clear(Instm);
                    SalesPersons.SetAutoCalcFields("Report Storage");
                    SalesPersons."Report Storage".CreateInStream(Instm);

                    /* IF (EXISTS('C:\StateWiseReport\' + fileName)) THEN BEGIN
                        CompletePath := 'C:\StateWiseReport\' + fileName;
                        SMTPMailCodeUnit.AddAttachment(CompletePath, fileName);
                    END; */ // 15578
                    IF TotAmt <> 0 THEN begin
                        EmailMsg.AddAttachment(fileName, 'application/excel', Instm);
                        EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
                    end;
                END;
            //  END;
            UNTIL SalesPersons.NEXT = 0;
    end;
}
