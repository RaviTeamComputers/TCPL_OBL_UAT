page 50397 "UPdate Cust. Ledg. Entries"
{
    ApplicationArea = All;
    Caption = 'UPdate Cust. Ledg. Entries';
    PageType = List;
    SourceTable = "Cust. Ledger Entry";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the entry, when the entry was created.';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specify the customer number from whom TDS certificate is received.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer name that the entry is linked to.';
                }
                field("Customer Posting Group"; Rec."Customer Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s market type to link business transactions to.';
                }
                field("Debit Amount"; Rec."Debit Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total of the ledger entries that represent debits.';
                }
                field("Debit Amount (LCY)"; Rec."Debit Amount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total of the ledger entries that represent debits, expressed in LCY.';
                }
                field("Accepted Payment Tolerance"; Rec."Accepted Payment Tolerance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Accepted Payment Tolerance field.';
                }
                field("Accepted Pmt. Disc. Tolerance"; Rec."Accepted Pmt. Disc. Tolerance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Accepted Pmt. Disc. Tolerance field.';
                }
                field("Additional Ins Discount"; Rec."Additional Ins Discount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Additional Ins Discount field.';
                }
                field("Adjusted Currency Factor"; Rec."Adjusted Currency Factor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Adjusted Currency Factor field.';
                }
                field("Adv. Pmt. Adjustment"; Rec."Adv. Pmt. Adjustment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Adv. Pmt. Adjustment field.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount of the customer ledger entry.';
                }
                field("Amount (LCY)"; Rec."Amount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount of the entry in LCY.';
                }
                field("Amount to Apply"; Rec."Amount to Apply")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount to apply.';
                }
                field("Applies-to Doc. No."; Rec."Applies-to Doc. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Applies-to Doc. No. field.';
                }
                field("Applies-to Doc. Type"; Rec."Applies-to Doc. Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Applies-to Doc. Type field.';
                }
                field("Applies-to Ext. Doc. No."; Rec."Applies-to Ext. Doc. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Applies-to Ext. Doc. No. field.';
                }
                field("Applies-to ID"; Rec."Applies-to ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ID of entries that will be applied to when you choose the Apply Entries action.';
                }
                field("Applying Entry"; Rec."Applying Entry")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Applying Entry field.';
                }
                field(AutoDebitCheckFlag; Rec.AutoDebitCheckFlag)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the AutoDebitCheckFlag field.';
                }
                field("Bal. Account No."; Rec."Bal. Account No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the general ledger, customer, vendor, or bank account that the balancing entry is posted to, such as a cash account for cash purchases.';
                }
                field("Bal. Account Type"; Rec."Bal. Account Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of account that a balancing entry is posted to, such as BANK for a cash account.';
                }
                field("Bill To Address"; Rec."Bill To Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bill To Address field.';
                }
                field("Bill To Address 2"; Rec."Bill To Address 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bill To Address 2 field.';
                }
                field("Bill To City"; Rec."Bill To City")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bill To City field.';
                }
                field("Calculate Interest"; Rec."Calculate Interest")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Calculate Interest field.';
                }
                field("Cash Discount"; Rec."Cash Discount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cash Discount field.';
                }
                field(CashDiscountDebitFlag; Rec.CashDiscountDebitFlag)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CashDiscountDebitFlag field.';
                }
                field("Certificate No."; Rec."Certificate No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specify the certificate number as per the certificate received.';
                }
                field("Certificate Received"; Rec."Certificate Received")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specify whether report to generate for certificate received or not.';
                }
                field("Chain Name"; Rec."Chain Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chain Name field.';
                }
                field("Cheque Date"; Rec."Cheque Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cheque Date field.';
                }
                field("Cheque No."; Rec."Cheque No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cheque No. field.';
                }
                field("Closed By Amount 3.7"; Rec."Closed By Amount 3.7")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Closed By Amount 3.7 field.';
                }
                field("Closed By Entry No. 3.7"; Rec."Closed By Entry No. 3.7")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Closed By Entry No. 3.7 field.';
                }
                field("Closed at Date"; Rec."Closed at Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Closed at Date field.';
                }
                field("Closed by Amount"; Rec."Closed by Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount that the entry was finally applied to (closed) with.';
                }
                field("Closed by Amount (LCY)"; Rec."Closed by Amount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Closed by Amount (LCY) field.';
                }
                field("Closed by Currency Amount"; Rec."Closed by Currency Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount that was finally applied to (and closed) this customer ledger entry.';
                }
                field("Closed by Currency Code"; Rec."Closed by Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code of the currency of the entry that was applied to (and closed) this customer ledger entry.';
                }
                field("Closed by Entry No."; Rec."Closed by Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Closed by Entry No. field.';
                }
                field("Closing Interest Calculated"; Rec."Closing Interest Calculated")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Closing Interest Calculated field.';
                }
                field(Comment; Rec.Comment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Comment field.';
                }
                field("Credit Amount"; Rec."Credit Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total of the ledger entries that represent credits.';
                }
                field("Credit Amount (LCY)"; Rec."Credit Amount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total of the ledger entries that represent credits, expressed in LCY.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the currency code for the amount on the line.';
                }
                field("Cust Type"; Rec."Cust Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cust Type field.';
                }
                field("Customer State"; Rec."Customer State")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer State field.';
                }
                field("Dealer Code"; Rec."Dealer Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dealer Code field.';
                }
                field("Dealer Code N"; Rec."Dealer Code N")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dealer Code N field.';
                }
                field("Dealer's Salesperson Code"; Rec."Dealer's Salesperson Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dealer''s Salesperson Code field.';
                }
                field(DebitAmtOnCashDisc; Rec.DebitAmtOnCashDisc)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DebitAmtOnCashDisc field.';
                }
                field(DebitCheckStateFlag; Rec.DebitCheckStateFlag)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DebitCheckStateFlag field.';
                }
                field(DebitInvNo; Rec.DebitInvNo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DebitInvNo field.';
                }
                field(DebitSuspFlag; Rec.DebitSuspFlag)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DebitSuspFlag field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a description of the customer entry.';
                }
                field(Description2; Rec.Description2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description2 field.';
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a reference to a combination of dimension values. The actual values are stored in the Dimension Set Entry table.';
                }
                field("Direct Debit Mandate ID"; Rec."Direct Debit Mandate ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the direct-debit mandate that the customer has signed to allow direct debit collection of payments.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer entry''s document date.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the document number of the customer ledger entry.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of document of the customer ledger entry.';
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the due date on the entry.';
                }
                field("Entry No. 3.7"; Rec."Entry No. 3.7")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. 3.7 field.';
                }
                field("Entry Skipped"; Rec."Entry Skipped")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry Skipped field.';
                }
                field("Exported to Payment File"; Rec."Exported to Payment File")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that the entry was created as a result of exporting a payment journal line.';
                }
                field("External Document No."; Rec."External Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a document number that refers to the customer''s or vendor''s numbering system.';
                }
                field(FYEAR; Rec.FYEAR)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the FYEAR field.';
                }
                field("Financial Year"; Rec."Financial Year")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specify the financial year for which TDS certificate has received.';
                }
                field("GST Customer Type"; Rec."GST Customer Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of the customer. For example, Registered, Unregistered, Export etc..';
                }
                field("GST Group Code"; Rec."GST Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies an unique identifier for the GST group code used to calculate and post GST.';
                }
                field("GST Jurisdiction Type"; Rec."GST Jurisdiction Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type related to GST jurisdiction. For example interstate/intrastate.';
                }
                field("GST Without Payment of Duty"; Rec."GST Without Payment of Duty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the GST is paid without duty.';
                }
                field("GST in Journal"; Rec."GST in Journal")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST in Journal field.';
                }
                field("GST on Advance Payment"; Rec."GST on Advance Payment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if GST is required to be calculated on Advance Payment.';
                }
                field("Get."; Rec."Get.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Get. field.';
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the global dimension that is linked to the record or entry for analysis purposes. Two global dimensions, typically for the company''s most important activities, are available on all cards, documents, reports, and lists.';
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the global dimension that is linked to the record or entry for analysis purposes. Two global dimensions, typically for the company''s most important activities, are available on all cards, documents, reports, and lists.';
                }
                field("HSN/SAC Code"; Rec."HSN/SAC Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies an unique identifier for the type of HSN or SAC that is used to calculate and post GST.';
                }
                field("IC Partner Code"; Rec."IC Partner Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code of the intercompany partner that the transaction is related to if the entry was created from an intercompany transaction.';
                }
                field("Inv. Discount (LCY)"; Rec."Inv. Discount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inv. Discount (LCY) field.';
                }
                field("Journal Batch Name"; Rec."Journal Batch Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Journal Batch Name field.';
                }
                field("Journal Entry"; Rec."Journal Entry")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Journal Entry field.';
                }
                field("Journal Templ. Name"; Rec."Journal Templ. Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Journal Template Name field.';
                }
                field("Last Issued Reminder Level"; Rec."Last Issued Reminder Level")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Issued Reminder Level field.';
                }
                field("Last Payment Receipt Date"; Rec."Last Payment Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Payment Receipt Date field.';
                }
                field("Line Narration"; Rec."Line Narration")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line Narration field.';
                }
                field("Location ARN No."; Rec."Location ARN No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Location ARN No. field.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the location code for which the journal lines will be posted.';
                }
                field("Location GST Reg. No."; Rec."Location GST Reg. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the GST Registration number of the location used in posted entry.';
                }
                field("Location State Code"; Rec."Location State Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the location state of the posted entry.';
                }
                field("Max. Payment Tolerance"; Rec."Max. Payment Tolerance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the maximum tolerated amount the entry can differ from the amount on the invoice or credit memo.';
                }
                field("Message to Recipient"; Rec."Message to Recipient")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the message exported to the payment file when you use the Export Payments to File function in the Payment Journal window.';
                }
                field(Month; Rec.Month)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Month field.';
                }
                field(Narration; Rec.Narration)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Narration field.';
                }
                field("No. Series"; Rec."No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. Series field.';
                }
                field("Not Enclude CFORM"; Rec."Not Enclude CFORM")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Not Enclude CFORM field.';
                }
                field("On Hold"; Rec."On Hold")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that the related entry represents an unpaid invoice for which either a payment suggestion, a reminder, or a finance charge memo exists.';
                }
                field(Open; Rec.Open)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the amount on the entry has been fully paid or there is still a remaining amount that must be applied to.';
                }
                field("Orig. Pmt. Disc. Possible(LCY)"; Rec."Orig. Pmt. Disc. Possible(LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Orig. Pmt. Disc. Possible (LCY) field.';
                }
                field("Original Amount"; Rec."Original Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount of the original entry.';
                }
                field("Original Amt. (LCY)"; Rec."Original Amt. (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount that the entry originally consisted of, in LCY.';
                }
                field("Original Currency Factor"; Rec."Original Currency Factor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Original Currency Factor field.';
                }
                field("Original Pmt. Disc. Possible"; Rec."Original Pmt. Disc. Possible")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the discount that the customer can obtain if the entry is applied to before the payment discount date.';
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how to make payment, such as with bank transfer, cash, or check.';
                }
                field("Payment Reference"; Rec."Payment Reference")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Reference field.';
                }
                field(Pet; Rec.Pet)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pet field.';
                }
                field("Pmt. Disc. Given (LCY)"; Rec."Pmt. Disc. Given (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pmt. Disc. Given (LCY) field.';
                }
                field("Pmt. Disc. Tolerance Date"; Rec."Pmt. Disc. Tolerance Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the latest date the amount in the entry must be paid in order for a payment discount tolerance to be granted.';
                }
                field("Pmt. Discount Date"; Rec."Pmt. Discount Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date on which the amount in the entry must be paid for a payment discount to be granted.';
                }
                field("Pmt. Tolerance (LCY)"; Rec."Pmt. Tolerance (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pmt. Tolerance (LCY) field.';
                }
                field(Positive; Rec.Positive)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the entry to be applied is positive.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specify the posting date of the customer ledger entry.';
                }
                field(Prepayment; Rec.Prepayment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the related payment is a prepayment.';
                }
                field("Profit (LCY)"; Rec."Profit (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Profit (LCY) field.';
                }
                field("Reason Code"; Rec."Reason Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the reason code, a supplementary source code that enables you to trace the entry.';
                }
                field("Recipient Bank Account"; Rec."Recipient Bank Account")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bank account to transfer the amount to.';
                }
                field("Remaining Amount"; Rec."Remaining Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount that remains to be applied to before the entry has been completely applied.';
                }
                field("Remaining Amt. (LCY)"; Rec."Remaining Amt. (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount that remains to be applied to before the entry is totally applied to.';
                }
                field("Remaining Pmt. Disc. Possible"; Rec."Remaining Pmt. Disc. Possible")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the remaining payment discount which can be received if the payment is made before the payment discount date.';
                }
                field(Reversed; Rec.Reversed)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the entry has been part of a reverse transaction.';
                }
                field("Reversed Entry No."; Rec."Reversed Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the original entry that was undone by the reverse transaction.';
                }
                field("Reversed by Entry No."; Rec."Reversed by Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the correcting entry that replaced the original entry in the reverse transaction.';
                }
                field("Sales (LCY)"; Rec."Sales (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total sales amount excl. VAT to the customer in LCY.';
                }
                field("Sales Territory"; Rec."Sales Territory")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Territory field.';
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the salesperson whom the entry is linked to.';
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sell-to Customer No. field.';
                }
                field("Seller GST Reg. No."; Rec."Seller GST Reg. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the GST registration number of the Seller specified on the journal line.';
                }
                field("Seller State Code"; Rec."Seller State Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Customer state code that the entry is posted to.';
                }
                field(Set; Rec.Set)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Set field.';
                }
                field("Ship To Address"; Rec."Ship To Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ship To Address field.';
                }
                field("Ship To Address2"; Rec."Ship To Address2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ship To Address2 field.';
                }
                field("Ship To City"; Rec."Ship To City")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ship To City field.';
                }
                field("Ship To Name"; Rec."Ship To Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ship To Name field.';
                }
                field("Shortcut Dimension 3 Code"; Rec."Shortcut Dimension 3 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for Shortcut Dimension 3, which is one of dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Shortcut Dimension 4 Code"; Rec."Shortcut Dimension 4 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for Shortcut Dimension 4, which is one of dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Shortcut Dimension 5 Code"; Rec."Shortcut Dimension 5 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for Shortcut Dimension 5, which is one of dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Shortcut Dimension 6 Code"; Rec."Shortcut Dimension 6 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for Shortcut Dimension 6, which is one of dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Shortcut Dimension 7 Code"; Rec."Shortcut Dimension 7 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for Shortcut Dimension 7, which is one of dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Shortcut Dimension 8 Code"; Rec."Shortcut Dimension 8 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for Shortcut Dimension 8, which is one of dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Source Code"; Rec."Source Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the source code that specifies where the entry was created.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemId field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
                field("TCS Amount"; Rec."TCS Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TCS Amount field.';
                }
                field("TCS Nature of Collection"; Rec."TCS Nature of Collection")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TCS Nature of Collection field.';
                }
                field("TCS On Collection Entry"; Rec."TCS On Collection Entry")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TCS On Collection Entry field.';
                }
                field("TDS Certificate Amount"; Rec."TDS Certificate Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specify the TDS certificate amount as per the TDS certificate.';
                }
                field("TDS Certificate Rcpt Date"; Rec."TDS Certificate Rcpt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date on which TDS certificate has been received.';
                }
                field("TDS Certificate Receivable"; Rec."TDS Certificate Receivable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specify customer ledger entries against which TDS certificate is receivable.';
                }
                field("TDS Certificate Received"; Rec."TDS Certificate Received")
                {
                    ApplicationArea = All;
                    ToolTip = 'Mark in this field specify the same entry in the Rectify TDS Cert. Details window.';
                }
                field("TDS Section Code"; Rec."TDS Section Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Choose the TDS section code from the lookup list for which TDS certificate has received.';
                }
                field("Total GST Amount"; Rec."Total GST Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total GST Amount field.';
                }
                field("Total TCS Including SHE CESS"; Rec."Total TCS Including SHE CESS")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total TCS Including SHE CESS field.';
                }
                field("Transaction No."; Rec."Transaction No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction No. field.';
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ID of the user who posted the entry, to be used, for example, in the change log.';
                }
                field(Year; Rec.Year)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Year field.';
                }
                field("Your Reference"; Rec."Your Reference")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s reference.';
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        UserSetup: Record "User Setup";
    begin
        if NOT (UserId = 'ADMIN') THEN
            Error('You are not authorised to Open the Page [Approval Adm]');
    end;

}
