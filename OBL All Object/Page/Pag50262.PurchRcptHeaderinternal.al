page 50262 "Purch. Rcpt. Header internal"
{
    ApplicationArea = All;
    Caption = 'Purch. Rcpt. Header internal';
    PageType = List;
    SourceTable = "Purch. Rcpt. Header";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Actual MRN Date"; Rec."Actual MRN Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Actual MRN Date field.';
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
                field("Area"; Rec."Area")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Area field.';
                }
                field("Associated Enterprises"; Rec."Associated Enterprises")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Associated Enterprises field.';
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
                    ToolTip = 'Specifies the value of the Bill of Entry Date field.';
                }
                field("Bill of Entry No."; Rec."Bill of Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bill of Entry No. field.';
                }
                field("Bill of Entry Value"; Rec."Bill of Entry Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bill of Entry Value field.';
                }
                field("Bill to-Location(POS)"; Rec."Bill to-Location(POS)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bill to-Location(POS) field.';
                }
                field("Buy-from Address"; Rec."Buy-from Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the address of the vendor who delivered the items.';
                }
                field("Buy-from Address 2"; Rec."Buy-from Address 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies an additional part of the address of the vendor who delivered the items.';
                }
                field("Buy-from City"; Rec."Buy-from City")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the city of the vendor who delivered the items.';
                }
                field("Buy-from Contact"; Rec."Buy-from Contact")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the contact person at the vendor who delivered the items.';
                }
                field("Buy-from Contact No."; Rec."Buy-from Contact No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the contact person at the vendor who delivered the items.';
                }
                field("Buy-from Country/Region Code"; Rec."Buy-from Country/Region Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the country or region of the address.';
                }
                field("Buy-from County"; Rec."Buy-from County")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the state, province or county related to the posted purchase order.';
                }
                field("Buy-from Post Code"; Rec."Buy-from Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the post code of the vendor who delivered the items.';
                }
                field("Buy-from Vendor Name"; Rec."Buy-from Vendor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the vendor who delivered the items.';
                }
                field("Buy-from Vendor Name 2"; Rec."Buy-from Vendor Name 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Buy-from Vendor Name 2 field.';
                }
                field("Buy-from Vendor No."; Rec."Buy-from Vendor No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the vendor who delivered the items.';
                }
                field("Campaign No."; Rec."Campaign No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Campaign No. field.';
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
                field(Correction; Rec.Correction)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Correction field.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Currency Code field.';
                }
                field("Currency Factor"; Rec."Currency Factor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Currency Factor field.';
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date field.';
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
                    ToolTip = 'Specifies the value of the Distance (Km) field.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date when the purchase document was created.';
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
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Due Date field.';
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
                    ToolTip = 'Specifies the value of the Entry Point field.';
                }
                field("Excise Approved (Accounts)"; Rec."Excise Approved (Accounts)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Excise Approved (Accounts) field.';
                }
                field("Expected Receipt Date"; Rec."Expected Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date you expect the items to be available in your warehouse. If you leave the field blank, it will be calculated as follows: Planned Receipt Date + Safety Lead Time + Inbound Warehouse Handling Time = Expected Receipt Date.';
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
                    ToolTip = 'Specifies the value of the GST Invoice field.';
                }
                field("GST Order Address State"; Rec."GST Order Address State")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Order Address State field.';
                }
                field("GST Reason Type"; Rec."GST Reason Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Reason Type field.';
                }
                field("GST Vendor Type"; Rec."GST Vendor Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Vendor Type field.';
                }
                field("Gate Entry No."; Rec."Gate Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gate Entry No. field.';
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gen. Bus. Posting Group field.';
                }
                field("Inbound Whse. Handling Time"; Rec."Inbound Whse. Handling Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the time it takes to make items part of available inventory, after the items have been posted as received.';
                }
                field("Insurance Amount"; Rec."Insurance Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Insurance Amount field.';
                }
                field("Inter Company"; Rec."Inter Company")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inter Company field.';
                }
                field("Invoice Disc. Code"; Rec."Invoice Disc. Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice Disc. Code field.';
                }
                field("Invoice Type"; Rec."Invoice Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice Type field.';
                }
                field("Language Code"; Rec."Language Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Language Code field.';
                }
                field("Lead Time Calculation"; Rec."Lead Time Calculation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a date formula for the amount of time it takes to replenish the item.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a code for the location where you want the items to be placed when they are received.';
                }
                field("Location GST Reg. No."; Rec."Location GST Reg. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Location GST Reg. No. field.';
                }
                field("Location State Code"; Rec."Location State Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Location State Code field.';
                }
                field(Mailed; Rec.Mailed)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mailed field.';
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
                field("NRGP No."; Rec."NRGP No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the NRGP No. field.';
                }
                field("Nature of Supply"; Rec."Nature of Supply")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Nature of Supply field.';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of a general ledger account, item, additional cost, or fixed asset, depending on what you selected in the Type field.';
                }
                field("No. Printed"; Rec."No. Printed")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many times the document has been printed.';
                }
                field("No. Series"; Rec."No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. Series field.';
                }
                field("On Hold"; Rec."On Hold")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the On Hold field.';
                }
                field("Order Address Code"; Rec."Order Address Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the order address of the related vendor.';
                }
                field("Order Address GST Reg. No."; Rec."Order Address GST Reg. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Address GST Reg. No. field.';
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Date field.';
                }
                field("Order No."; Rec."Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the line number of the order that created the entry.';
                }
                field("Order No. Series"; Rec."Order No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order No. Series field.';
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
                    ToolTip = 'Specifies the value of the POS Out Of India field.';
                }
                field("POS as Vendor State"; Rec."POS as Vendor State")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the POS as Vendor State field.';
                }
                field("Pay-to Address"; Rec."Pay-to Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the address of the vendor that you received the invoice from.';
                }
                field("Pay-to Address 2"; Rec."Pay-to Address 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies an additional part of the address of the vendor that the invoice was received from.';
                }
                field("Pay-to City"; Rec."Pay-to City")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the city of the vendor that you received the invoice from.';
                }
                field("Pay-to Contact"; Rec."Pay-to Contact")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the contact person at the vendor that you received the invoice from.';
                }
                field("Pay-to Contact no."; Rec."Pay-to Contact no.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the person to contact about an invoice from this vendor.';
                }
                field("Pay-to Country/Region Code"; Rec."Pay-to Country/Region Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the country or region of the vendor on the purchase document.';
                }
                field("Pay-to County"; Rec."Pay-to County")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the state, province or county related to the posted purchase order.';
                }
                field("Pay-to Name"; Rec."Pay-to Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the vendor who you received the invoice from.';
                }
                field("Pay-to Name 2"; Rec."Pay-to Name 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pay-to Name 2 field.';
                }
                field("Pay-to Post Code"; Rec."Pay-to Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the post code of the vendor that you received the invoice from.';
                }
                field("Pay-to Vendor No."; Rec."Pay-to Vendor No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the vendor that you received the invoice from.';
                }
                field("Payment Date"; Rec."Payment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Date field.';
                }
                field("Payment Discount %"; Rec."Payment Discount %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Discount % field.';
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Method Code field.';
                }
                field("Payment Terms Code"; Rec."Payment Terms Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Terms Code field.';
                }
                field("Pmt. Discount Date"; Rec."Pmt. Discount Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pmt. Discount Date field.';
                }
                field("Posted Purch. Invoice"; Rec."Posted Purch. Invoice")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posted Purchase Invoice field.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the posting date of the record.';
                }
                field("Posting Description"; Rec."Posting Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Description field.';
                }
                field("Posting Description New"; Rec."Posting Description New")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Description field.';
                }
                field("Price Calculation Method"; Rec."Price Calculation Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Price Calculation Method field.';
                }
                field("Promised Receipt Date"; Rec."Promised Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date that the vendor has promised to deliver the order.';
                }
                field("Purchaser Code"; Rec."Purchaser Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies which purchaser is assigned to the vendor.';
                }
                field("Quotation No."; Rec."Quotation No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quotation No. field.';
                }
                field("Quote No."; Rec."Quote No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quote number for the posted purchase receipt.';
                }
                field("RCM Exempt"; Rec."RCM Exempt")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RCM Exempt field.';
                }
                field("Rate Change Applicable"; Rec."Rate Change Applicable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rate Change Applicable field.';
                }
                field("Reason Code"; Rec."Reason Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reason Code field.';
                }
                field("Reference Invoice No."; Rec."Reference Invoice No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reference Invoice No. field.';
                }
                field("Requested Receipt Date"; Rec."Requested Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date that you want the vendor to deliver to the ship-to address. The value in the field is used to calculate the latest date you can order the items to have them delivered on the requested receipt date. If you do not need delivery on a specific date, you can leave the field blank.';
                }
                field(Residue; Rec.Residue)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Residue field.';
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the responsibility center code that is linked to this posted return receipt.';
                }
                field("Return Order No"; Rec."Return Order No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Order No field.';
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
                    ToolTip = 'Specifies the value of the Sell-to Customer No. field.';
                }
                field("Ship-to Address"; Rec."Ship-to Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the address that items on the purchase order were shipped to, as a drop shipment..';
                }
                field("Ship-to Address 2"; Rec."Ship-to Address 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies an additional part of the ship-to address, in case it is a long address.';
                }
                field("Ship-to City"; Rec."Ship-to City")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the city of the address that the items are shipped to.';
                }
                field("Ship-to Code"; Rec."Ship-to Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a code for an alternate shipment address if you want to ship to another address than the one that has been entered automatically. This field is also used in case of drop shipment.';
                }
                field("Ship-to Contact"; Rec."Ship-to Contact")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the contact person at the customer that items on the purchase order were shipped to, as a drop shipment.';
                }
                field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the country or region of the ship-to address.';
                }
                field("Ship-to County"; Rec."Ship-to County")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the state, province or county related to the posted purchase order.';
                }
                field("Ship-to Name"; Rec."Ship-to Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the customer that items on the purchase order were shipped to, as a drop shipment.';
                }
                field("Ship-to Name 2"; Rec."Ship-to Name 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ship-to Name 2 field.';
                }
                field("Ship-to Post Code"; Rec."Ship-to Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the post code that items on the purchase order were shipped to, as a drop shipment.';
                }
                field("Shipment Method Code"; Rec."Shipment Method Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the delivery conditions of the related shipment, such as free on board (FOB).';
                }
                field("Shipping Agent Code"; Rec."Shipping Agent Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipping Agent Code field.';
                }
                field("Shipping Agent Service Code"; Rec."Shipping Agent Service Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipping Agent Service Code field.';
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for Shortcut Dimension 1, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for Shortcut Dimension 2, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Source Code"; Rec."Source Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Source Code field.';
                }
                field("State Desc."; Rec."State Desc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the State Desc. field.';
                }
                field("Store Rejection Date"; Rec."Store Rejection Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Store Rejection Date field.';
                }
                field("Store Return No."; Rec."Store Return No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Store Return No. field.';
                }
                field("Subcon. Order Line No."; Rec."Subcon. Order Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subcon. Order Line No. field.';
                }
                field("Subcon. Order No."; Rec."Subcon. Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subcon. Order No. field.';
                }
                field(Subcontracting; Rec.Subcontracting)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subcontracting field.';
                }
                field("Supply Finish Date"; Rec."Supply Finish Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Supply Finish Date field.';
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
                    ToolTip = 'Specifies the value of the Tax Area Code field.';
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Tax Liable field.';
                }
                field("Total Qty. Rcd. Not Invoiced"; Rec."Total Qty. Rcd. Not Invoiced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Qty. Rcd. Not Invoiced field.';
                }
                field("Total Recd. Quantity"; Rec."Total Recd. Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Recd. Quantity field.';
                }
                field("Total UnitCost(LCY)"; Rec."Total UnitCost(LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total UnitCost(LCY) field.';
                }
                field(Trading; Rec.Trading)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Trading field.';
                }
                field("Transaction Specification"; Rec."Transaction Specification")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction Specification field.';
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction Type field.';
                }
                field("Transport Method"; Rec."Transport Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transport Method field.';
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
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User ID field.';
                }
                field("VAT Base Discount %"; Rec."VAT Base Discount %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Base Discount % field.';
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Bus. Posting Group field.';
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
                field("Vehicle No."; Rec."Vehicle No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vehicle number.';
                }
                field("Vehicle Type"; Rec."Vehicle Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of vehicle.';
                }
                field("Vendor Classification"; Rec."Vendor Classification")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Classification field.';
                }
                field("Vendor GST Reg. No."; Rec."Vendor GST Reg. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor GST Reg. No. field.';
                }
                field("Vendor Invoice Date"; Rec."Vendor Invoice Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Invoice Date field.';
                }
                field("Vendor Invoice No."; Rec."Vendor Invoice No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Invoice No. field.';
                }
                field("Vendor Order No."; Rec."Vendor Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor''s order number.';
                }
                field("Vendor Posting Group"; Rec."Vendor Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Posting Group field.';
                }
                field("Vendor Shipment No."; Rec."Vendor Shipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor''s shipment number. It is inserted in the corresponding field on the source document during posting.';
                }
                field("Without Bill Of Entry"; Rec."Without Bill Of Entry")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Without Bill Of Entry field.';
                }
                field("Your Reference"; Rec."Your Reference")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Your Reference field.';
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
