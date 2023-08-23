page 50392 "Sales Header internal"
{
    ApplicationArea = All;
    Caption = 'Sales Header internal';
    PageType = List;
    SourceTable = "Sales Header";
    UsageCategory = Lists;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Abatement Required"; Rec."Abatement Required")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Abatement Required field.';
                }
                field("Add Insu Discount"; Rec."Add Insu Discount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Add Insu Discount field.';
                }
                field("Allow Line Disc."; Rec."Allow Line Disc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Allow Line Disc. field.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total amount on the sales invoice excluding VAT.';
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total amount on the sales invoice including VAT.';
                }
                field("Amt. Ship. Not Inv. (LCY)"; Rec."Amt. Ship. Not Inv. (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sum, in LCY, for items that have been shipped but not yet been invoiced. The amount is calculated as Amount Including VAT x Qty. Shipped Not Invoiced / Quantity.';
                }
                field("Amt. Ship. Not Inv. (LCY) Base"; Rec."Amt. Ship. Not Inv. (LCY) Base")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sum, in LCY, for items that have been shipped but not yet been invoiced. The amount is calculated as Amount Including VAT x Qty. Shipped Not Invoiced / Quantity.';
                }
                field("Applies-to Doc. No."; Rec."Applies-to Doc. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the posted document that this document or journal line will be applied to when you post, for example to register payment.';
                }
                field("Applies-to Doc. Type"; Rec."Applies-to Doc. Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of the posted document that this document or journal line will be applied to when you post, for example to register payment.';
                }
                field("Applies-to ID"; Rec."Applies-to ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ID of entries that will be applied to when you choose the Apply Entries action.';
                }
                field("Approval Pending At"; Rec."Approval Pending At")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approval Pending At field.';
                }
                field("Approval Required"; Rec."Approval Required")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approval Required field.';
                }
                field("Approved By"; Rec."Approved By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approved By field.';
                }
                field("Archive Version"; Rec."Archive Version")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Archive Version field.';
                }
                field("Area"; Rec."Area")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the country or region of origin for the purpose of Intrastat reporting.';
                }
                field("Assessee Code"; Rec."Assessee Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Assessee Code field.';
                }
                field("Assigned User ID"; Rec."Assigned User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ID of the user who is responsible for the document.';
                }
                field(BD; Rec.BD)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BD field.';
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
                field("Bill Of Export Date"; Rec."Bill Of Export Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entry date defined in bill of export document.';
                }
                field("Bill Of Export No."; Rec."Bill Of Export No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bill of export number. It is a document number which is submitted to custom department .';
                }
                field("Bill-to Address"; Rec."Bill-to Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the address of the customer that you will send the invoice to.';
                }
                field("Bill-to Address 2"; Rec."Bill-to Address 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies an additional part of the billing address.';
                }
                field("Bill-to City"; Rec."Bill-to City")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the city of the billing address.';
                }
                field("Bill-to Contact"; Rec."Bill-to Contact")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the contact person at the billing address.';
                }
                field("Bill-to Contact No."; Rec."Bill-to Contact No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the contact person at the billing address.';
                }
                field("Bill-to Country/Region Code"; Rec."Bill-to Country/Region Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the country or region of the address.';
                }
                field("Bill-to County"; Rec."Bill-to County")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the county of the address.';
                }
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the customer that you send or sent the invoice or credit memo to.';
                }
                field("Bill-to Customer Templ. Code"; Rec."Bill-to Customer Templ. Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bill-to Customer Template Code field.';
                }
                field("Bill-to IC Partner Code"; Rec."Bill-to IC Partner Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bill-to IC Partner Code field.';
                }
                field("Bill-to Name"; Rec."Bill-to Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer to whom you will send the sales invoice, when different from the customer that you are selling to.';
                }
                field("Bill-to Name 2"; Rec."Bill-to Name 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bill-to Name 2 field.';
                }
                field("Bill-to Post Code"; Rec."Bill-to Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the postal code of the billing address.';
                }
                field("Blanket Order No."; Rec."Blanket Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Blanket Order No. field.';
                }
                field("Blanket Order No. Series"; Rec."Blanket Order No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Blanket Order No. Series field.';
                }
                field("Business Development"; Rec."Business Development")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Business Development field.';
                }
                field("Bypass Auto Order Process"; Rec."Bypass Auto Order Process")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bypass Auto Order Process field.';
                }
                field("C-Form Date"; Rec."C-Form Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the C-Form Date field.';
                }
                field("CD Applicable"; Rec."CD Applicable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CD Applicable field.';
                }
                field("CD Available for Utilisation"; Rec."CD Available for Utilisation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CD Available for Utilisation field.';
                }
                field("CD Availed from Utilisation"; Rec."CD Availed from Utilisation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CD Availed from Utilisation field.';
                }
                field(CKA; Rec.CKA)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CKA field.';
                }
                field("CKA Code"; Rec."CKA Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CKA Code field.';
                }
                field(COCO; Rec.COCO)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the COCO field.';
                }
                field("COCO Store"; Rec."COCO Store")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the COCO Store field.';
                }
                field("Calculate Discount"; Rec."Calculate Discount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Calculate Discount field.';
                }
                field("Calculate Insurance"; Rec."Calculate Insurance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Calculate Insurance field.';
                }
                field("Calculate Structure"; Rec."Calculate Structure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Calculate Structure field.';
                }
                field("Campaign No."; Rec."Campaign No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the campaign number the document is linked to.';
                }
                field("Cancellation Time"; Rec."Cancellation Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cancellation Time field.';
                }
                field("Canceller ID"; Rec."Canceller ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Canceller ID field.';
                }
                field("Combine Shipments"; Rec."Combine Shipments")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the order will be included when you use the Combine Shipments function.';
                }
                field(Comment; Rec.Comment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Comment field.';
                }
                field(Commitment; Rec.Commitment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Commitment field.';
                }
                field("Company Bank Account Code"; Rec."Company Bank Account Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bank account to use for bank information when the document is printed.';
                }
                field("Completely Shipped"; Rec."Completely Shipped")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether all the items on the order have been shipped or, in the case of inbound items, completely received.';
                }
                field("Compress Prepayment"; Rec."Compress Prepayment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that prepayments on the sales order are combined if they have the same general ledger account for prepayments or the same dimensions.';
                }
                field("Confirmed Desc"; Rec."Confirmed Desc")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Confirmed Desc field.';
                }
                field("Contribution Percentage"; Rec."Contribution Percentage")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Contribution Percentage field.';
                }
                field(Correction; Rec.Correction)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entry as a corrective entry. You can use the field if you need to post a corrective entry to a customer account. If you place a check mark in this field when posting a corrective entry, the system will post a negative debit instead of a credit or a negative credit instead of a debit. Correction flag does not affect how inventory reconciled with general ledger.';
                }
                field("Coupled to CRM"; Rec."Coupled to CRM")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that the sales order is coupled to an order in Dynamics 365 Sales.';
                }
                field("Credit Approved"; Rec."Credit Approved")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Credit Approved field.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the currency that is used on the entry.';
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
                field("Customer Disc. Group"; Rec."Customer Disc. Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Disc. Group field.';
                }
                field("Customer GST Reg. No."; Rec."Customer GST Reg. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the GST registration number of the customer specified on the Sales document.';
                }
                field("Customer Posting Group"; Rec."Customer Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s market type to link business transactions to.';
                }
                field("Customer Price Group"; Rec."Customer Price Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Price Group field.';
                }
                field("Customer Type"; Rec."Customer Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Type field.';
                }
                field("D1 Amount"; Rec."D1 Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the D1 Amount field.';
                }
                field("D2 Amount"; Rec."D2 Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the D2 Amount field.';
                }
                field("D3 Amount"; Rec."D3 Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the D3 Amount field.';
                }
                field("D4 Amount"; Rec."D4 Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the D4 Amount field.';
                }
                field("D6 Amount"; Rec."D6 Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the D6 Amount field.';
                }
                field("Date of Release"; Rec."Date of Release")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Release field.';
                }
                field("Date of Reopen"; Rec."Date of Reopen")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Reopen field.';
                }
                field("Dealer Code"; Rec."Dealer Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dealer Code field.';
                }
                field("Dealer's Salesperson Code"; Rec."Dealer's Salesperson Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dealer''s Salesperson Code field.';
                }
                field(Deleted; Rec.Deleted)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Deleted field.';
                }
                field("Despatch Remarks"; Rec."Despatch Remarks")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Despatch Remarks field.';
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dimension Set ID field.';
                }
                field("Direct Debit Mandate ID"; Rec."Direct Debit Mandate ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the direct-debit mandate that the customer has signed to allow direct debit collection of payments.';
                }
                field("Direct Not Approved"; Rec."Direct Not Approved")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Direct Not Approved field.';
                }
                field("Direct Open Order"; Rec."Direct Open Order")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Direct Open Order field.';
                }
                field("Discount Amount"; Rec."Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount Amount field.';
                }
                field("Discount Charges %"; Rec."Discount Charges %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount Charges % field.';
                }
                field("Distance (Km)"; Rec."Distance (Km)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the distance on the sales document.';
                }
                field("Doc. No. Occurrence"; Rec."Doc. No. Occurrence")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Doc. No. Occurrence field.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies when the sales invoice was created.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Type field.';
                }
                field("Driver Name"; Rec."Driver Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Driver Name field.';
                }
                field("Driver Phone No."; Rec."Driver Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Driver Phone No. field.';
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies when the sales invoice must be paid.';
                }
                field("E-Comm. Merchant Id"; Rec."E-Comm. Merchant Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the merchant ID provided to customers by their payment processor.';
                }
                field("E-Commerce Customer"; Rec."E-Commerce Customer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer number for which merchant id has to be recorded.';
                }
                field("E-Commerce Merchant Id"; Rec."E-Commerce Merchant Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the merchant ID provided to customers by their payment processor.';
                }
                field("E-Way Bill No."; Rec."E-Way Bill No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the E-Way Bill No. field.';
                }
                field("EU 3-Party Trade"; Rec."EU 3-Party Trade")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the transaction is related to trade with a third party within the EU.';
                }
                field("Elite Solution"; Rec."Elite Solution")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Elite Solution field.';
                }
                field("Email ID"; Rec."Email ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email ID field.';
                }
                field("Entry Date"; Rec."Entry Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry Date field.';
                }
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field.';
                }
                field("Estimated Date of Arrival"; Rec."Estimated Date of Arrival")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Estimated Date of Arrival field.';
                }
                field("Excise Structure"; Rec."Excise Structure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Excise Structure field.';
                }
                field("Exclude GST in TCS Base"; Rec."Exclude GST in TCS Base")
                {
                    ApplicationArea = All;
                    ToolTip = 'Select this field to exclude GST value in the TCS Base.';
                }
                field("Exit Point"; Rec."Exit Point")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the point of exit through which you ship the items out of your country/region, for reporting to Intrastat.';
                }
                field("External Document No."; Rec."External Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a document number that refers to the customer''s or vendor''s numbering system.';
                }
                field("Foreign Commission Agent"; Rec."Foreign Commission Agent")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Foreign Commission Agent field.';
                }
                field(GPS; Rec.GPS)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GPS field.';
                }
                field("GR Date"; Rec."GR Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GR Date field.';
                }
                field("GR No."; Rec."GR No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GR No. field.';
                }
                field("GR Value"; Rec."GR Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GR Value field.';
                }
                field("GST Bill-to State Code"; Rec."GST Bill-to State Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bill-to state code of the customer on the sales document.';
                }
                field("GST Customer Type"; Rec."GST Customer Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of the customer. For example, Registered, Unregistered, Export etc..';
                }
                // field("GST Group Code"; Rec."GST Group Code")    
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies the value of the GST Group Code field.';
                // }
                field("GST Invoice"; Rec."GST Invoice")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if GST is applicable.';
                }
                field("GST Reason Type"; Rec."GST Reason Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Reason Type field.';
                }
                field("GST Ship-to State Code"; Rec."GST Ship-to State Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ship-to state code of the customer on the sales document.';
                }
                field("GST Without Payment of Duty"; Rec."GST Without Payment of Duty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the return order is with or without payment of duty.';
                }
                field("GST-Ship to Customer Type"; Rec."GST-Ship to Customer Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST-Ship To Customer Type field.';
                }
                field("GST-Ship to Invoice Type"; Rec."GST-Ship to Invoice Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST-Ship To Invoice Type field.';
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gen. Bus. Posting Group field.';
                }
                field("Get Shipment Used"; Rec."Get Shipment Used")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Get Shipment Used field.';
                }
                field("Govt. Project Sales"; Rec."Govt. Project Sales")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Govt. Project Sales field.';
                }
                field("Govt./Private Sales Person"; Rec."Govt./Private Sales Person")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Govt./Private Sales Person field.';
                }
                field("Gross Wt (Ship)"; Rec."Gross Wt (Ship)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gross Wt (Ship) field.';
                }
                field("Gross Wt."; Rec."Gross Wt.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gross Wt. field.';
                }
                field("Group Code"; Rec."Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Group Code field.';
                }
                field("Group Code Check"; Rec."Group Code Check")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Group Code Check field.';
                }
                // field("HSN/SAC Code"; Rec."HSN/SAC Code")
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies the value of the HSN/SAC Code field.';
                // }
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
                field("Incoming Document Entry No."; Rec."Incoming Document Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the incoming document that this sales document is created for.';
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
                field("Inventory Approved"; Rec."Inventory Approved")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inventory Approved field.';
                }
                field("InventoryNot Directly Approved"; Rec."InventoryNot Directly Approved")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the InventoryNot Directly Approved field.';
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
                    ToolTip = 'Specifies a discount amount that is deducted from the value of the Total Incl. VAT field, based on sales lines where the Allow Invoice Disc. field is selected. You can enter or change the amount manually.';
                }
                field("Invoice Type"; Rec."Invoice Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Type of Invoice .';
                }
                field(IsTest; Rec.IsTest)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the IsTest field.';
                }
                field("Job Queue Entry ID"; Rec."Job Queue Entry ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Queue Entry ID field.';
                }
                field("Job Queue Status"; Rec."Job Queue Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the status of a job queue entry or task that handles the posting of sales return orders.';
                }
                field("Journal Templ. Name"; Rec."Journal Templ. Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the journal template in which the sales header is to be posted.';
                }
                field("LC Number"; Rec."LC Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the LC Number field.';
                }
                field("LR/RR Date"; Rec."LR/RR Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the lorry receipt date.';
                }
                field("LR/RR No."; Rec."LR/RR No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the lorry receipt number of the document.';
                }
                field("Language Code"; Rec."Language Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the language to be used on printouts for this document.';
                }
                field("Last Email Notif Cleared"; Rec."Last Email Notif Cleared")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Email Notif Cleared field.';
                }
                field("Last Email Sent Status"; Rec."Last Email Sent Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Email Sent Status field.';
                }
                field("Last Email Sent Time"; Rec."Last Email Sent Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Email Sent Time field.';
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
                field("Last Return Receipt No."; Rec."Last Return Receipt No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Return Receipt No. field.';
                }
                field("Last Shipment Date"; Rec."Last Shipment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Shipment Date field.';
                }
                field("Last Shipping No."; Rec."Last Shipping No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Shipping No. field.';
                }
                field("Late Order Shipping"; Rec."Late Order Shipping")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that the shipment of one or more lines has been delayed, or that the shipment date is before the work date.';
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line Amount field.';
                }
                field("Loading Copies"; Rec."Loading Copies")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loading Copies field.';
                }
                field("Loading Inspector"; Rec."Loading Inspector")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loading Inspector field.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the location from where inventory items to the customer on the sales document are to be shipped by default.';
                }
                field("Location GST Reg. No."; Rec."Location GST Reg. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the GST registration number of the Location specified on the Sales document.';
                }
                field("Location State Code"; Rec."Location State Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sate code mentioned of the location used in the transaction.';
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
                field("Make Order Date"; Rec."Make Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Make Order Date field.';
                }
                field("Mode of Transport"; Rec."Mode of Transport")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the transportation mode e.g. by road, by air etc.';
                }
                field("Nature of Supply"; Rec."Nature of Supply")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the nature of GST transaction. For example, B2B/B2C.';
                }
                field("Net Wt."; Rec."Net Wt.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Net Wt. field.';
                }
                field("New Status"; Rec."New Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the New Status field.';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the estimate.';
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
                    ToolTip = 'Specifies the number of archived versions for this document.';
                }
                field("No. of Containers"; Rec."No. of Containers")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. of Containers field.';
                }
                field("No. of Vehicle Notification"; Rec."No. of Vehicle Notification")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. of Vehicle Notification field.';
                }
                field("None"; Rec."None")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the None field.';
                }
                field("ORC Terms"; Rec."ORC Terms")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ORC Terms field.';
                }
                field("Ocean Freight"; Rec."Ocean Freight")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ocean Freight field.';
                }
                field("Old Order for Post"; Rec."Old Order for Post")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Old Order for Post field.';
                }
                field("On Hold"; Rec."On Hold")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the On Hold field.';
                }
                field("Opener ID"; Rec."Opener ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Opener ID field.';
                }
                field("Opportunity No."; Rec."Opportunity No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the opportunity that the sales quote is assigned to.';
                }
                field("Order Booked Date"; Rec."Order Booked Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Booked Date field.';
                }
                field("Order Change Remarks"; Rec."Order Change Remarks")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Change Remarks field.';
                }
                field("Order Class"; Rec."Order Class")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Class field.';
                }
                field("Order Created ID"; Rec."Order Created ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Created ID field.';
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date when the order was created.';
                }
                field("Order Date Time"; Rec."Order Date Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Date Time field.';
                }
                field("Outbound Whse. Handling Time"; Rec."Outbound Whse. Handling Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a date formula for the time it takes to get items ready to ship from this location. The time element is used in the calculation of the delivery date as follows: Shipment Date + Outbound Warehouse Handling Time = Planned Shipment Date + Shipping Time = Planned Delivery Date.';
                }
                field("Outstanding Amount"; Rec."Outstanding Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Amount field.';
                }
                field("Outstanding Qty"; Rec."Outstanding Qty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Qty field.';
                }
                field("PCH Code"; Rec."PCH Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PCH Code field.';
                }
                field("PMT Code"; Rec."PMT Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PMT Code field.';
                }
                field("PO No."; Rec."PO No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PO No. field.';
                }
                field("POS Out Of India"; Rec."POS Out Of India")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the place of supply of invoice is out of India.';
                }
                field("Package Tracking No."; Rec."Package Tracking No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the shipping agent''s package number.';
                }
                field(Pay; Rec.Pay)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pay field.';
                }
                field("Payment Date"; Rec."Payment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the payment date. For example, Before rate change/After rate change.';
                }
                field("Payment Date 3"; Rec."Payment Date 3")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Date 3 field.';
                }
                field("Payment Discount %"; Rec."Payment Discount %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the payment discount percentage that is granted if the customer pays on or before the date entered in the Pmt. Discount Date field. The discount percentage is specified in the Payment Terms Code field.';
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how to make payment, such as with bank transfer, cash, or check.';
                }
                field("Payment Service Set ID"; Rec."Payment Service Set ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Service Set ID field.';
                }
                field("Payment Terms"; Rec."Payment Terms")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Terms field.';
                }
                field("Payment Terms Code"; Rec."Payment Terms Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a formula that calculates the payment due date, payment discount date, and payment discount amount.';
                }
                field("Pmt. Discount Date"; Rec."Pmt. Discount Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date on which the amount in the entry must be paid for a payment discount to be granted.';
                }
                field("Post GST to Customer"; Rec."Post GST to Customer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the GST amount post to Customer';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date when the sales document was posted.';
                }
                field("Posting Description"; Rec."Posting Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies additional posting information for the document. After you post the document, the description can add detail to vendor and customer ledger entries.';
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
                    ToolTip = 'Specifies when the prepayment invoice for this sales order is due.';
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
                    ToolTip = 'Specifies the payment discount percent granted on the prepayment if the customer pays on or before the date entered in the Prepmt. Pmt. Discount Date field.';
                }
                field("Prepmt. Payment Terms Code"; Rec."Prepmt. Payment Terms Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code that represents the payment terms for prepayment invoices related to the sales document.';
                }
                field("Prepmt. Pmt. Discount Date"; Rec."Prepmt. Pmt. Discount Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the last date the customer can pay the prepayment invoice and still receive a payment discount on the prepayment amount.';
                }
                field("Prepmt. Posting Description"; Rec."Prepmt. Posting Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepmt. Posting Description field.';
                }
                field("Price Approved"; Rec."Price Approved")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Price Approved field.';
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
                field("Promised Delivery Date"; Rec."Promised Delivery Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date that you have promised to deliver the order, as a result of the Order Promising function.';
                }
                field("Qty in Sq. Mt."; Rec."Qty in Sq. Mt.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty in Sq. Mt. field.';
                }
                field("Qty. To Ship"; Rec."Qty. To Ship")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. To Ship field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
                field("Quote Accepted"; Rec."Quote Accepted")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the customer has accepted the quote or not.';
                }
                field("Quote Accepted Date"; Rec."Quote Accepted Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies when the client accepted the quote.';
                }
                field("Quote Date"; Rec."Quote Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quote Date field.';
                }
                field("Quote No."; Rec."Quote No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the sales quote that the sales order was created from. You can track the number to sales quote documents that you have printed, saved, or emailed.';
                }
                field("Quote Sent to Customer"; Rec."Quote Sent to Customer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies date and time of when the quote was sent to the customer.';
                }
                field("Quote Valid Until Date"; Rec."Quote Valid Until Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how long the quote is valid.';
                }
                field("RELEASING DATETIME"; Rec."RELEASING DATETIME")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RELEASING DATETIME field.';
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
                field("Reference Invoice No."; Rec."Reference Invoice No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Reference Invoice number.';
                }
                field("Releaser ID"; Rec."Releaser ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Releaser ID field.';
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
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Remarks field.';
                }
                field("Requested Delivery Date"; Rec."Requested Delivery Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date that the customer has asked for the order to be delivered.';
                }
                field(Reserve; Rec.Reserve)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reserve field.';
                }
                field("Reserved Qty"; Rec."Reserved Qty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reserved Qty field.';
                }
                field("Reserved Qty(CRT)"; Rec."Reserved Qty(CRT)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reserved Qty(CRT) field.';
                }
                field("Reserved Qty(SQM)"; Rec."Reserved Qty(SQM)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reserved Qty(SQM) field.';
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code of the responsibility center, such as a distribution hub, that is associated with the involved user, company, customer, or vendor.';
                }
                field(Retail; Rec.Retail)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Retail field.';
                }
                field("Retail Code"; Rec."Retail Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Retail Code field.';
                }
                field("Return Receipt No."; Rec."Return Receipt No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Receipt No. field.';
                }
                field("Return Receipt No. Series"; Rec."Return Receipt No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Receipt No. Series field.';
                }
                field("S1 Amount"; Rec."S1 Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the S1 Amount field.';
                }
                field("Sale Return Type"; Rec."Sale Return Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sale return type. For example, Sales cancellation';
                }
                field("Sales Order No"; Rec."Sales Order No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Order No field.';
                }
                field("Sales Order No."; Rec."Sales Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Order No. field.';
                }
                field("Sales Type"; Rec."Sales Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Type field.';
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the salesperson who is assigned to the customer.';
                }
                field("Salesperson Description"; Rec."Salesperson Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Salesperson Description field.';
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
                field(Selection1; Rec.Selection1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Selection1 field.';
                }
                field("Sell-to Address"; Rec."Sell-to Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the address where the customer is located.';
                }
                field("Sell-to Address 2"; Rec."Sell-to Address 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies additional address information.';
                }
                field("Sell-to City"; Rec."Sell-to City")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the address city.';
                }
                field("Sell-to Contact"; Rec."Sell-to Contact")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the contact person at the customer.';
                }
                field("Sell-to Contact No."; Rec."Sell-to Contact No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the contact person at the customer.';
                }
                field("Sell-to Country/Region Code"; Rec."Sell-to Country/Region Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the country or region of the address.';
                }
                field("Sell-to County"; Rec."Sell-to County")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the address county.';
                }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s name.';
                }
                field("Sell-to Customer Name 2"; Rec."Sell-to Customer Name 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sell-to Customer Name 2 field.';
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the customer associated with the sales return.';
                }
                field("Sell-to Customer Templ. Code"; Rec."Sell-to Customer Templ. Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the template to create a new customer';
                }
                field("Sell-to E-Mail"; Rec."Sell-to E-Mail")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the email address of the contact person that the sales document will be sent to.';
                }
                field("Sell-to IC Partner Code"; Rec."Sell-to IC Partner Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sell-to IC Partner Code field.';
                }
                field("Sell-to Phone No."; Rec."Sell-to Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the telephone number of the contact person that the sales document will be sent to.';
                }
                field("Sell-to Post Code"; Rec."Sell-to Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the postal code.';
                }
                field("Send IC Document"; Rec."Send IC Document")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Send IC Document field.';
                }
                field("Sent as Email"; Rec."Sent as Email")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sent as Email field.';
                }
                field(Ship; Rec.Ship)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ship field.';
                }
                field("Ship to Pin"; Rec."Ship to Pin")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ship to Pin field.';
                }
                field("Ship-to Address"; Rec."Ship-to Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the address that products on the sales document will be shipped to.';
                }
                field("Ship-to Address 2"; Rec."Ship-to Address 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies an additional part of the shipping address.';
                }
                field("Ship-to City"; Rec."Ship-to City")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the city of the shipping address.';
                }
                field("Ship-to Code"; Rec."Ship-to Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for another shipment address than the customer''s own address, which is entered by default.';
                }
                field("Ship-to Contact"; Rec."Ship-to Contact")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the contact person at the shipping address.';
                }
                field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the country or region of the address.';
                }
                field("Ship-to County"; Rec."Ship-to County")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the county of the address.';
                }
                field("Ship-to Customer"; Rec."Ship-to Customer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Ship to Customer code on the sales document.';
                }
                field("Ship-to GST Customer Type"; Rec."Ship-to GST Customer Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Ship to GST Customer Type mentioned on the sales document.';
                }
                field("Ship-to GST Reg. No."; Rec."Ship-to GST Reg. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ship to GST registration number of the customer specified on the Sales document.';
                }
                field("Ship-to Name"; Rec."Ship-to Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name that products on the sales document will be shipped to.';
                }
                field("Ship-to Name 2"; Rec."Ship-to Name 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ship-to Name 2 field.';
                }
                field("Ship-to Post Code"; Rec."Ship-to Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the postal code of the shipping address.';
                }
                field("Shipment Date"; Rec."Shipment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies when items on the document are shipped or were shipped. A shipment date is usually calculated from a requested delivery date plus lead time.';
                }
                field("Shipment Method Code"; Rec."Shipment Method Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how items on the sales document are shipped to the customer.';
                }
                field("Shipment Status"; Rec."Shipment Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipment Status field.';
                }
                field(Shipped; Rec.Shipped)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipped field.';
                }
                field("Shipped Not Invoiced"; Rec."Shipped Not Invoiced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipped Not Invoiced field.';
                }
                field("Shipping Advice"; Rec."Shipping Advice")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the customer accepts partial shipment of orders.';
                }
                field("Shipping Agent Code"; Rec."Shipping Agent Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies which shipping agent is used to transport the items on the sales document to the customer.';
                }
                field("Shipping Agent Service Code"; Rec."Shipping Agent Service Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies which shipping agent service is used to transport the items on the sales document to the customer.';
                }
                field("Shipping No."; Rec."Shipping No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipping No. field.';
                }
                field("Shipping No. Series"; Rec."Shipping No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipping No. Series field.';
                }
                field("Shipping Time"; Rec."Shipping Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how long it takes from when the items are shipped from the warehouse to when they are delivered.';
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
                field("State Description"; Rec."State Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the State Description field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the document is open, waiting to be approved, has been invoiced for prepayment, or has been released to the next stage of processing.';
                }
                field("Structure Freight Amount"; Rec."Structure Freight Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Structure Freight Amount field.';
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
                field("TCS On Collection Entry"; Rec."TCS On Collection Entry")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TCS On Collection Entry field.';
                }
                field("TDS Certificate Receivable"; Rec."TDS Certificate Receivable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Selected to allow calculating TDS for the customer.';
                }
                field("TPT Method"; Rec."TPT Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TPT Method field.';
                }
                field("Tax Area Code"; Rec."Tax Area Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the tax area code for the customer.';
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the sales invoice contains sales tax.';
                }
                field("Tax Registration No."; Rec."Tax Registration No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Tax Registration No. field.';
                }
                field("Time of Release"; Rec."Time of Release")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Time of Release field.';
                }
                field("Time of Removal"; Rec."Time of Removal")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the time of removal.';
                }
                field("Time of Reopen"; Rec."Time of Reopen")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Time of Reopen field.';
                }
                field("Tonnage of Vehicle placed"; Rec."Tonnage of Vehicle placed")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Tonnage of Vehicle placed field.';
                }
                field("Trade Discount"; Rec."Trade Discount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Trade Discount field.';
                }
                field(Trading; Rec.Trading)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if trading is applicable.';
                }
                field("Transaction Specification"; Rec."Transaction Specification")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a specification of the document''s transaction, for the purpose of reporting to INTRASTAT.';
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of transaction that the document represents, for the purpose of reporting to INTRASTAT.';
                }
                field("Transfer No."; Rec."Transfer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transfer No. field.';
                }
                field("Transport Method"; Rec."Transport Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the transport method, for the purpose of reporting to INTRASTAT.';
                }
                field("Transport Punch Date"; Rec."Transport Punch Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transport Punch Date field.';
                }
                field("Transporter Code"; Rec."Transporter Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transporter Code field.';
                }
                field("Transporter Name"; Rec."Transporter Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transporter Name field.';
                }
                field("Transporter's Name"; Rec."Transporter's Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transporter''s Name field.';
                }
                field("Truck No."; Rec."Truck No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Truck No. field.';
                }
                field(Updated; Rec.Updated)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Updated field.';
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
                    ToolTip = 'Specifies the customer''s VAT registration number for customers.';
                }
                field("VAT Reporting Date"; Rec."VAT Reporting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date used to include entries on VAT reports in a VAT period. This is either the date that the document was created or posted, depending on your setting on the General Ledger Setup page.';
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
                field("Work Description"; Rec."Work Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Description field.';
                }
                field("Your Reference"; Rec."Your Reference")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s reference. The content will be printed on sales documents.';
                }
                field("ZH Code"; Rec."ZH Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ZH Code field.';
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
