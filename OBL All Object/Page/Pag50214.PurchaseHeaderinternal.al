page 50214 "Purchase Header internal"
{
    ApplicationArea = All;
    Caption = 'Purchase Header internal';
    PageType = List;
    SourceTable = "Purchase Header";
    UsageCategory = Lists;
    InsertAllowed = true;
    ModifyAllowed = true;
    DeleteAllowed = true;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the subcontracting order number.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the status of the document.';
                    Editable = true;    //17141
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the order date of the document.';
                }
                field("A. Rcd. Not Inv. Ex. VAT (LCY)"; Rec."A. Rcd. Not Inv. Ex. VAT (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount excluding VAT for the items on the order that have been received but are not yet invoiced.';
                }
                field("Adv Payment"; Rec."Adv Payment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Adv Payment field.';
                }
                field("Amendment Date"; Rec."Amendment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amendment Date field.';
                }
                field("Amendment No."; Rec."Amendment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amendment No. field.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sum of amounts on all the lines in the document. This will include invoice discounts.';
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sum of amounts, including VAT, on all the lines in the document. This will include invoice discounts.';
                }
                field("Amt. Rcd. Not Invoiced (LCY)"; Rec."Amt. Rcd. Not Invoiced (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sum, in LCY, for items that have been received but have not yet been invoiced. The value in the Amt. Rcd. Not Invoiced (LCY) field is used for entries in the Purchase Line table of document type Order to calculate and update the contents of this field.';
                }
                field("Applies-to Doc. No."; Rec."Applies-to Doc. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the document number of the entry which will be applied with this document.';
                }
                field("Applies-to Doc. Type"; Rec."Applies-to Doc. Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the document type of the entry which will be applied with this document.';
                }
                field("Applies-to ID"; Rec."Applies-to ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ID of entries that will be applied to when you choose the Apply Entries action.';
                }
                field("Approval Status"; Rec."Approval Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approval Status field.';
                }

                field("Approver ID"; Rec."Approver ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approver ID field.';
                }
                field("Approver Name"; Rec."Approver Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approver Name field.';
                }
                field("Area"; Rec."Area")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the area of the document.';
                }
                field("Assigned User ID"; Rec."Assigned User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the user id assigned to the document.';
                }
                field("Associated Enterprises"; Rec."Associated Enterprises")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that an import transaction of services from companys Associates Vendor';
                }
                field("Auto Create Return Order"; Rec."Auto Create Return Order")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Auto Create Return Order field.';
                }
                field("Bal. Account No."; Rec."Bal. Account No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bal. Account No. field.';
                }
                field("Bal. Account Type"; Rec."Bal. Account Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bal. Account Type field.';
                }
                field("Bill of Entry Date"; Rec."Bill of Entry Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entry date defined in bill of entry document.';
                }
                field("Bill of Entry No."; Rec."Bill of Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bill of entry number. It is a document number which is submitted to custom department .';
                }
                field("Bill of Entry Value"; Rec."Bill of Entry Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the values as mentioned in bill of entry document.';
                }
                field("Bill to-Location(POS)"; Rec."Bill to-Location(POS)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Bill to Location Code which is considered as Place of Supply.';
                }
                field("Buy-from Address"; Rec."Buy-from Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor address.';
                }
                field("Buy-from Address 2"; Rec."Buy-from Address 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the additional address of vendor.';
                }
                field("Buy-from City"; Rec."Buy-from City")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the city of the vendor.';
                }
                field("Buy-from Contact"; Rec."Buy-from Contact")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the contact of the vendor.';
                }
                field("Buy-from Contact No."; Rec."Buy-from Contact No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the contact number of the vendor.';
                }
                field("Buy-from Country/Region Code"; Rec."Buy-from Country/Region Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the country/region code of the vendor.';
                }
                field("Buy-from County"; Rec."Buy-from County")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the state, province or county of the address.';
                }
                field("Buy-from IC Partner Code"; Rec."Buy-from IC Partner Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Buy-from IC Partner Code field.';
                }
                field("Buy-from Post Code"; Rec."Buy-from Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the post code of the vendor.';
                }
                field("Buy-from Vendor Name"; Rec."Buy-from Vendor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor name.';
                }
                field("Buy-from Vendor Name 2"; Rec."Buy-from Vendor Name 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Buy-from Vendor Name 2 field.';
                }
                field("Buy-from Vendor No."; Rec."Buy-from Vendor No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the subcontracting vendor number the order belongs to.';
                }
                field("Campaign No."; Rec."Campaign No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the campaign number the document is linked to.';
                }
                field("Capex No."; Rec."Capex No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Capex No. field.';
                }
                field("Capital PO"; Rec."Capital PO")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Capital PO field.';
                }
                field(Comment; Rec.Comment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Comment field.';
                }
                field("Completely Received"; Rec."Completely Received")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if all the items on the order have been shipped or, in the case of inbound items, completely received.';
                }
                field("Compress Prepayment"; Rec."Compress Prepayment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that prepayments on the purchase order are combined if they have the same general ledger account for prepayments or the same dimensions.';
                }
                field(Correction; Rec.Correction)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entry as a corrective entry. You can use the field if you need to post a corrective entry to a vendor account. If you place a check mark in this field when posting a corrective entry, the system will post a negative debit instead of a credit or a negative credit instead of a debit. Correction flag does not affect how inventory reconciled with general ledger.';
                }
                field("Creditor No."; Rec."Creditor No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor who sent the purchase invoice.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the foreign currency code used in the document.';
                }
                field("Currency Code 1"; Rec."Currency Code 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Currency Code 1 field.';
                }
                field("Currency Factor"; Rec."Currency Factor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Currency Factor field.';
                }
                field(Currency_Code; Rec.Currency_Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Currency_Code field.';
                }
                field(Deleted; Rec.Deleted)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Deleted field.';
                }
                field("Delivary Date"; Rec."Delivary Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Delivary Date field.';
                }
                field("Delivery Period"; Rec."Delivery Period")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Delivery Period field.';
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dimension Set ID field.';
                }
                field("Distance (Km)"; Rec."Distance (Km)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the distance on the purchase document.';
                }
                field("Doc. No. Occurrence"; Rec."Doc. No. Occurrence")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Doc. No. Occurrence field.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the document date of the document.';
                }
                field("Document Received from Bank"; Rec."Document Received from Bank")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Received from Bank field.';
                }
                field("Document Receiving Date"; Rec."Document Receiving Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Receiving Date field.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Type field.';
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the due date of the order as per payment terms.';
                }
                field("Due Date Calc. On"; Rec."Due Date Calc. On")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Due Date Calc. On field.';
                }
                field("E-Way Bill No."; Rec."E-Way Bill No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the E-Way Bill No. field.';
                }
                field("E-Way Bill No.1"; Rec."E-Way Bill No.1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the E-Way Bill No.1 field.';
                }
                field("Entry Point"; Rec."Entry Point")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entry point.';
                }
                field("Exchange Rate"; Rec."Exchange Rate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Exchange Rate field.';
                }
                field("Excise Approved (Accounts)"; Rec."Excise Approved (Accounts)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Excise Approved (Accounts) field.';
                }
                field("Expected Receipt Date"; Rec."Expected Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date of expected receipt of the material.';
                }
                field("Form 31 Amount"; Rec."Form 31 Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Form 31 Amount field.';
                }
                field("Form 38 No."; Rec."Form 38 No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Form 38 No. field.';
                }
                field("GE Date"; Rec."GE Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GE Date field.';
                }
                field("GE No."; Rec."GE No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GE No. field.';
                }
                field("GR No."; Rec."GR No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GR No. field.';
                }
                field("GRN Date"; Rec."GRN Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GRN Date field.';
                }
                field("GST Input Service Distribution"; Rec."GST Input Service Distribution")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Input Service Distribution field.';
                }
                field("GST Inv. Rounding Precision"; Rec."GST Inv. Rounding Precision")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Inv. Rounding Precision field.';
                }
                field("GST Inv. Rounding Type"; Rec."GST Inv. Rounding Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Inv. Rounding Type field.';
                }
                field("GST Invoice"; Rec."GST Invoice")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if GST is applicable.';
                }
                field("GST Order Address State"; Rec."GST Order Address State")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the state code of the mentioned order address in the transaction.';
                }
                field("GST Reason Type"; Rec."GST Reason Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the reason of return or credit memo of a posted document where GST is applicable. For example, Deficiency in Service/Correction in Invoice etc.';
                }
                field("GST Vendor Type"; Rec."GST Vendor Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor type for GST transaction';
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gen. Bus. Posting Group field.';
                }
                field("IC Direction"; Rec."IC Direction")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the IC Direction field.';
                }
                field("IC Reference Document No."; Rec."IC Reference Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the IC Reference Document No. field.';
                }
                field("IC Status"; Rec."IC Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the IC Status field.';
                }
                field("Inbound Whse. Handling Time"; Rec."Inbound Whse. Handling Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the inbound warehouse handling time.';
                }
                field("Include GST in TDS Base"; Rec."Include GST in TDS Base")
                {
                    ApplicationArea = All;
                    ToolTip = 'Select this field to include GST value in the TDS Base.';
                }
                field("Incoming Document Entry No."; Rec."Incoming Document Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the incoming document that this purchase document is created for.';
                }
                field("Inter Company"; Rec."Inter Company")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inter Company field.';
                }
                field(Invoice; Rec.Invoice)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice field.';
                }
                field("Invoice Disc. Code"; Rec."Invoice Disc. Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice Disc. Code field.';
                }
                field("Invoice Discount Amount"; Rec."Invoice Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice Discount Amount field.';
                }
                field("Invoice Discount Calculation"; Rec."Invoice Discount Calculation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice Discount Calculation field.';
                }
                field("Invoice Discount Value"; Rec."Invoice Discount Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice Discount Value field.';
                }
                field("Invoice Type"; Rec."Invoice Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of the quote created. For example, Self Invoice/Debit Note/Supplementary/Non-GST.';
                }
                field("Job Queue Entry ID"; Rec."Job Queue Entry ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Queue Entry ID field.';
                }
                field("Job Queue Status"; Rec."Job Queue Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the status of a job queue entry that handles the posting of purchase credit memos.';
                }
                field("Journal Templ. Name"; Rec."Journal Templ. Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the journal template in which the purchase header is to be posted.';
                }
                field("Language Code"; Rec."Language Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Language Code field.';
                }
                field("Last Posting No."; Rec."Last Posting No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Posting No. field.';
                }
                field("Last Prepayment No."; Rec."Last Prepayment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Prepayment No. field.';
                }
                field("Last Prepmt. Cr. Memo No."; Rec."Last Prepmt. Cr. Memo No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Prepmt. Cr. Memo No. field.';
                }
                field("Last Receiving No."; Rec."Last Receiving No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Receiving No. field.';
                }
                field("Last Return Shipment No."; Rec."Last Return Shipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Return Shipment No. field.';
                }
                field("Lead Time Calculation"; Rec."Lead Time Calculation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the calculation time formula for lead time calculation.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the location code used in the document.';
                }
                field("Location GST Reg. No."; Rec."Location GST Reg. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the GST Registration number of the Location specified on the journal line.';
                }
                field("Location State Code"; Rec."Location State Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the state code mentioned in location used in the transaction.';
                }
                field("Locked Order"; Rec."Locked Order")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Locked Order field.';
                }
                field("Main Location"; Rec."Main Location")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Main Location field.';
                }
                field(Moisture; Rec.Moisture)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Moisture field.';
                }
                field(NOE; Rec.NOE)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the NOE field.';
                }
                field("Nature of Supply"; Rec."Nature of Supply")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the nature of GST transaction. For example, B2B/B2C.';
                }
                field("New Status"; Rec."New Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the New Status field.';
                }

                field("No. Printed"; Rec."No. Printed")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. Printed field.';
                }
                field("No. Series"; Rec."No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. Series field.';
                }
                field("No. of Archived Versions"; Rec."No. of Archived Versions")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total number of versions created for the order.';
                }
                field("On Hold"; Rec."On Hold")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the document is on hold or not.';
                }
                field("Order Address Code"; Rec."Order Address Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor order address, if any.';
                }
                field("Order Address GST Reg. No."; Rec."Order Address GST Reg. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the GST registration number of the mentioned order address in the transaction.';
                }
                field("Order Class"; Rec."Order Class")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Class field.';
                }

                field("Ordered Qty"; Rec."Ordered Qty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ordered Qty field.';
                }
                field("Other Comp. Location"; Rec."Other Comp. Location")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Other Comp. Location field.';
                }
                field("POS Out Of India"; Rec."POS Out Of India")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the place of supply of invoice is out of India.';
                }
                field("POS as Vendor State"; Rec."POS as Vendor State")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor state code.';
                }
                field("PUrchase Type"; Rec."PUrchase Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PUrchase Type field.';
                }
                field("Partially Invoiced"; Rec."Partially Invoiced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Partially Invoiced field.';
                }
                field("Pay-to Address"; Rec."Pay-to Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the address of pay to vendor.';
                }
                field("Pay-to Address 2"; Rec."Pay-to Address 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the additional address of pay to vendor.';
                }
                field("Pay-to City"; Rec."Pay-to City")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the city of the pay to vendor.';
                }
                field("Pay-to Contact"; Rec."Pay-to Contact")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the contact of the pay to vendor.';
                }
                field("Pay-to Contact No."; Rec."Pay-to Contact No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the contact number of the pay to vendor.';
                }
                field("Pay-to Country/Region Code"; Rec."Pay-to Country/Region Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the country/region code of the pay to vendor.';
                }
                field("Pay-to County"; Rec."Pay-to County")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the state, province or county of the address.';
                }
                field("Pay-to IC Partner Code"; Rec."Pay-to IC Partner Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pay-to IC Partner Code field.';
                }
                field("Pay-to Name"; Rec."Pay-to Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the pay to vendor.';
                }
                field("Pay-to Name 2"; Rec."Pay-to Name 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pay-to Name 2 field.';
                }
                field("Pay-to Post Code"; Rec."Pay-to Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the post code of the pay to vendor.';
                }
                field("Pay-to Vendor No."; Rec."Pay-to Vendor No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the pay to vendor code used in the document.';
                }
                field("Payment Date"; Rec."Payment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the payment date.';
                }
                field("Payment Discount %"; Rec."Payment Discount %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the discount on payment, if any.';
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the method of payment.';
                }
                field("Payment Reference"; Rec."Payment Reference")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the payment of the purchase invoice.';
                }
                field("Payment Terms Code"; Rec."Payment Terms Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the payment term used in the document.';
                }
                field("Pending Approvals"; Rec."Pending Approvals")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pending Approvals field.';
                }
                field("Pmt. Discount Date"; Rec."Pmt. Discount Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the discount amount of the payment as per discount percentage.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the posting date of the entry.';
                }
                field("Posting Description"; Rec."Posting Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies additional posting information for the document. After you post the document, the description can add detail to vendor and customer ledger entries.';
                }
                field("Posting Description New"; Rec."Posting Description New")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Description field.';
                }
                field("Posting No."; Rec."Posting No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting No. field.';
                }
                field("Posting No. Series"; Rec."Posting No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting No. Series field.';
                }
                field("Posting from Whse. Ref."; Rec."Posting from Whse. Ref.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting from Whse. Ref. field.';
                }
                field("Prepayment %"; Rec."Prepayment %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the prepayment percentage to use to calculate the prepayment for sales.';
                }
                field("Prepayment Due Date"; Rec."Prepayment Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies when the prepayment invoice for this purchase order is due.';
                }
                field("Prepayment No."; Rec."Prepayment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepayment No. field.';
                }
                field("Prepayment No. Series"; Rec."Prepayment No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepayment No. Series field.';
                }
                field("Prepmt. Cr. Memo No."; Rec."Prepmt. Cr. Memo No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepmt. Cr. Memo No. field.';
                }
                field("Prepmt. Cr. Memo No. Series"; Rec."Prepmt. Cr. Memo No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepmt. Cr. Memo No. Series field.';
                }
                field("Prepmt. Payment Discount %"; Rec."Prepmt. Payment Discount %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the payment discount percent granted on the prepayment if the vendor pays on or before the date entered in the Prepmt. Pmt. Discount Date field.';
                }
                field("Prepmt. Payment Terms Code"; Rec."Prepmt. Payment Terms Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code that represents the payment terms for prepayment invoices related to the purchase document.';
                }
                field("Prepmt. Pmt. Discount Date"; Rec."Prepmt. Pmt. Discount Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the last date the vendor can pay the prepayment invoice and still receive a payment discount on the prepayment amount.';
                }
                field("Prepmt. Posting Description"; Rec."Prepmt. Posting Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepmt. Posting Description field.';
                }
                field("Price Calculation Method"; Rec."Price Calculation Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Price Calculation Method field.';
                }
                field("Prices Including VAT"; Rec."Prices Including VAT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the Unit Price and Line Amount fields on document lines should be shown with or without VAT.';
                }
                field("Print Posted Documents"; Rec."Print Posted Documents")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Print Posted Documents field.';
                }
                field("Promised Receipt Date"; Rec."Promised Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date by which delivery of finished good promised by vendor.';
                }
                field("Purchaser Code"; Rec."Purchaser Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the assigned purchaser from the organization.';
                }
                field("Quotation Date"; Rec."Quotation Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quotation Date field.';
                }
                field("Quotation No."; Rec."Quotation No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quotation No. field.';
                }
                field("Quote No."; Rec."Quote No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quote number for the purchase order.';
                }
                field("RCM Exempt"; Rec."RCM Exempt")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RCM Exempt field.';
                }
                field("RFQ No."; Rec."RFQ No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RFQ No. field.';
                }
                field("Rate Change Applicable"; Rec."Rate Change Applicable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if rate change is applicable on the sales document.';
                }
                field("Reason Code"; Rec."Reason Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the reason code, a supplementary source code that enables you to trace the document.';
                }
                field("Reason Code New"; Rec."Reason Code New")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reason Code New field.';
                }
                field("Reason for Approval"; Rec."Reason for Approval")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reason for Approval field.';
                }
                field("Recalculate Invoice Disc."; Rec."Recalculate Invoice Disc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Recalculate Invoice Disc. field.';
                }
                field(Receive; Rec.Receive)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Receive field.';
                }
                field("Receiving No."; Rec."Receiving No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Receiving No. field.';
                }
                field("Receiving No. Series"; Rec."Receiving No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Receiving No. Series field.';
                }
                field("Reference Invoice No."; Rec."Reference Invoice No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Reference Invoice number.';
                }
                field("Rejection Date"; Rec."Rejection Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rejection Date field.';
                }
                field("Releasing Date"; Rec."Releasing Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Releasing Date field.';
                }
                field("Releasing Time"; Rec."Releasing Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Releasing Time field.';
                }
                field("Remit-to Code"; Rec."Remit-to Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the vendor''s remit address for this invoice.';
                }
                field("Requested Receipt Date"; Rec."Requested Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date by which delivery of finished good requested by company.';
                }
                field(Residue; Rec.Residue)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Residue field.';
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the responsibility center for the document.';
                }
                field("Return Order Created"; Rec."Return Order Created")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Order Created field.';
                }
                field("Return Order No"; Rec."Return Order No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Order No field.';
                }
                field("Return Order Pend. For Posting"; Rec."Return Order Pend. For Posting")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Order Pend. For Posting field.';
                }
                field("Return Ref. Order No."; Rec."Return Ref. Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Ref. Order No. field.';
                }
                field("Return Shipment No."; Rec."Return Shipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Shipment No. field.';
                }
                field("Return Shipment No. Series"; Rec."Return Shipment No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Shipment No. Series field.';
                }
                field("Security Amount"; Rec."Security Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Amount field.';
                }
                field("Security Date"; Rec."Security Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Date field.';
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer code.';
                }
                field("Send IC Document"; Rec."Send IC Document")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Send IC Document field.';
                }
                field(Ship; Rec.Ship)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ship field.';
                }
                field("Ship-to Address"; Rec."Ship-to Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ship to address used for the document.';
                }
                field("Ship-to Address 2"; Rec."Ship-to Address 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the additional address used for the document.';
                }
                field("Ship-to City"; Rec."Ship-to City")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ship to city used for the document.';
                }
                field("Ship-to Code"; Rec."Ship-to Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ship to code used for the document.';
                }
                field("Ship-to Contact"; Rec."Ship-to Contact")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ship to contact used for the document.';
                }
                field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the country/region code of the ship to code.';
                }
                field("Ship-to County"; Rec."Ship-to County")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the state, province or county of the address.';
                }
                field("Ship-to Name"; Rec."Ship-to Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ship to name used for the document.';
                }
                field("Ship-to Name 2"; Rec."Ship-to Name 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ship-to Name 2 field.';
                }
                field("Ship-to Post Code"; Rec."Ship-to Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ship to post code used for the document.';
                }
                field("Shipment Method Code"; Rec."Shipment Method Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the shipment method code used in the document.';
                }
                field("Shipping Agent Code"; Rec."Shipping Agent Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the shipping agent code. For example, DHL, FedEx etc.';
                }
                field("Shipping Agent Service Code"; Rec."Shipping Agent Service Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipping Agent Service Code field.';
                }
                field("Shortage CRN"; Rec."Shortage CRN")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shortage CRN field.';
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Secifies the shortcut dimension 1 code.';
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Shortcut Dimension 2 Code.';
                }
                field("Shortcut Dimension 8 Code"; Rec."Shortcut Dimension 8 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shortcut Dimension 8 Code field.';
                }
                field(State; Rec.State)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the State field.';
                }
                field("State Desc."; Rec."State Desc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the State Desc. field.';
                }

                //>>
                // field("Status New"; Rec."Status New")
                // {
                //     Caption = 'Status to Modify';
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies the status of the document.';
                //     Editable = true;
                // }
                //<<
                field(SubConPostLine; Rec.SubConPostLine)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specified subcontracting post line no';
                }
                field("Subcon. Multiple Receipt"; Rec."Subcon. Multiple Receipt")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subcon. Multiple Receipt field.';
                }
                field("Subcon. Order Line No."; Rec."Subcon. Order Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies subcontracting order line no';
                }
                field("Subcon. Order No."; Rec."Subcon. Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies subcontracting order no';
                }
                field(Subcontracting; Rec.Subcontracting)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the order is subcontracting';
                }
                field("Supply Finish Date"; Rec."Supply Finish Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the supply finish date. For example, Before rate change/After rate change.';
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
                field("Tax Area Code"; Rec."Tax Area Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the tax area code used for this purchase to calculate and post sales tax.';
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if this vendor charges you sales tax for purchases.';
                }
                field("Terms of Delivery"; Rec."Terms of Delivery")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Terms of Delivery field.';
                }
                field("Total Recd. Quantity"; Rec."Total Recd. Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Recd. Quantity field.';
                }
                field(Trading; Rec.Trading)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Trading field.';
                }
                field("Transaction Specification"; Rec."Transaction Specification")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the transaction specification if any.';
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the transaction type of the document.';
                }
                field("Transport Method"; Rec."Transport Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the transportation method mentioned in the document.';
                }
                field("Transporter Name"; Rec."Transporter Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transporter Name field.';
                }
                field("Transporter's Code"; Rec."Transporter's Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transporter''s Code field.';
                }
                field("Truck No."; Rec."Truck No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Truck No. field.';
                }
                field("User Id"; Rec."User Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User Id field.';
                }
                field("User Location Code"; Rec."User Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User Location Code field.';
                }
                field("VAT Base Discount %"; Rec."VAT Base Discount %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Base Discount % field.';
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the VAT specification of the involved customer or vendor to link transactions made for this record with the appropriate general ledger account according to the VAT posting setup.';
                }
                field("VAT Country/Region Code"; Rec."VAT Country/Region Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Country/Region Code field.';
                }
                field("VAT Registration No."; Rec."VAT Registration No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Registration No. field.';
                }
                field("VAT Reporting Date"; Rec."VAT Reporting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date used to include entries on VAT reports in a VAT period. This is either the date that the document was created or posted, depending on your setting on the General Ledger Setup page.';
                }
                field("Value of Order"; Rec."Value of Order")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Value of Order field.';
                }
                field("Vehicle No."; Rec."Vehicle No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vehicle number on the sales document.';
                }
                field("Vehicle Type"; Rec."Vehicle Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vehicle type on the sales document. For example, Regular/ODC.';
                }
                field("Vendor Authorization No."; Rec."Vendor Authorization No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the authorization number given by the vendor, if any.';
                }
                field("Vendor CN Date"; Rec."Vendor CN Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor CN Date field.';
                }
                field("Vendor Classification"; Rec."Vendor Classification")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Classification field.';
                }
                field("Vendor Cr. Memo No."; Rec."Vendor Cr. Memo No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the document number of the original document you received from the vendor. You can require the document number for posting, or let it be optional. By default, it''s required, so that this document references the original. Making document numbers optional removes a step from the posting process. For example, if you attach the original invoice as a PDF, you might not need to enter the document number. To specify whether document numbers are required, in the Purchases & Payables Setup window, select or clear the Ext. Doc. No. Mandatory field.';
                }
                field("Vendor GST CN  available"; Rec."Vendor GST CN  available")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor GST CN  available field.';
                }
                field("Vendor GST Reg. No."; Rec."Vendor GST Reg. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the GST registration number of the Vendor specified on the journal line.';
                }
                field("Vendor Invoice Date"; Rec."Vendor Invoice Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Invoice Date field.';
                }
                field("Vendor Invoice No."; Rec."Vendor Invoice No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor invoice number.';
                }
                field("Vendor Order No."; Rec."Vendor Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor order number.';
                }
                field("Vendor Posting Group"; Rec."Vendor Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor''s market type to link business transactions to.';
                }
                field("Vendor Shipment No."; Rec."Vendor Shipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor shipment number.';
                }
                field("Without Bill Of Entry"; Rec."Without Bill Of Entry")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the invoice is with or without bill of entry.';
                }
                field("Your Reference"; Rec."Your Reference")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor''s reference.';
                }
            }
        }
    }
    trigger OnOpenPage()
    var
    begin

        if (UserId <> 'IT005') and (UserId <> 'ADMIN') then
            Error('You Are not Authorized');
    end;
}
