pageextension 50424 pageextension50424 extends "General Journal"
{
    layout
    {
        addafter("Bal. Account Name")
        {
            group(TotalCredit1)

            {
                caption = 'Total Credit';
                Visible = not IsSimplePage1;

                field("Total Credit1"; TotalCrAmt)
                {

                    ApplicationArea = all;
                    Caption = 'Total Credit';
                    Editable = false;
                    ToolTip = 'Specifies the total credit amount in the Journal Voucher.';
                }

            }
            Group(TotalDebit1)
            {
                caption = 'Total Debit';
                Visible = not IsSimplePage1;

                field("Total Debit1"; TotalDrAmt)
                {
                    ApplicationArea = All;
                    Caption = 'Total Debit';
                    Editable = false;
                    ToolTip = 'Specifies the total Debit amount in the Journal Voucher.';
                }
            }
        }

        moveafter("Document Date"; "Location Code", "GST Component Code")
        addafter("Document Type")
        {
            field("Due Date"; Rec."Due Date")
            {
                ApplicationArea = All;
            }
            field("Issuing Bank"; Rec."Issuing Bank")
            {
                ApplicationArea = All;
            }
            field(Narration; Rec.Narration)
            {
                ApplicationArea = all;
            }
            field("Tax Liable"; Rec."Tax Liable")
            {
                ApplicationArea = All;
            }
        }
        moveafter("Document No."; "Cheque Date", "Cheque No.")
        addafter("Document No.")
        {
            /* field(PLA; PLA)//16225 field N/F
             {
             }*/

            field("Line No."; Rec."Line No.")
            {
                ApplicationArea = All;
            }
            //16225 field N/F Start
            /* field("Tax Type"; Rec."Tax Type")
             {
             }
             field("Service Tax Entry"; "Service Tax Entry")
             {
             }
             field("TDS Nature of Deduction"; "TDS Nature of Deduction")
             {
             }
             field("Service Tax Amount"; "Service Tax Amount")
             {
             }
             field("TDS/TCS %"; "TDS/TCS %")
             {
             }
             field("TDS/TCS Amount"; "TDS/TCS Amount")
             {
             }*/
            /*}
            addafter("Control 81")
            {
                field("TDS/TCS Amt Incl Surcharge"; "TDS/TCS Amt Incl Surcharge")
                {
                }
            }
            addafter("Control 1280000")
            {
                field("Service Tax"; "Service Tax")
                {
                }*///16225 field N/F End
        }
        moveafter("Account No."; "Debit Amount", "Credit Amount")

        modify("Debit Amount")
        {
            Visible = true;
            Editable = true;
        }
        modify("Credit Amount")
        {
            Visible = true;
            Editable = true;
        }
        modify("Location Code")
        {
            trigger OnLookup(var Text: Text): Boolean
            var
                UserLocation: Record "User Location";
                GenJnlTemplate1: Record "Gen. Journal Template";
            begin
                //Upgrade(+)
                UserLocation.RESET;
                UserLocation.SETFILTER(UserLocation."User ID", USERID);
                GenJnlTemplate1.RESET;
                GenJnlTemplate1.SETFILTER(GenJnlTemplate1.Name, rec."Journal Template Name");
                IF GenJnlTemplate1.FIND('-') THEN
                    IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::General THEN
                        UserLocation.SETFILTER(UserLocation."GJT General", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Sales THEN
                    UserLocation.SETFILTER(UserLocation."GJT Sales", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Purchases THEN
                    UserLocation.SETFILTER(UserLocation."GJT Purchases", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::"Cash Receipts" THEN
                    UserLocation.SETFILTER(UserLocation."GJT Cash Receipts", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Payments THEN
                    UserLocation.SETFILTER(UserLocation."GJT Payments", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Assets THEN
                    UserLocation.SETFILTER(UserLocation."GJT Assets", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::"TDS Adjustments" THEN
                    UserLocation.SETFILTER(UserLocation."GJT TDS Adjustments", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::LC THEN
                    UserLocation.SETFILTER(UserLocation."GJT LC", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Receipts THEN
                    UserLocation.SETFILTER(UserLocation."GJT Receipts", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::JV THEN
                    UserLocation.SETFILTER(UserLocation."GJT JV", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::StdPayments THEN
                    UserLocation.SETFILTER(UserLocation."GJT StdPayments", '%1', TRUE);

                IF UserLocation.FIND('-') THEN
                    IF PAGE.RUNMODAL(50003, UserLocation) = ACTION::LookupOK THEN
                        rec.VALIDATE("Location Code", UserLocation."Location Code");
            end;
        }


        addafter("T.A.N. No.")
        {
            field("Entry No. 3.7"; Rec."Entry No. 3.7")
            {
                ApplicationArea = All;
            }
        }
        addafter("Entry No. 3.7")
        {
            field(Description2; Rec.Description2)
            {
                Caption = 'Narration2';
                Visible = true;
                ApplicationArea = All;
                Editable = true;
            }
            field(Description1; Rec.Description)
            {
                Caption = 'Narration1';
                Visible = true;
                ApplicationArea = All;
                Editable = true;
            }
        }
        addafter("Location Code")
        {
            field("Shortcut Dimension 1 Code1"; Rec."Shortcut Dimension 1 Code")
            {
                Caption = 'Branch Code';
                Visible = true;
                ApplicationArea = All;
                Editable = true;
            }
        }
    }
    actions
    {
        modify(Post)
        {
            trigger OnBeforeAction()
            begin
                //Upgrade(+)
                Rec.TESTFIELD("Shortcut Dimension 1 Code");
                //Upgrade(-)
            end;
        }
        //Unsupported feature: Code Modification on "Post(Action 50).OnAction".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CODEUNIT.RUN(CODEUNIT::"Gen. Jnl.-Post",Rec);
        CurrentJnlBatchName := GETRANGEMAX("Journal Batch Name");
        CurrPage.UPDATE(FALSE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //Upgrade(+)
        TESTFIELD("Shortcut Dimension 1 Code");
        //Upgrade(-)
        #1..3
        */
        //end;

        addafter(SaveAsStandardJournal)
        {
            action("Calculate GST")
            {
                Caption = 'Calculate GST';
                Image = CalculateHierarchy;
                Promoted = true;
                PromotedCategory = Category6;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()

                begin
                    //16630 ValidateAndCalculateGSTforInvoiceCrMemo(Rec, '', FALSE);
                end;
            }
            action("Update Reference Invoice No")
            {
                Caption = 'Update Reference Invoice No';
                Image = ApplyEntries;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                var
                    ReferenceInvoiceNo: Record "Reference Invoice No.";
                    GenJournalLine: Record "Gen. Journal Line";
                    UpdateReferenceInvJournals: Page "Update Reference Inv. Journals";
                begin
                    GenJournalLine.SETRANGE("Journal Template Name", Rec."Journal Template Name");
                    GenJournalLine.SETRANGE("Journal Batch Name", Rec."Journal Batch Name");
                    GenJournalLine.SETRANGE("Document No.", Rec."Document No.");
                    GenJournalLine.SETRANGE("GST in Journal", TRUE);
                    GenJournalLine.SETFILTER("Account Type", '%1|%2', GenJournalLine."Account Type"::Customer, GenJournalLine."Account Type"::Vendor);
                    IF GenJournalLine.FINDFIRST THEN BEGIN
                        IF NOT (Rec."Document Type" IN [Rec."Document Type"::"Credit Memo", Rec."Document Type"::Invoice]) THEN
                            ERROR(DocumentTypeErr);
                        IF (GenJournalLine."Account Type" = GenJournalLine."Account Type"::Vendor) AND
                           (GenJournalLine."Document Type" = GenJournalLine."Document Type"::Invoice) AND NOT
                           (GenJournalLine."Purch. Invoice Type" IN [GenJournalLine."Purch. Invoice Type"::"Debit Note",
                                                                     GenJournalLine."Purch. Invoice Type"::Supplementary])
                        THEN
                            ERROR(ReferenceNoErr);
                        IF (GenJournalLine."Account Type" = GenJournalLine."Account Type"::Customer) AND
                           (GenJournalLine."Document Type" = GenJournalLine."Document Type"::Invoice) AND NOT
                           (GenJournalLine."Sales Invoice Type" IN [GenJournalLine."Sales Invoice Type"::"Debit Note",
                                                                    GenJournalLine."Sales Invoice Type"::Supplementary])
                        THEN
                            ERROR(ReferenceNoErr);

                        //16630 ValidateAndCalculateGSTforInvoiceCrMemo(Rec, '', FALSE);

                        ReferenceInvoiceNo.RESET;
                        ReferenceInvoiceNo.SETRANGE("Document No.", Rec."Document No.");
                        //16630 ReferenceInvoiceNo.SETRANGE("Document Type",GenJournalLine."Document Type");
                        ReferenceInvoiceNo.SETRANGE("Source No.", GenJournalLine."Account No.");
                        ReferenceInvoiceNo.SETRANGE("Journal Template Name", GenJournalLine."Journal Template Name");
                        ReferenceInvoiceNo.SETRANGE("Journal Batch Name", GenJournalLine."Journal Batch Name");
                        IF GenJournalLine."Account Type" = GenJournalLine."Account Type"::Customer THEN
                            //16630 UpdateReferenceInvJournals.CustomerRecord(ReferenceInvoiceNo."Source Type"::Customer);
                            UpdateReferenceInvJournals.SETTABLEVIEW(ReferenceInvoiceNo);
                        UpdateReferenceInvJournals.RUN;
                    END ELSE
                        ERROR(ReferenceInvoiceNoErr);
                end;
            }
        }
        addafter(Comments)
        {
            action("Get CD Entries")
            {
                Caption = 'Get CD Entries';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    IF UserSetup.GET(USERID) THEN BEGIN
                        IF NOT UserSetup."CD User" THEN
                            ERROR('Please contact IT for Access change');
                        IF CONFIRM('Do you want to generate the CD Entries') THEN BEGIN
                            SalesSetup.GET;
                            SalesSetup.TESTFIELD("CD Account");
                            CLEAR(CDMgt);
                            CDMgt.GenerateVoucher(Rec."Journal Template Name", Rec."Journal Batch Name")
                        END;
                    END;
                end;
            }
        }
    }

    var
        [InDataSet]
        "Account No.Editable": Boolean;
        CDMgt: Codeunit "CD Management";
        SalesSetup: Record "Sales & Receivables Setup";
        UserSetup: Record "User Setup";

        DocumentTypeErr: Label 'Reference Invoice No is  required where Document Type is Credit Memo or Invoice.';
        ReferenceNoErr: Label 'Reference Invoice No is  required where Invoice Type is Debit Note and Supplementary.';
        ReferenceInvoiceNoErr: Label 'You cannot select Non GST document to GST Docment.';


    //Unsupported feature: Code Modification on "OnInit".

    //trigger OnInit()
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TotalBalanceVisible := TRUE;
    BalanceVisible := TRUE;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TotalBalanceVisible := TRUE;
    BalanceVisible := TRUE;
    //Upgrade(+)
    "Account No.Editable" := TRUE;
    //Upgrade(-)
    */
    //end;

    trigger OnOpenPage()
    var
        GenJnlManagement: Codeunit GenJnlManagement;
    begin
        IsSimplePage1 := GenJnlManagement.GetJournalSimplePageModePreference(Page::"Journal Voucher");
        //Upgrade(+)
        "Account No.Editable" := TRUE;
        //Upgrade(-)

    end;

    trigger OnAfterGetRecord()
    begin
        rec.CalcTotDebitTotCreditAmount(rec, TotalDrAmt, TotalCrAmt, false);
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        rec.CalcTotDebitTotCreditAmount(rec, TotalDrAmt, TotalCrAmt, false);
    end;


    local procedure AccountNoOnBeforeInput()
    begin
        IF Rec."Party Type" <> 1 THEN //Kulbhushan
            "Account No.Editable" := TRUE
        ELSE
            "Account No.Editable" := FALSE
    end;

    var
        [InDataSet]

        IsSimplePage1: Boolean;
        TotalCrAmt, TotalDrAmt : Decimal;

}

