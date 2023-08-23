pageextension 50500 Pageext50500 extends "Payment Journal"
{
    layout
    {
        modify("Account Name")
        {
            Visible = true;
        }
        modify("Bal. Account Name")
        {
            Visible = true;
        }
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

        addafter(Description)
        {
            field(Description2; Rec.Description2)
            {
                ApplicationArea = All;
            }
            field(Narration; Rec.Narration)
            {
                ApplicationArea = all;
                Visible = false;
            }
        }
        addafter("TDS Section Code")
        {
            field("Manual TDS"; Rec."Manual TDS")
            {
                ApplicationArea = all;
                Editable = true;
            }
            field("Manual TDS Base Amount"; Rec."Manual TDS Base Amount")
            {
                ApplicationArea = all;
                Editable = true;
            }
        }
        addafter("Posting Date")
        {
            field("Posting No. Series"; Rec."Posting No. Series")
            {
                ApplicationArea = all;
            }
            field("Line No."; Rec."Line No.")
            {
                ApplicationArea = all;
            }

        }
        addafter("Manual TDS Base Amount")
        {
            field("Payment Mode"; Rec."Payment Mode")
            {
                ApplicationArea = all;

            }
            field("Beneficiary Name"; Rec."Beneficiary Name")
            {
                ApplicationArea = all;
                Editable = false;
            }
            field("Beneficiary Account No."; Rec."Beneficiary Account No.")
            {
                ApplicationArea = all;
                Editable = false;
            }
            field("Beneficiary IFSC Code"; Rec."Beneficiary IFSC Code")
            {
                ApplicationArea = all;
                Editable = false;
            }
            field("Beneficiary Account Type"; Rec."Beneficiary Account Type")
            {
                ApplicationArea = all;

            }
            field("PO No."; Rec."PO No.")
            {
                ApplicationArea = all;
            }
        }
        addafter("Bank Payment Type")
        {
            field("Online Bank Transfer"; Rec."Online Bank Transfer")
            {
                ApplicationArea = all;
            }
        }

        moveafter(Description2; "Debit Amount", "Credit Amount")
        modify("Debit Amount")
        {
            Visible = true;
        }
        modify("Credit Amount")
        {
            Visible = true;
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
    }
    actions
    {
        modify("Pay TDS")
        {
            Visible = false;
        }
        addafter(PrintCheck)
        {

            action("Check Print Report")
            {
                Caption = 'Check Print Report';
                ApplicationArea = All;
                Promoted = true;

                trigger OnAction()
                var
                    GenJnlLine: Record 81;
                begin
                    GenJnlLine.RESET;
                    GenJnlLine.SETRANGE("Journal Template Name", Rec."Journal Template Name");
                    GenJnlLine.SETRANGE("Journal Batch Name", Rec."Journal Batch Name");
                    //GenJnlLine.SETRANGE(GenJnlLine."Account Type","Account Type"::"Bank Account");
                    GenJnlLine.SETFILTER("Document No.", Rec."Document No.");
                    IF GenJnlLine.COUNT = 1 THEN BEGIN

                        GenJnlLine.SETRANGE(GenJnlLine."Bal. Account Type", GenJnlLine."Bal. Account Type"::"Bank Account");
                    END ELSE
                        GenJnlLine.SETRANGE(GenJnlLine."Account Type", GenJnlLine."Account Type"::"Bank Account");
                    // Msdr
                    Rec.SETRECFILTER();
                    //DocPrint.PrintCheck(GenJnlLine);
                    REPORT.RUNMODAL(50095, TRUE, TRUE, Rec);

                end;
            }

        }
        addafter("Pay TDS")
        {
            action("Pay Tds New")
            {
                Caption = 'Pay TDS New';
                ApplicationArea = All;
                Promoted = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    PayTDSNew(Rec);
                end;
            }

        }

        addbefore("Renumber Document Numbers")
        {
            action(RestTDSSection)
            {
                Caption = 'Reset TDS Section Code';
                ApplicationArea = All;
                Promoted = true;
                trigger OnAction()
                var
                begin
                    if CONFIRM('DO you want to Reset the TDS Sections', FALSE) then
                        rec.ResetTDSection();
                end;
            }

        }

    }
    trigger OnOpenPage()
    var
        GenJnlManagement: Codeunit GenJnlManagement;
    begin
        IsSimplePage1 := GenJnlManagement.GetJournalSimplePageModePreference(Page::"Journal Voucher");

    end;

    trigger OnAfterGetRecord()
    begin
        rec.CalcTotDebitTotCreditAmount(rec, TotalDrAmt, TotalCrAmt, false);
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        rec.CalcTotDebitTotCreditAmount(rec, TotalDrAmt, TotalCrAmt, false);
    end;

    procedure PayTDSNew(var GenJnlLine: Record "Gen. Journal Line")
    var
        TDSEntry: Record "TDS Entry";
        PagePayTDS: Page "Pay TDS";
        AccountNoErr: Label 'There are no TDS entries for Account No. %1.', Comment = '%1 = G/L Account No.';
    begin
        GenJnlLine.TestField("Document No.");
        GenJnlLine.TestField("Account No.");
        GenJnlLine.TestField("T.A.N. No.");

        GenJnlLine."Pay TDS" := true;
        GenJnlLine.Modify();

        Clear(PagePayTDS);
        TDSEntry.Reset();
        TDSEntry.SetRange("Account No.", GenJnlLine."Account No.");
        TDSEntry.SetRange("T.A.N. No.", GenJnlLine."T.A.N. No.");
        TDSEntry.SetFilter("Total TDS Including SHE CESS", '<>%1', 0);
        TDSEntry.SetRange("TDS Paid", false);
        TDSEntry.SetRange(Reversed, false);
        if TDSEntry.IsEmpty then
            Error(AccountNoErr, GenJnlLine."Account No.");
        PagePayTDS.SetPropertiesNew(GenJnlLine."Journal Batch Name", GenJnlLine."Journal Template Name", GenJnlLine."Line No.");
        PagePayTDS.SetTableView(TDSEntry);
        PagePayTDS.Run();
    end;

    var
        [InDataSet]
        IsSimplePage1: Boolean;
        TotalCrAmt, TotalDrAmt : Decimal;

}