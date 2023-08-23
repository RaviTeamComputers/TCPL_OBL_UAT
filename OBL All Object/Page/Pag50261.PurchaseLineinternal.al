page 50261 "Purchase Line internal"
{
    ApplicationArea = All;
    Caption = 'Purchase Line internal';
    PageType = List;
    SourceTable = "Purchase Line";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("A. Rcd. Not Inv. Ex. VAT (LCY)"; Rec."A. Rcd. Not Inv. Ex. VAT (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the A. Rcd. Not Inv. Ex. VAT (LCY) field.';
                }
                field("Accepted Quantity"; Rec."Accepted Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Accepted Quantity field.';
                }
                field("Act Applicable"; Rec."Act Applicable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specify the tax rates prescribed under the IT Act or DATA on the TDS entry.';
                }
                field("Actual Quantity"; Rec."Actual Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Actual Quantity field.';
                }
                field("Allow Invoice Disc."; Rec."Allow Invoice Disc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if invoice discount is allowed in this line.';
                }
                field("Allow Item Charge Assignment"; Rec."Allow Item Charge Assignment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if item charge assignment is allowed.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sum of amounts in the Line Amount field on the purchase order lines.';
                }
                field("Amount (FCY)"; Rec."Amount (FCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount (FCY) field.';
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount Including VAT field.';
                }
                field("Amt. Rcd. Not Invoiced"; Rec."Amt. Rcd. Not Invoiced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amt. Rcd. Not Invoiced field.';
                }
                field("Amt. Rcd. Not Invoiced (LCY)"; Rec."Amt. Rcd. Not Invoiced (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sum, in LCY, for items that have been received but have not yet been invoiced. The value in the Amt. Rcd. Not Invoiced (LCY) field is used for entries in the Purchase Line table of document type Order to calculate and update the contents of this field.';
                }
                field("Appl.-to Item Entry"; Rec."Appl.-to Item Entry")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the apply to item entry this order is linked to.';
                }
                field("Applies-to ID (Delivery)"; Rec."Applies-to ID (Delivery)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the applied entry number.';
                }
                field("Applies-to ID (Receipt)"; Rec."Applies-to ID (Receipt)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the applied entry number.';
                }
                field("Area"; Rec."Area")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Area field.';
                }
                field("Attached Doc Count"; Rec."Attached Doc Count")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of attachments.';
                }
                field("Attached Lines Count"; Rec."Attached Lines Count")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of non-inventory product lines attached to the purchase line.';
                }
                field("Attached to Line No."; Rec."Attached to Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the line number to which this purchase line is attached.';
                }
                field("Batch No."; Rec."Batch No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Batch No. field.';
                }
                field("Bill to-Location(POS)"; Rec."Bill to-Location(POS)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bill to-Location(POS) field.';
                }
                field("Bin Code"; Rec."Bin Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bin code of this document.';
                }
                field("Blanket Order Line No."; Rec."Blanket Order Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the blanket order line number this order is linked to.';
                }
                field("Blanket Order No."; Rec."Blanket Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the blanket order number this order is linked to.';
                }
                field("Budgeted FA No."; Rec."Budgeted FA No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of a fixed asset with the Budgeted Asset check box selected. When you post the journal or document line, an additional entry is created for the budgeted fixed asset where the amount has the opposite sign.';
                }
                field("Buy-From GST Registration No"; Rec."Buy-From GST Registration No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Buy-From GST Registration No field.';
                }
                field("Buy-from Vendor No."; Rec."Buy-from Vendor No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the subcontracting vendor number.';
                }
                field("Capex No."; Rec."Capex No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Capex No. field.';
                }
                field("Challan Quantity"; Rec."Challan Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Challan Quantity field.';
                }
                field("Completely Received"; Rec."Completely Received")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Completely Received field.';
                }
                field("Component Item No."; Rec."Component Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Component Item No. field.';
                }
                field("Copied From Posted Doc."; Rec."Copied From Posted Doc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Copied From Posted Doc. field.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code of the currency of the amounts on the purchase line.';
                }
                field(Currency1; Rec.Currency1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Currency1 field.';
                }
                field("Custom Duty Amount"; Rec."Custom Duty Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the custom duty amount  on the transfer line.';
                }
                field("Deferral Code"; Rec."Deferral Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the deferral template that governs how expenses paid with this purchase document are deferred to the different accounting periods when the expenses were incurred.';
                }
                field("Deliver Comp. For"; Rec."Deliver Comp. For")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of finished goods for which components need to be sent.';
                }
                field("Delivery Challan Date"; Rec."Delivery Challan Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the posting date of delivery challan.';
                }
                field("Delivery Challan Posted"; Rec."Delivery Challan Posted")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of delivery challan posted.';
                }
                field("Depr. Acquisition Cost"; Rec."Depr. Acquisition Cost")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if, when this line was posted, the additional acquisition cost posted on the line was depreciated in proportion to the amount by which the fixed asset had already been depreciated.';
                }
                field("Depr. until FA Posting Date"; Rec."Depr. until FA Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if depreciation was calculated until the FA posting date of the line.';
                }
                field("Depreciation Book Code"; Rec."Depreciation Book Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the depreciation book to which the line will be posted if you have selected Fixed Asset in the Type field for this line.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description.';
                }
                field("Description 2"; Rec."Description 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies information in addition to the description.';
                }
                field("Diff Qty."; Rec."Diff Qty.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Diff Qty. field.';
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dimension Set ID field.';
                }
                field("Direct Unit Cost"; Rec."Direct Unit Cost")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the direct unit cost of this line.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Date field.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the document number.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of document that you are about to create.';
                }
                field("Drop Shipment"; Rec."Drop Shipment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the if drop shipment is applicable in this line.';
                }
                field("Duplicate in Depreciation Book"; Rec."Duplicate in Depreciation Book")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a depreciation book code if you want the journal line to be posted to that depreciation book, as well as to the depreciation book in the Depreciation Book Code field.';
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ending Date field.';
                }
                field("Entry Point"; Rec."Entry Point")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry Point field.';
                }
                field("Excise Amount Per Unit"; Rec."Excise Amount Per Unit")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Excise Amount Per Unit field.';
                }
                field(Exempted; Rec.Exempted)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the service is exempted from GST.';
                }
                field("Expected Receipt Date"; Rec."Expected Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the expected receipt date of this order.';
                }
                field("FA Posting Date"; Rec."FA Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the FA posting date if you have selected Fixed Asset in the Type field for this line.';
                }
                field("FA Posting Type"; Rec."FA Posting Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date that will be used on related fixed asset ledger entries.';
                }
                field(Finished; Rec.Finished)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the subcontrcting order is in finished state.';
                }
                field("GST Assessable Value"; Rec."GST Assessable Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the assessable value on which GST will be calculated in case of import purchase.';
                }
                field("GST Credit"; Rec."GST Credit")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the GST Credit has to be availed or not.';
                }
                field("GST Group Code"; Rec."GST Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the GST Group code for the calculation of GST on Transaction line.';
                }
                field("GST Group Type"; Rec."GST Group Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the GST group is assigned for goods or service.';
                }
                field("GST Jurisdiction Type"; Rec."GST Jurisdiction Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type related to GST jurisdiction. For example, interstate/intrastate.';
                }
                field("GST Reverse Charge"; Rec."GST Reverse Charge")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Reverse Charge field.';
                }
                field("GST Rounding Line"; Rec."GST Rounding Line")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Rounding Line field.';
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the GST specification of the involved customer or vendor to link transactions made for this record with the appropriate general ledger account according to the GST posting setup.';
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the GST specification of the involved item or resource to link transactions made for this record with the appropriate general ledger account according to the GST posting setup.';
                }
                field("Gross Weight"; Rec."Gross Weight")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the gross weight of one unit of the item. In the purchase statistics window, the gross weight on the line is included in the total gross weight of all the lines for the particular purchase document.';
                }
                field("HSN/SAC Code"; Rec."HSN/SAC Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the HSN/SAC code for the calculation of GST on Transaction line.';
                }
                field("IC Item Reference No."; Rec."IC Item Reference No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the IC Item Reference No. field.';
                }
                field("IC Partner Code"; Rec."IC Partner Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the IC partner code this order is linked to.';
                }
                field("IC Partner Ref. Type"; Rec."IC Partner Ref. Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the IC partner reference number this order is linked to.';
                }
                field("IC Partner Reference"; Rec."IC Partner Reference")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the IC pPartner reference this order is linked to.';
                }
                field("ITC Type"; Rec."ITC Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ITC Type field.';
                }
                field("Inbound Whse. Handling Time"; Rec."Inbound Whse. Handling Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Inbound Warehouse Handling Time.';
                }
                field("Indent Date"; Rec."Indent Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Indent Date field.';
                }
                field("Indent Line No."; Rec."Indent Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Indent Line No. field.';
                }
                field("Indent No."; Rec."Indent No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Indent No. field.';
                }
                field("Indent Original Quantity"; Rec."Indent Original Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Indent Original Quantity field.';
                }
                field("Indirect Cost %"; Rec."Indirect Cost %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the indirect unit cost % of this line.';
                }
                field("Insurance No."; Rec."Insurance No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the insurance number to post an insurance coverage entry to.';
                }
                field("Inv. Disc. Amount to Invoice"; Rec."Inv. Disc. Amount to Invoice")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the actual invoice discount amount that will be posted for the line on the invoice.';
                }
                field("Inv. Discount Amount"; Rec."Inv. Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the invoice discount amount of this line.';
                }
                field("Item Category Code"; Rec."Item Category Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Category Code field.';
                }
                field("Item Charge Qty. to Handle"; Rec."Item Charge Qty. to Handle")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many items the item charge will be assigned to on the line. It can be either equal to Qty. to Assign or to zero. If it is zero, the item charge will not be assigned to the line.';
                }
                field("Item No "; Rec."Item No ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item No  field.';
                }
                field("Item Reference No."; Rec."Item Reference No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the item reference number is linked with this line.';
                }
                field("Item Reference Type"; Rec."Item Reference Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies item reference type.';
                }
                field("Item Reference Type No."; Rec."Item Reference Type No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies item reference type number.';
                }
                field("Item Reference Unit of Measure"; Rec."Item Reference Unit of Measure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies item reference unit of measure code.';
                }
                field("Job Currency Code"; Rec."Job Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Currency Code field.';
                }
                field("Job Currency Factor"; Rec."Job Currency Factor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Currency Factor field.';
                }
                field("Job Line Amount"; Rec."Job Line Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job line amount of this order.';
                }
                field("Job Line Amount (LCY)"; Rec."Job Line Amount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job line amount (LCY) of this order.';
                }
                field("Job Line Disc. Amount (LCY)"; Rec."Job Line Disc. Amount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job line discount amount (LCY) of this order.';
                }
                field("Job Line Discount %"; Rec."Job Line Discount %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job line discount % of this order.';
                }
                field("Job Line Discount Amount"; Rec."Job Line Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job line discount amount of this order.';
                }
                field("Job Line Type"; Rec."Job Line Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job line type this order is linked to.';
                }
                field("Job No."; Rec."Job No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job number this order is linked to.';
                }
                field("Job Planning Line No."; Rec."Job Planning Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job planning line number that the usage should be linked to when the job journal is posted. You can only link to job planning lines that have the Apply Usage Link option enabled.';
                }
                field("Job Remaining Qty."; Rec."Job Remaining Qty.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity that remains to complete a job.';
                }
                field("Job Remaining Qty. (Base)"; Rec."Job Remaining Qty. (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Remaining Qty. (Base) field.';
                }
                field("Job Task No."; Rec."Job Task No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job task number this order is linked to.';
                }
                field("Job Total Price"; Rec."Job Total Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job total price of this order.';
                }
                field("Job Total Price (LCY)"; Rec."Job Total Price (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job total price (LCY) of this order.';
                }
                field("Job Unit Price"; Rec."Job Unit Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job unit price of this order.';
                }
                field("Job Unit Price (LCY)"; Rec."Job Unit Price (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job unit price (LCY) of this order.';
                }
                field("Lead Time Calculation"; Rec."Lead Time Calculation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the lead time calculation of this order.';
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the line amount of this line.';
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the line discount % of this line.';
                }
                field("Line Discount Amount"; Rec."Line Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the line discount amount of this line.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the line number of document.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the location code of this document.';
                }
                field("MPS Order"; Rec."MPS Order")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the MPS Order field.';
                }
                field("Main Location"; Rec."Main Location")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Main Location field.';
                }
                field("Maintenance Code"; Rec."Maintenance Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Maintenance Code field.';
                }
                field(Make; Rec.Make)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Make field.';
                }
                field(NOE; Rec.NOE)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the NOE field.';
                }
                field("Nature of Remittance"; Rec."Nature of Remittance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specify the type of remittance deductee deals with.';
                }
                field("Net Weight"; Rec."Net Weight")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the net weight of one unit of the item. In the purchase statistics window, the net weight on the line is included in the total net weight of all the lines for the particular purchase document.';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the subcontracting order.';
                }
                field("Non-GST Line"; Rec."Non-GST Line")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Non-GST Line field.';
                }
                field(Nonstock; Rec.Nonstock)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the item of this line is non stock item';
                }
                field("Old Pending Qty"; Rec."Old Pending Qty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Old Pending Qty field.';
                }
                field("Operation No."; Rec."Operation No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the operation number linked with the subcontracting order.';
                }
                field("Order Address Code"; Rec."Order Address Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Address Code field.';
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the order date of this order.';
                }
                field("Order Line No."; Rec."Order Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Line No. field.';
                }
                field("Order No."; Rec."Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order No. field.';
                }
                field("Orient MRP"; Rec."Orient MRP")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Orient MRP field.';
                }
                field("Original PO Qty"; Rec."Original PO Qty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Original PO Qty field.';
                }
                field("Outstanding Amount"; Rec."Outstanding Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Amount field.';
                }
                field("Outstanding Amount (LCY)"; Rec."Outstanding Amount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the amount for the items on the order that have not yet been received in LCY.';
                }
                field("Outstanding Amt. Ex. VAT (LCY)"; Rec."Outstanding Amt. Ex. VAT (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Amt. Ex. VAT (LCY) field.';
                }
                field("Outstanding Qty. (Base)"; Rec."Outstanding Qty. (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the outstanding quantity expressed in the base units of measure.';
                }
                field("Outstanding Quantity"; Rec."Outstanding Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units on the order line have not yet been received.';
                }
                field("Over-Receipt Approval Status"; Rec."Over-Receipt Approval Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Over-Receipt Approval Status field.';
                }
                field("Over-Receipt Code"; Rec."Over-Receipt Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies over-receipt code.';
                }
                field("Over-Receipt Quantity"; Rec."Over-Receipt Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies over-receipt quantity.';
                }
                field("Overhead Rate"; Rec."Overhead Rate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overhead Rate field.';
                }
                field("PO No."; Rec."PO No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PO No. field.';
                }
                field("Pay-to Vendor No."; Rec."Pay-to Vendor No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pay-to Vendor No. field.';
                }
                field("Planned Receipt Date"; Rec."Planned Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the planned receipt date of this order.';
                }
                field("Planning Flexibility"; Rec."Planning Flexibility")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the planning flexibility of this order.';
                }
                field("Pmt. Discount Amount"; Rec."Pmt. Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pmt. Discount Amount field.';
                }
                field("Possible Cenvat"; Rec."Possible Cenvat")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Possible Cenvat field.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the posting date of the entry.';
                }
                field("Posting Date 1"; Rec."Posting Date 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Date 1 field.';
                }
                field("Posting Group"; Rec."Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Group field.';
                }
                field("Prepayment %"; Rec."Prepayment %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the prepayment % of this line.';
                }
                field("Prepayment Amount"; Rec."Prepayment Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepayment Amount field.';
                }
                field("Prepayment Line"; Rec."Prepayment Line")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepayment Line field.';
                }
                field("Prepayment Tax Area Code"; Rec."Prepayment Tax Area Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepayment Tax Area Code field.';
                }
                field("Prepayment Tax Group Code"; Rec."Prepayment Tax Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepayment Tax Group Code field.';
                }
                field("Prepayment Tax Liable"; Rec."Prepayment Tax Liable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepayment Tax Liable field.';
                }
                field("Prepayment VAT %"; Rec."Prepayment VAT %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepayment VAT % field.';
                }
                field("Prepayment VAT Difference"; Rec."Prepayment VAT Difference")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepayment VAT Difference field.';
                }
                field("Prepayment VAT Identifier"; Rec."Prepayment VAT Identifier")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepayment VAT Identifier field.';
                }
                field("Prepmt Amt Deducted"; Rec."Prepmt Amt Deducted")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the prepayment amount deducted.';
                }
                field("Prepmt Amt to Deduct"; Rec."Prepmt Amt to Deduct")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the prepayment amount needs to be deducted.';
                }
                field("Prepmt VAT Diff. Deducted"; Rec."Prepmt VAT Diff. Deducted")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepmt VAT Diff. Deducted field.';
                }
                field("Prepmt VAT Diff. to Deduct"; Rec."Prepmt VAT Diff. to Deduct")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepmt VAT Diff. to Deduct field.';
                }
                field("Prepmt. Amount Inv. (LCY)"; Rec."Prepmt. Amount Inv. (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepmt. Amount Inv. (LCY) field.';
                }
                field("Prepmt. Amount Inv. Incl. VAT"; Rec."Prepmt. Amount Inv. Incl. VAT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepmt. Amount Inv. Incl. VAT field.';
                }
                field("Prepmt. Amt. Incl. VAT"; Rec."Prepmt. Amt. Incl. VAT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepmt. Amt. Incl. VAT field.';
                }
                field("Prepmt. Amt. Inv."; Rec."Prepmt. Amt. Inv.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if this is prepayment amount invoice line.';
                }
                field("Prepmt. Line Amount"; Rec."Prepmt. Line Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the prepayment amount of the line in the currency of the purchase document if a prepayment percentage is specified for the purchase line.';
                }
                field("Prepmt. Pmt. Discount Amount"; Rec."Prepmt. Pmt. Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepmt. Pmt. Discount Amount field.';
                }
                field("Prepmt. VAT Amount Inv. (LCY)"; Rec."Prepmt. VAT Amount Inv. (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepmt. VAT Amount Inv. (LCY) field.';
                }
                field("Prepmt. VAT Base Amt."; Rec."Prepmt. VAT Base Amt.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepmt. VAT Base Amt. field.';
                }
                field("Prepmt. VAT Calc. Type"; Rec."Prepmt. VAT Calc. Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prepmt. VAT Calc. Type field.';
                }
                field("Price Calculation Method"; Rec."Price Calculation Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Price Calculation Method field.';
                }
                field("Prod. Order Line No."; Rec."Prod. Order Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the released production order line number.';
                }
                field("Prod. Order No."; Rec."Prod. Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the production order number this order is linked to.';
                }
                field("Profit %"; Rec."Profit %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Profit % field.';
                }
                field("Promised Receipt Date"; Rec."Promised Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the promised receipt date of this order.';
                }
                field("Purchase Header Status"; Rec."Purchase Header Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Purchase Header Status field.';
                }
                field("Purchasing Code"; Rec."Purchasing Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Purchasing Code field.';
                }
                field("Qty. Assigned"; Rec."Qty. Assigned")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity assigned.';
                }
                field("Qty. Invoiced (Base)"; Rec."Qty. Invoiced (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. Invoiced (Base) field.';
                }
                field("Qty. Rcd. Not Invoiced"; Rec."Qty. Rcd. Not Invoiced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. Rcd. Not Invoiced field.';
                }
                field("Qty. Rcd. Not Invoiced (Base)"; Rec."Qty. Rcd. Not Invoiced (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. Rcd. Not Invoiced (Base) field.';
                }
                field("Qty. Received (Base)"; Rec."Qty. Received (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. Received (Base) field.';
                }
                field("Qty. Rejected (C.E.)"; Rec."Qty. Rejected (C.E.)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of finished item that has been returned to subcontracting vendor. Expense will be borne by the company.';
                }
                field("Qty. Rejected (Rework)"; Rec."Qty. Rejected (Rework)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the rejected quantity that has been sent for rework.';
                }
                field("Qty. Rejected (V.E.)"; Rec."Qty. Rejected (V.E.)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the rejected finished material, for which expenses will be borne by the customer.';
                }
                field("Qty. Rounding Precision"; Rec."Qty. Rounding Precision")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. Rounding Precision field.';
                }
                field("Qty. Rounding Precision (Base)"; Rec."Qty. Rounding Precision (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. Rounding Precision (Base) field.';
                }
                field("Qty. per Unit of Measure"; Rec."Qty. per Unit of Measure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. per Unit of Measure field.';
                }
                field("Qty. to Assign"; Rec."Qty. to Assign")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity that needs to be assigned.';
                }
                field("Qty. to Invoice"; Rec."Qty. to Invoice")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity that needs to be invoiced.';
                }
                field("Qty. to Invoice (Base)"; Rec."Qty. to Invoice (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. to Invoice (Base) field.';
                }
                field("Qty. to Receive"; Rec."Qty. to Receive")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity that has to be received form vendor.';
                }
                field("Qty. to Receive (Base)"; Rec."Qty. to Receive (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. to Receive (Base) field.';
                }
                field("Qty. to Reject (C.E.)"; Rec."Qty. to Reject (C.E.)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of finished item that needs to be returned to subcontracting vendor. Expense will be borne by the company.';
                }
                field("Qty. to Reject (Rework)"; Rec."Qty. to Reject (Rework)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity that need to be rejected and will be sent for rework.';
                }
                field("Qty. to Reject (V.E.)"; Rec."Qty. to Reject (V.E.)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the rejected finished material, for which expenses will be borne by the vendor.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the to total quantity of ordered finished material.';
                }
                field("Quantity (Base)"; Rec."Quantity (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity (Base) field.';
                }
                field("Quantity Invoiced"; Rec."Quantity Invoiced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity invoiced.';
                }
                field("Quantity Received"; Rec."Quantity Received")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of finished material received from vendor.';
                }
                field("Recalculate Invoice Disc."; Rec."Recalculate Invoice Disc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Recalculate Invoice Disc. field.';
                }
                field("Receipt Date"; Rec."Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Receipt Date field.';
                }
                field("Receipt Line No."; Rec."Receipt Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Receipt Line No. field.';
                }
                field("Receipt No."; Rec."Receipt No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Receipt No. field.';
                }
                field("Ref Code"; Rec."Ref Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ref Code field.';
                }
                field("Ref. Rate"; Rec."Ref. Rate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ref. Rate field.';
                }
                field("Rejected Quantity"; Rec."Rejected Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rejected Quantity field.';
                }
                field("Rejection Reason Code"; Rec."Rejection Reason Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rejection Reason Code field.';
                }
                field("Released Production Order"; Rec."Released Production Order")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Released Production Order field.';
                }
                field("Requested Receipt Date"; Rec."Requested Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the requested receipt date of this order.';
                }
                field("Reserved Qty. (Base)"; Rec."Reserved Qty. (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the reserved quantity of the item expressed in base units of measure.';
                }
                field("Reserved Quantity"; Rec."Reserved Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the reserved quantity of this line.';
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Responsibility Center field.';
                }
                field("Ret. Qty. Shpd Not Invd.(Base)"; Rec."Ret. Qty. Shpd Not Invd.(Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ret. Qty. Shpd Not Invd.(Base) field.';
                }
                field("Return Qty. Shipped"; Rec."Return Qty. Shipped")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units of the item on the line have been posted as shipped.';
                }
                field("Return Qty. Shipped (Base)"; Rec."Return Qty. Shipped (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Qty. Shipped (Base) field.';
                }
                field("Return Qty. Shipped Not Invd."; Rec."Return Qty. Shipped Not Invd.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Qty. Shipped Not Invd. field.';
                }
                field("Return Qty. to Ship"; Rec."Return Qty. to Ship")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of items that remains to be shipped.';
                }
                field("Return Qty. to Ship (Base)"; Rec."Return Qty. to Ship (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Qty. to Ship (Base) field.';
                }
                field("Return Reason Code"; Rec."Return Reason Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the return reason code this order is linked to.';
                }
                field("Return Shipment Line No."; Rec."Return Shipment Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Shipment Line No. field.';
                }
                field("Return Shipment No."; Rec."Return Shipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Shipment No. field.';
                }
                field("Return Shpd. Not Invd."; Rec."Return Shpd. Not Invd.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Shpd. Not Invd. field.';
                }
                field("Return Shpd. Not Invd. (LCY)"; Rec."Return Shpd. Not Invd. (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Shpd. Not Invd. (LCY) field.';
                }
                field("Returns Deferral Start Date"; Rec."Returns Deferral Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the starting date of the returns deferral period.';
                }
                field("Routing No."; Rec."Routing No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Routing No. field.';
                }
                field("Routing Reference No."; Rec."Routing Reference No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Routing Reference No. field.';
                }
                field("Safety Lead Time"; Rec."Safety Lead Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Safety Lead Time field.';
                }
                field("Sales Order Line No."; Rec."Sales Order Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Order Line No. field.';
                }
                field("Sales Order No."; Rec."Sales Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Order No. field.';
                }
                field("Salvage Value"; Rec."Salvage Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Salvage Value field.';
                }
                field("Selection."; Rec."Selection.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Selection. field.';
                }
                field(SendForRework; Rec.SendForRework)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity send to rework';
                }
                field("Shortage CRN"; Rec."Shortage CRN")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shortage CRN field.';
                }
                field("Shortage Quantity"; Rec."Shortage Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shortage Quantity field.';
                }
                field("Shortage Reason Code"; Rec."Shortage Reason Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shortage Reason Code field.';
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the shortcut dimension 1 code this order is linked to.';
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the shortcut dimension 2 code this order is linked to.';
                }
                field("Source Document No."; Rec."Source Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Source Document No. field.';
                }
                field("Source Document Type"; Rec."Source Document Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Source Document Type field.';
                }
                field("Source Order No."; Rec."Source Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Source Order No. field.';
                }
                field("Special Order"; Rec."Special Order")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Special Order field.';
                }
                field("Special Order Sales Line No."; Rec."Special Order Sales Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Special Order Sales Line No. field.';
                }
                field("Special Order Sales No."; Rec."Special Order Sales No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Special Order Sales No. field.';
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Starting Date field.';
                }
                field("State Code"; Rec."State Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the State Code field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the status of the document.';
                }
                field(SubConReceive; Rec.SubConReceive)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SubConReceive field.';
                }
                field(SubConSend; Rec.SubConSend)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the subcontracting order to send to vendor location';
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
                field("Subcon. Receiving"; Rec."Subcon. Receiving")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subcon. Receiving field.';
                }
                field(Subcontracting; Rec.Subcontracting)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the order is subcontracting order';
                }
                field(Subtype; Rec.Subtype)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subtype field.';
                }
                field(Supplementary; Rec.Supplementary)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Supplementary field.';
                }
                field("System-Created Entry"; Rec."System-Created Entry")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the System-Created Entry field.';
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
                field("TDS Section Code"; Rec."TDS Section Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Section Codes as per the Income Tax Act 1961 for e tds returns';
                }
                field("Tax Area Code"; Rec."Tax Area Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the tax area that is used to calculate and post sales tax.';
                }
                field("Tax Group Code"; Rec."Tax Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the tax group code of this line.';
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if this vendor charges you sales tax for purchases.';
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
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the document type of this document.';
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Cost field.';
                }
                field("Unit Cost (LCY)"; Rec."Unit Cost (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unit cost (LCY) of this line.';
                }
                field("Unit Price (FCY)"; Rec."Unit Price (FCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Price (FCY) Per Sq.Mt. field.';
                }
                field("Unit Price (LCY)"; Rec."Unit Price (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unit price (LCY) of this line.';
                }
                field("Unit Volume"; Rec."Unit Volume")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the volume of one unit of the item. In the purchase statistics window, the volume of one unit of the item on the line is included in the total volume of all the lines for the particular purchase document.';
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unit of measure of the item of this line.';
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unit of measure code of the item of this line.';
                }
                field("Units per Parcel"; Rec."Units per Parcel")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of units per parcel of the item. In the purchase statistics window, the number of units per parcel on the line helps to determine the total number of units for all the lines for the particular purchase document.';
                }
                field("Use Duplication List"; Rec."Use Duplication List")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies, if the type is Fixed Asset, that information on the line is to be posted to all the assets defined depreciation books. ';
                }
                field("Use Tax"; Rec."Use Tax")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a U.S. sales tax that is paid on items purchased by a company that are used by the company, instead of being sold to a customer.';
                }
                field("VAT %"; Rec."VAT %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT % field.';
                }
                field("VAT Base Amount"; Rec."VAT Base Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Base Amount field.';
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor''s VAT specification to link transactions made for this vendor with the appropriate general ledger account according to the VAT posting setup.';
                }
                field("VAT Calculation Type"; Rec."VAT Calculation Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Calculation Type field.';
                }
                field("VAT Difference"; Rec."VAT Difference")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Difference field.';
                }
                field("VAT Identifier"; Rec."VAT Identifier")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Identifier field.';
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the VAT product posting group of the item this order is linked to.';
                }
                field("Variant Code"; Rec."Variant Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the variant code of the item of this line.';
                }
                field("Vendor Item No."; Rec."Vendor Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Item No. field.';
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Name field.';
                }
                field("Vendor Shipment No."; Rec."Vendor Shipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor shipment number.';
                }
                field("Whse. Outstanding Qty. (Base)"; Rec."Whse. Outstanding Qty. (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the warehouse outstanding quantity (Base).';
                }
                field("Work Center No."; Rec."Work Center No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the work center number linked with the subcontracting order.';
                }
                field("Work Tax Nature Of Deduction"; Rec."Work Tax Nature Of Deduction")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Tax Nature Of Deduction field.';
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
