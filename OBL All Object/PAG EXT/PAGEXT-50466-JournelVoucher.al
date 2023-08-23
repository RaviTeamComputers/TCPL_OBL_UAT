pageextension 50466 "EXTJournal Voucher" extends "Journal Voucher"
{
    layout
    {
        addafter("Bal. Account No.")
        {
            //field(Narration1; Rec.Narration)
            field(Narration1; Rec.Description)      //17141
            {
                Caption = 'Narration';
                ApplicationArea = all;
            }
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

        movebefore(Amount; "Debit Amount", "Credit Amount", "External Document No.")
        modify("Debit Amount")
        {
            Visible = true;
        }
        modify("Credit Amount")
        {
            Visible = true;
        }
        modify("External Document No.")
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
        // Add changes to page actions here
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


    var
        [InDataSet]
        IsSimplePage1: Boolean;
        TotalCrAmt, TotalDrAmt : Decimal;

}