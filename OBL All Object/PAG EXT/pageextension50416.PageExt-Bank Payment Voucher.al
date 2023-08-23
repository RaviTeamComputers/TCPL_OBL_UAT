pageextension 50416 pageextension50416 extends "Bank Payment Voucher"
{
    layout
    {

        //Unsupported feature: Code Modification on "Control 33.OnLookup".

        //trigger OnLookup(var Text: Text): Boolean
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CurrPage.SAVERECORD;
        GenJnlManagement.LookupName(CurrentJnlBatchName,Rec);
        CurrPage.UPDATE(FALSE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CurrPage.SAVERECORD;
        GenJnlManagement.SetCodes(PAGE::"Bank Payment Voucher",4,FALSE,FALSE);
        GenJnlManagement.LookupName(CurrentJnlBatchName,Rec);
        CurrPage.UPDATE(FALSE);
        */
        //end;
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

        addafter("Document Type")
        {
            field("Posting No. Series"; Rec."Posting No. Series")
            {
                ApplicationArea = All;
            }
            field("Adv. Pmt. Adjustment"; Rec."Adv. Pmt. Adjustment")
            {
                ApplicationArea = All;
            }
        }
        moveafter("Posting No. Series"; "Cheque No.")
        modify("Cheque No.")
        {
            Caption = 'cheque no.';

        }
        moveafter("Document No."; "Location Code", "On Hold")
        moveafter("Account No."; "Location Code")

        addafter("Location Code")
        {
            field("GST Ship-to State Code"; Rec."GST Ship-to State Code")
            {
                ApplicationArea = All;
            }
            field("GST Jurisdiction Type"; Rec."GST Jurisdiction Type")
            {
                ApplicationArea = All;
            }
            field("Nature of Supply"; Rec."Nature of Supply")
            {
                ApplicationArea = All;
            }
            field("GST Place of Supply"; Rec."GST Place of Supply")
            {
                ApplicationArea = All;
            }
            field("GST Customer Type"; Rec."GST Customer Type")
            {
                ApplicationArea = All;
            }
            field("GST Bill-to/BuyFrom State Code"; Rec."GST Bill-to/BuyFrom State Code")
            {
                ApplicationArea = All;
            }
        }
        moveafter("GST Jurisdiction Type"; "GST on Advance Payment")
        moveafter("Nature of Supply"; "GST Group Code", "GST Group Type")
        moveafter("GST Customer Type"; "GST Vendor Type", "HSN/SAC Code")
    }
    actions
    {



        addafter("P&review Check")
        {
            action("Cheque IDBI")
            {
                Caption = 'Cheque IDBI';
                RunObject = Report "GST Sales Invoice Nepal";
                ApplicationArea = All;
            }
        }
    }
    var
        CurrentJnlBatchName: Code[10];


}

