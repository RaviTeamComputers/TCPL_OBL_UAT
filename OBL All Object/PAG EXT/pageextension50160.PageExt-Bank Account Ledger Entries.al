pageextension 50160 pageextension50160 extends "Bank Account Ledger Entries"
{
    Editable = true;
    layout
    {
        moveafter("Entry No."; Amount, "Debit Amount", "Credit Amount", "Cheque Date", "Cheque No.", "Bal. Account Type", "Bal. Account No.")
        modify("Bal. Account Type")
        {
            Visible = true;
        }

        modify("Bal. Account No.")
        {
            Visible = true;
        }
        modify("Debit Amount")
        {
            Visible = true;
        }
        modify("Credit Amount")
        {
            Visible = true;
        }
        modify("Amount")
        {
            Visible = true;
        }

        addafter("Entry No.")
        {
            field("Statement No."; rec."Statement No.")
            {
                ApplicationArea = All;
            }

            field(Narration_OT; Rec.Narration_OT)
            {
                Caption = 'Narration';
                ApplicationArea = all;

            }
            field("Online Bank Transfer"; Rec."Online Bank Transfer")
            {
                ApplicationArea = All;
                Editable = true;
                AccessByPermission = tabledata "Bank Account Ledger Entry" = rm;
            }
            field("External Document No."; rec."External Document No.")
            {
                ApplicationArea = All;
            }
            field("Value Date"; rec."Value Date")
            {
                ApplicationArea = All;
            }
            field("Issuing Bank"; rec."Issuing Bank")
            {
                ApplicationArea = All;
            }
            field("File Name"; rec."File Name")
            {
                Editable = false;
                ApplicationArea = All;
            }
            field("Bank RF Status"; rec."Bank RF Status")
            {
                Editable = false;
                ApplicationArea = All;
            }
            field("Bank UTR/Ref. No."; rec."Bank UTR/Ref. No.")
            {
                Editable = false;
                ApplicationArea = All;
            }
            field("File Create By User ID"; rec."File Create By User ID")
            {
                Editable = false;
                ApplicationArea = All;
            }
            field("Description 2"; rec."Description 2")
            {
                ApplicationArea = All;
                Visible = false;

            }
        }
    }
    actions
    {
        addafter(Stale_Check)
        {
            action("Ledger E&ntries")
            {
                Caption = 'Ledger E&ntries';
                RunObject = Page "Check Ledger Entries";
                ShortCutKey = 'Ctrl+F7';
                ApplicationArea = All;
            }
        }
        modify("Print Voucher")
        {
            Visible = false;
        }

        addafter("F&unctions")
        {
            action("Posted Voucher")
            {
                ApplicationArea = All;
                Caption = 'Print Voucher New';
                Image = PrintVoucher;
                Ellipsis = true;

                trigger OnAction()
                var
                    GLEntry: Record "G/L Entry";
                begin
                    GLEntry.SETCURRENTKEY("Document No.", "Posting Date");
                    GLEntry.SETRANGE("Document No.", Rec."Document No.");
                    GLEntry.SETRANGE("Posting Date", Rec."Posting Date");
                    IF GLEntry.FIND('-') THEN
                        REPORT.RUNMODAL(REPORT::"Posted Voucher Copy", TRUE, TRUE, GLEntry);
                end;
            }
        }
    }
}

