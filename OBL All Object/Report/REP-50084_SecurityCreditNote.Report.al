report 50084 "Security Credit Note"
{
    DefaultLayout = RDLC;
    RDLCLayout = '.\ReportLayouts\SecurityCreditNote.rdl';
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    dataset
    {
        dataitem("G/L Entry"; "G/L Entry")
        {
            DataItemTableView = SORTING("G/L Account No.", "Posting Date")
                                WHERE("Document Type" = CONST("Credit Memo"),
                                      "Source Type" = CONST(Customer),
                                      "System-Created Entry" = FILTER('No'));
            RequestFilterFields = "Document No.", "Posting Date", "G/L Account No.", "Bal. Account No.", "Bal. Account Type", "Entry No.";
            column(CompanyInfoName1; CompanyInfo.Name)
            {
            }
            column(CompanyName11; CompanyName1)
            {
            }
            column(Address; Address)
            {
            }
            column(ADD1; ADD)
            {
            }
            column(DocumentDate1; FORMAT("Document Date"))
            {
            }
            column(Documentnmbr; "G/L Entry"."Document No.")
            {
            }
            column(extrnldcmntnmr; "G/L Entry"."External Document No.")
            {
            }
            column(CustNo1; Cust."No.")
            {
            }
            column(CustName1; Cust.Name)
            {
            }
            column(CustAddress1; Cust.Address)
            {
            }
            column(CustCity1; Cust.City)
            {
            }
            column(CustStateDesc1; Cust."State Desc.")
            {
            }
            column(Description1; "G/L Entry".Description)
            {
            }
            column(amount1; ABS("G/L Entry".Amount))
            {
            }
            column(NoText; NoText[1])
            {
            }
            column(SalTer; Cust."Area Code")
            {
            }

            trigger OnAfterGetRecord()
            begin

                TSDEntry.SETRANGE(TSDEntry."Account Type", TSDEntry."Account Type"::"G/L Account");
                TSDEntry.SETRANGE(TSDEntry."Account No.", "G/L Entry"."G/L Account No.");
                TSDEntry.SETRANGE(TSDEntry."Document Type", TSDEntry."Document Type"::"Credit Memo");
                TSDEntry.SETRANGE(TSDEntry."Document No.", "G/L Entry"."Document No.");
                IF TSDEntry.FIND('-') THEN
                    Amt := TSDEntry."TDS Amount";
                IF Cust.GET("G/L Entry"."Source No.") THEN;

                Chk.InitTextVariable;
                Chk.FormatNoText(Text1, ABS(Amount), '');

                //CurrReport.SHOWOUTPUT(Text1[2] <>'');

                CheckReport.InitTextVariable;
                //CheckReport.FormatNoText(NoTextExcise,ExciseAmt,'');

                //CheckReport.InitTextVariable;
                //CheckReport.FormatNoText(NoText,ROUND((SubTotal+Taxtotal-InvDisc),1,'>'),'');
                //MS-PB CheckReport.FormatNoText(NoText,ROUND((SubTotal +ChargeAmt+ CstTot +VatTot+AdditionalTot + InvDisc+InsuranceAmt),1,'>'),'');
                CheckReport.FormatNoText(NoText, ROUND(("G/L Entry".Amount), 1, '='), '');
            end;

            trigger OnPreDataItem()
            begin

                //CurrReport.SHOWOUTPUT(Text1[2] <>'');


                CheckReport.InitTextVariable;
                //CheckReport.FormatNoText(NoTextExcise,ExciseAmt,'');

                //CheckReport.InitTextVariable;
                //CheckReport.FormatNoText(NoText,ROUND((SubTotal+Taxtotal-InvDisc),1,'>'),'');
                //MS-PB CheckReport.FormatNoText(NoText,ROUND((SubTotal +ChargeAmt+ CstTot +VatTot+AdditionalTot + InvDisc+InsuranceAmt),1,'>'),'');
                CheckReport.FormatNoText(NoText, ROUND(("G/L Entry".Amount), 1, '='), '');
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPostReport()
    begin

        //RepAuditMgt.CreateAudit(50084)
    end;

    trigger OnPreReport()
    begin

        IF COMPANYNAME = 'Orient Bell Limited' THEN BEGIN
            CompanyName1 := 'Orient Brand';
            Address := 'Iris House, 16 Business Centre, Nangal Raya, 110046, NEW DELHI-215 (06)';
        END;

        CompanyInfo.GET;
        //IF TDSGroup.FIND('-') THEN
        //"G/L Entry".SETRANGE("G/L Entry"."G/L Account No.",TDSGroup."TDS Account");
    end;

    var
        //TDSGroup: Record "13731";
        CompanyInfo: Record "Company Information";
        Cust: Record Customer;
        Chk: Report Check;
        TSDEntry: Record "TDS Entry";
        Amt: Decimal;
        Text1: array[2] of Text[80];
        CheckReport: Report Check;
        NoText: array[2] of Text[80];
        CompanyName1: Text[30];
        Address: Text[100];
        RepAuditMgt: Codeunit "Auto PDF Generate";
        ADD: Label 'Regd. office: 8 Ind Area Sikandrabad Distt. Bulandshahr (UP) SIKANDRABAD. Phone: 47119100 Fax: 28521273 PAN Np. AAACO0305P CIN No. L14101UP1977PLC021546';
        R50084: Report "Security Credit Note";
        GLEntry: Record "G/L Entry";
}

