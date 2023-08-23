pageextension 50476 PayTDSExtnUpdate extends "Pay TDS"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        modify("&Pay")
        {
            Visible = false;
        }
        addafter("&Pay")
        {
            action("&PayNew")
            {
                Caption = '&Pay New';
                ToolTip = 'Click Pay to transfer the total of the selected entries to the amount field of payment journal.';
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                ApplicationArea = Basic, Suite;
                Image = Payment;

                trigger OnAction()
                var
                    TDSEntry: Record "TDS Entry";
                    DocNo: Code[20];
                    TotalTDSAmount: Decimal;
                    TotalInvAmount: Decimal;
                    TotalCreditAmount: Decimal;
                begin
                    TotalTDSAmount := 0;
                    DocNo := GetGenJnlLineDocNo();

                    TDSEntry.SetRange("Pay TDS Document No.", DocNo);
                    TDSEntry.SetRange("TDS Paid", false);
                    if TDSEntry.FindSet() then
                        repeat
                            TDSEntry."Pay TDS Document No." := ' ';
                            TDSEntry.Modify();
                        until TDSEntry.Next() = 0;

                    TDSEntry.Copy(Rec);
                    if TDSEntry.FindSet() then
                        repeat
                            TotalInvAmount := TotalInvAmount + TDSEntry."Bal. TDS Including SHE CESS";
                            // if not (TDSEntry."Document Type" = TDSEntry."Document Type"::"Credit Memo") then
                            //     TotalInvAmount := TotalInvAmount + TDSEntry."Bal. TDS Including SHE CESS"
                            // else
                            //     TotalCreditAmount := TotalCreditAmount + TDSEntry."Bal. TDS Including SHE CESS";
                            TDSEntry."Pay TDS Document No." := DocNo;
                            TDSEntry.Modify();
                        until TDSEntry.Next() = 0;
                    TotalTDSAmount := TotalInvAmount - TotalCreditAmount;

                    UpdateGenJnlLineAmount(TotalTDSAmount);

                    CurrPage.Close();
                end;
            }
        }
    }

    local procedure GetGenJnlLineDocNo(): Code[20]

    begin
        GenJournalLine.Reset();
        GenJournalLine.SetRange("Journal Template Name", TemplateName);
        GenJournalLine.SetRange("Journal Batch Name", BatchName);
        GenJournalLine.SetRange("Line No.", LineNo);
        if GenJournalLine.FindLast() then
            exit(GenJournalLine."Document No.");
    end;

    local procedure UpdateGenJnlLineAmount(Amount: Decimal)
    begin
        GenJournalLine.Reset();
        GenJournalLine.SetRange("Journal Template Name", TemplateName);
        GenJournalLine.SetRange("Journal Batch Name", BatchName);
        GenJournalLine.SetRange("Line No.", LineNo);
        if GenJournalLine.FindLast() then begin
            GenJournalLine.Amount := Amount;
            GenJournalLine.Validate("Debit Amount", Amount);
            GenJournalLine.Modify();
        end;
    end;

    procedure SetPropertiesNew(NewBatchName: Code[10]; NewTemplateName: Code[10]; NewLineNo: Integer)
    begin
        BatchName := NewBatchName;
        TemplateName := NewTemplateName;
        LineNo := NewLineNo;
    end;

    var
        GenJournalLine: Record "Gen. Journal Line";
        BatchName: Code[10];
        TemplateName: Code[10];
        LineNo: Integer;

}