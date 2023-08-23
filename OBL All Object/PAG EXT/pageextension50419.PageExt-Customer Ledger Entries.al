pageextension 50419 pageextension50419 extends "Customer Ledger Entries"
{
    layout
    {
        modify("Credit Amount")
        {
            Visible = true;
        }
        modify("Debit Amount")
        {
            Visible = true;
        }
        moveafter("Posting Date"; "Sales (LCY)", "Debit Amount", "Credit Amount", "Customer No.", "Message to Recipient", "Document Date")
        addafter("Posting Date")
        {
            field("Cust Type"; Rec."Cust Type")
            {
                ApplicationArea = all;
            }
            field("Ship To Address"; Rec."Ship To Address")
            {
                ApplicationArea = all;
            }
            field("Bill To Address"; Rec."Bill To Address")
            {
                ApplicationArea = all;
            }
            field("Bill To Address 2"; Rec."Bill To Address 2")
            {
                ApplicationArea = all;
            }
            field("Bill To City"; Rec."Bill To City")
            {
                ApplicationArea = all;
            }
            field("Ship To Address2"; Rec."Ship To Address2")
            {
                ApplicationArea = all;
            }
            field("Customer State"; Rec."Customer State")
            {
                ApplicationArea = all;
            }
            field("Ship To City"; Rec."Ship To City")
            {
                ApplicationArea = all;
            }
            field("Ship To Name"; Rec."Ship To Name")
            {
                ApplicationArea = all;
            }
            field("Additional Ins Discount"; Rec."Additional Ins Discount")
            {
                ApplicationArea = all;
            }
            field("Cash Discount"; Rec."Cash Discount")
            {
                ApplicationArea = all;
            }
            field("Inv. Discount (LCY)"; Rec."Inv. Discount (LCY)")
            {
                ApplicationArea = all;
            }
            field("Pmt. Disc. Given (LCY)"; Rec."Pmt. Disc. Given (LCY)")
            {
                ApplicationArea = all;
            }

            field(Narration; Rec.Narration)
            {
                ApplicationArea = all;
            }
            field("Line Narration"; Rec."Line Narration")
            {
                ApplicationArea = all;
            }

            field(Description2; Rec.Description2)
            {
                ApplicationArea = all;
            }
            field("Cheque Date"; Rec."Cheque Date")
            {
                ApplicationArea = all;
            }
            field("Cheque No."; Rec."Cheque No.")
            {
                ApplicationArea = all;
            }


            field(AutoDebitCheckFlag; Rec.AutoDebitCheckFlag)
            {
                ApplicationArea = all;
            }
            field(DebitCheckStateFlag; Rec.DebitCheckStateFlag)
            {
                ApplicationArea = all;
            }
            field(CashDiscountDebitFlag; Rec.CashDiscountDebitFlag)
            {
                ApplicationArea = all;
            }
            field(DebitInvNo; Rec.DebitInvNo)
            {
                ApplicationArea = all;
            }
            field("Chain Name"; Rec."Chain Name")
            {
                ApplicationArea = all;
            }
            field("Total GST Amount"; Rec."Total GST Amount")
            {
                ApplicationArea = all;
            }
            field(Set; Rec.Set)
            {
                ApplicationArea = all;
            }
            field("Get."; Rec."Get.")
            {
                ApplicationArea = all;
            }
            field("TCS On Collection Entry"; Rec."TCS On Collection Entry")
            {
                ApplicationArea = all;
            }
            field(Pet; Rec.Pet)
            {
                ApplicationArea = all;
            }






        }
        addafter("Document No.")
        {
            field("Entry Skipped"; Rec."Entry Skipped")
            {
                ApplicationArea = all;
            }
            field("Dealer Code"; Rec."Dealer Code")
            {
                ApplicationArea = all;
                Visible = false;
            }
            //>>
            field("Dealer Code N"; Rec."Dealer Code N")
            {
                Caption = 'Dealer Code';
                ApplicationArea = all;
            }
            field("TCS Amount"; Rec."TCS Amount")
            {
                ApplicationArea = all;
            }
            field(Comment; Rec.Comment)
            {
                ApplicationArea = all;
            }
            field("Total TCS Including SHE CESS"; Rec."Total TCS Including SHE CESS")
            {
                ApplicationArea = all;
            }

            field("Last Payment Receipt Date"; Rec."Last Payment Receipt Date")
            {
                ApplicationArea = all;
            }


            field("Sales Territory"; Rec."Sales Territory")
            {
                ApplicationArea = all;
            }



            /*   field("Document Date"; Rec."Document Date")
              {
                  ApplicationArea = All;
              } */

        }
        moveafter("Document No."; "External Document No.", "Currency Code")
        moveafter(Description; "Remaining Amt. (LCY)", "Due Date", "Original Amt. (LCY)", "Credit Amount", "Debit Amount", "Original Amount", "Reversed by Entry No.", Open, "On Hold", "GST Group Code", "HSN/SAC Code", "Entry No.", "Exported to Payment File")
    }
    actions
    {
        modify("Print Voucher")// Base report
        {
            Visible = false;
        }
        addafter("F&unctions")
        {
            action("Posted Voucher")// Cus
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
            // //17141
            // action("Sales Debit Note")
            // {
            //     Promoted = true;
            //     Visible = true;
            //     Enabled = true;
            //     Image = SalesInvoice;
            //     trigger OnAction()
            //     var
            //         saleInvHeader: Record "Sales Invoice Header";
            //         SalesDebitNote: Report 50156;
            //     begin
            //         saleInvHeader.RESET;
            //         saleInvHeader.SETRANGE("No.", Rec."Document No.");
            //         saleInvHeader.SetRange("Posting Date", Rec."Posting Date");
            //         IF saleInvHeader.FINDFIRST then begin
            //             CLEAR(SalesDebitNote);
            //             SalesDebitNote.SETTABLEVIEW(saleInvHeader);
            //             SalesDebitNote.RUNMODAL;
            //         end
            //     end;


            // }

            //17141

        }
    }
}

