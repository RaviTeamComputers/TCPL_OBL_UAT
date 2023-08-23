page 50263 "Purch. Rcpt. Line internal"
{
    ApplicationArea = All;
    Caption = 'Purch. Rcpt. Line internal';
    PageType = List;
    SourceTable = "Purch. Rcpt. Line";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Accepted Qunatity"; Rec."Accepted Qunatity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Accepted Qunatity field.';
                }
                field("Actual Quantity"; Rec."Actual Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Actual Quantity field.';
                }
                field("Allow Invoice Disc."; Rec."Allow Invoice Disc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Allow Invoice Disc. field.';
                }
                field("Appl.-to Item Entry"; Rec."Appl.-to Item Entry")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the item ledger entry that the document or journal line is applied to.';
                }
                field("Area"; Rec."Area")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Area field.';
                }
                field("Attached to Line No."; Rec."Attached to Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Attached to Line No. field.';
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
                    ToolTip = 'Specifies the bin where the items are picked or put away.';
                }
                field("Blanket Order Line No."; Rec."Blanket Order Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the blanket order line that the record originates from.';
                }
                field("Blanket Order No."; Rec."Blanket Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the blanket order that the record originates from.';
                }
                field("Budgeted FA No."; Rec."Budgeted FA No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Budgeted FA No. field.';
                }
                field("Buy-From GST Registration No"; Rec."Buy-From GST Registration No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Buy-From GST Registration No field.';
                }
                field("Buy-from Vendor No."; Rec."Buy-from Vendor No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the vendor who delivered the items.';
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
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                }
                field(Correction; Rec.Correction)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entry as a corrective entry. You can use the field if you need to post a corrective entry to an account.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the currency that is used on the entry.';
                }
                field("Custom Duty Amount"; Rec."Custom Duty Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Custom Duty Amount field.';
                }
                field("Depr. Acquisition Cost"; Rec."Depr. Acquisition Cost")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Depr. Acquisition Cost field.';
                }
                field("Depr. until FA Posting Date"; Rec."Depr. until FA Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Depr. until FA Posting Date field.';
                }
                field("Depreciation Book Code"; Rec."Depreciation Book Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Depreciation Book Code field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a description of additional receipts posted.';
                }
                field("Description 2"; Rec."Description 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies information in addition to the description.';
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dimension Set ID field.';
                }
                field("Direct Unit Cost"; Rec."Direct Unit Cost")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the cost of one unit of the selected item or resource.';
                }
                field("Document Id"; Rec."Document Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Id field.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the related document.';
                }
                field("Duplicate in Depreciation Book"; Rec."Duplicate in Depreciation Book")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Duplicate in Depreciation Book field.';
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
                    ToolTip = 'Specifies the value of the Exempted field.';
                }
                field("Expected Receipt Date"; Rec."Expected Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date you expect the items to be available in your warehouse. If you leave the field blank, it will be calculated as follows: Planned Receipt Date + Safety Lead Time + Inbound Warehouse Handling Time = Expected Receipt Date.';
                }
                field("FA Posting Date"; Rec."FA Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the FA Posting Date field.';
                }
                field("FA Posting Type"; Rec."FA Posting Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the FA Posting Type field.';
                }
                field("GST Assessable Value"; Rec."GST Assessable Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Assessable Value field.';
                }
                field("GST Credit"; Rec."GST Credit")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Credit field.';
                }
                field("GST Group Code"; Rec."GST Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Group Code field.';
                }
                field("GST Group Type"; Rec."GST Group Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Group Type field.';
                }
                field("GST Jurisdiction Type"; Rec."GST Jurisdiction Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Jurisdiction Type field.';
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
                    ToolTip = 'Specifies the value of the Gen. Bus. Posting Group field.';
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gen. Prod. Posting Group field.';
                }
                field("Gross Weight"; Rec."Gross Weight")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the gross weight of one unit of the item. In the purchase statistics window, the gross weight on the line is included in the total gross weight of all the lines for the particular purchase document.';
                }
                field("HSN/SAC Code"; Rec."HSN/SAC Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the HSN/SAC Code field.';
                }
                field("IC Item Reference No."; Rec."IC Item Reference No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the IC Item Reference No. field.';
                }
                field("IC Partner Ref. Type"; Rec."IC Partner Ref. Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the IC Partner Ref. Type field.';
                }
                field("IC Partner Reference"; Rec."IC Partner Reference")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the IC Partner Reference field.';
                }
                field("Inbound Whse. Handling Time"; Rec."Inbound Whse. Handling Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the time it takes to make items part of available inventory, after the items have been posted as received.';
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
                field("Indirect Cost %"; Rec."Indirect Cost %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the percentage of the item''s last purchase cost that includes indirect costs, such as freight that is associated with the purchase of the item.';
                }
                field("Insurance No."; Rec."Insurance No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Insurance No. field.';
                }
                field("Invoice Created"; Rec."Invoice Created")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice Created field.';
                }
                field("Item Category Code"; Rec."Item Category Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Category Code field.';
                }
                field("Item Charge Base Amount"; Rec."Item Charge Base Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Charge Base Amount field.';
                }
                field("Item Rcpt. Entry No."; Rec."Item Rcpt. Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Rcpt. Entry No. field.';
                }
                field("Item Reference No."; Rec."Item Reference No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the referenced item number.';
                }
                field("Item Reference Type"; Rec."Item Reference Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Reference Type field.';
                }
                field("Item Reference Type No."; Rec."Item Reference Type No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Reference Type No. field.';
                }
                field("Item Reference Unit of Measure"; Rec."Item Reference Unit of Measure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit of Measure (Item Ref.) field.';
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
                    ToolTip = 'Specifies the value of the Job Line Amount field.';
                }
                field("Job Line Amount (LCY)"; Rec."Job Line Amount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Line Amount (LCY) field.';
                }
                field("Job Line Disc. Amount (LCY)"; Rec."Job Line Disc. Amount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Line Disc. Amount (LCY) field.';
                }
                field("Job Line Discount %"; Rec."Job Line Discount %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Line Discount % field.';
                }
                field("Job Line Discount Amount"; Rec."Job Line Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Line Discount Amount field.';
                }
                field("Job Line Type"; Rec."Job Line Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Line Type field.';
                }
                field("Job No."; Rec."Job No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the related job.';
                }
                field("Job Task No."; Rec."Job Task No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the related job task.';
                }
                field("Job Total Price"; Rec."Job Total Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Total Price field.';
                }
                field("Job Total Price (LCY)"; Rec."Job Total Price (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Total Price (LCY) field.';
                }
                field("Job Unit Price"; Rec."Job Unit Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Unit Price field.';
                }
                field("Job Unit Price (LCY)"; Rec."Job Unit Price (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Unit Price (LCY) field.';
                }
                field("Lead Time Calculation"; Rec."Lead Time Calculation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a date formula for the amount of time it takes to replenish the item.';
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line Discount % field.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line No. field.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a code for the location where you want the items to be placed when they are received.';
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
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Net Weight"; Rec."Net Weight")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the net weight of one unit of the item. In the purchase statistics window, the net weight on the line is included in the total net weight of all the lines for the particular purchase document.';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the involved entry or record, according to the specified number series.';
                }
                field("Non-GST Line"; Rec."Non-GST Line")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Non-GST Line field.';
                }
                field(Nonstock; Rec.Nonstock)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that this item is a catalog item.';
                }
                field("Operation No."; Rec."Operation No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Operation No. field.';
                }
                field("Order Address Code"; Rec."Order Address Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Address Code field.';
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date when the related order was created.';
                }
                field("Order Line No."; Rec."Order Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the line number of the order that created the entry.';
                }
                field("Order No."; Rec."Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the line number of the order that created the entry.';
                }
                field("Orient MRP"; Rec."Orient MRP")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Orient MRP field.';
                }
                field("Over-Receipt Code 2"; Rec."Over-Receipt Code 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Over-Receipt Code field.';
                }
                field("Over-Receipt Quantity"; Rec."Over-Receipt Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Over-Receipt Quantity field.';
                }
                field("Overhead Rate"; Rec."Overhead Rate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overhead Rate field.';
                }
                field("Pay-to Vendor No."; Rec."Pay-to Vendor No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the vendor that you received the invoice from.';
                }
                field("Planned Receipt Date"; Rec."Planned Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date when the item is planned to arrive in inventory. Forward calculation: planned receipt date = order date + vendor lead time (per the vendor calendar and rounded to the next working day in first the vendor calendar and then the location calendar). If no vendor calendar exists, then: planned receipt date = order date + vendor lead time (per the location calendar). Backward calculation: order date = planned receipt date - vendor lead time (per the vendor calendar and rounded to the previous working day in first the vendor calendar and then the location calendar). If no vendor calendar exists, then: order date = planned receipt date - vendor lead time (per the location calendar).';
                }
                field("Possible Cenvat"; Rec."Possible Cenvat")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Possible Cenvat field.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Date field.';
                }
                field("Posting Date 1"; Rec."Posting Date 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Date field.';
                }
                field("Posting Date Head"; Rec."Posting Date Head")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Date field.';
                }
                field("Posting Date2"; Rec."Posting Date2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Date2 field.';
                }
                field("Posting Group"; Rec."Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Group field.';
                }
                field("Price Calculation Method"; Rec."Price Calculation Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Price Calculation Method field.';
                }
                field("Prod. Order Line No."; Rec."Prod. Order Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prod. Order Line No. field.';
                }
                field("Prod. Order No."; Rec."Prod. Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the related production order.';
                }
                field("Promised Receipt Date"; Rec."Promised Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date that the vendor has promised to deliver the order.';
                }
                field("Purchasing Code"; Rec."Purchasing Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Purchasing Code field.';
                }
                field("Qty. Invoiced (Base)"; Rec."Qty. Invoiced (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. Invoiced (Base) field.';
                }
                field("Qty. Rcd. Not Invoiced"; Rec."Qty. Rcd. Not Invoiced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of the received item that has been posted as received but that has not yet been posted as invoiced.';
                }
                field("Qty. per Unit of Measure"; Rec."Qty. per Unit of Measure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity per unit of measure of the item that was received.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of the item on the line.';
                }
                field("Quantity (Base)"; Rec."Quantity (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity (Base) field.';
                }
                field("Quantity Invoiced"; Rec."Quantity Invoiced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units of the item on the line have been posted as invoiced.';
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
                field("Requested Receipt Date"; Rec."Requested Receipt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date that you want the vendor to deliver to the ship-to address. The value in the field is used to calculate the latest date you can order the items to have them delivered on the requested receipt date. If you do not need delivery on a specific date, you can leave the field blank.';
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Responsibility Center field.';
                }
                field("Return Reason Code"; Rec."Return Reason Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code explaining why the item was returned.';
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
                    ToolTip = 'Specifies the code for Shortcut Dimension 1, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for Shortcut Dimension 2, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
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
                field("Store Rejection Date"; Rec."Store Rejection Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Store Rejection Date field.';
                }
                field("Store rejection No."; Rec."Store rejection No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Store rejection No. field.';
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
                field(Supplementary; Rec.Supplementary)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Supplementary field.';
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
                field("Tax Group Code"; Rec."Tax Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Tax Group Code field.';
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Tax Liable field.';
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
                    ToolTip = 'Specifies the line type.';
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the cost of one unit of the item or resource on the line.';
                }
                field("Unit Cost (LCY)"; Rec."Unit Cost (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the cost, in LCY, of one unit of the item or resource on the line.';
                }
                field("Unit Price (LCY)"; Rec."Unit Price (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Price (LCY) field.';
                }
                field("Unit Volume"; Rec."Unit Volume")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the volume of one unit of the item. In the purchase statistics window, the volume of one unit of the item on the line is included in the total volume of all the lines for the particular purchase document.';
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the item or resource''s unit of measure, such as piece or hour.';
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how each unit of the item or resource is measured, such as in pieces or hours. By default, the value in the Base Unit of Measure field on the item or resource card is inserted.';
                }
                field("Units per Parcel"; Rec."Units per Parcel")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of units per parcel of the item. In the purchase statistics window, the number of units per parcel on the line helps to determine the total number of units for all the lines for the particular purchase document.';
                }
                field("Use Duplication List"; Rec."Use Duplication List")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Use Duplication List field.';
                }
                field("Use Tax"; Rec."Use Tax")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Use Tax field.';
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
                    ToolTip = 'Specifies the value of the VAT Bus. Posting Group field.';
                }
                field("VAT Calculation Type"; Rec."VAT Calculation Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Calculation Type field.';
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Prod. Posting Group field.';
                }
                field("Variant Code"; Rec."Variant Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the variant of the item on the line.';
                }
                field("Vendor Invoice No."; Rec."Vendor Invoice No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Invoice No. field.';
                }
                field("Vendor Item No."; Rec."Vendor Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number that the vendor uses for this item.';
                }
                field("Work Center No."; Rec."Work Center No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Center No. field.';
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
