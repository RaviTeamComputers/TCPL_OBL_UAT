page 50391 "Sales Line internal"
{
    ApplicationArea = All;
    Caption = 'Sales Line internal';
    PageType = List;
    SourceTable = "Sales Line";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("AD Remarks"; Rec."AD Remarks")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the AD Remarks field.';
                }
                field("ATO Whse. Outstanding Qty."; Rec."ATO Whse. Outstanding Qty.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many assemble-to-order units on the sales order line need to be assembled and handled in warehouse documents.';
                }
                field("ATO Whse. Outstd. Qty. (Base)"; Rec."ATO Whse. Outstd. Qty. (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many assemble-to-order units on the sales order line remain to be assembled and handled in warehouse documents.';
                }
                field("Accrued Discount"; Rec."Accrued Discount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Accrued Discount field.';
                }
                field("Accrued Quantity"; Rec."Accrued Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Accrued Quantity field.';
                }
                field("Allow Invoice Disc."; Rec."Allow Invoice Disc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the invoice line is included when the invoice discount is calculated.';
                }
                field("Allow Item Charge Assignment"; Rec."Allow Item Charge Assignment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that you can assign item charges to this line.';
                }
                field("Allow Line Disc."; Rec."Allow Line Disc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Allow Line Disc. field.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sum of amounts in the Line Amount field on the sales return order lines.';
                }
                field("Amount (FCY)"; Rec."Amount (FCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount (FCY) field.';
                }
                field("Amount Inc CD"; Rec."Amount Inc CD")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount Inc CD field.';
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount Including VAT field.';
                }
                field("Appl.-from Item Entry"; Rec."Appl.-from Item Entry")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the item ledger entry that the document or journal line is applied from.';
                }
                field("Appl.-to Item Entry"; Rec."Appl.-to Item Entry")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the item ledger entry that the document or journal line is applied -to.';
                }
                field("Approval Required"; Rec."Approval Required")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approval Required field.';
                }
                field("Area"; Rec."Area")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Area field.';
                }
                field("Assessee Code"; Rec."Assessee Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Assessee Code field.';
                }
                field("Attached Doc Count"; Rec."Attached Doc Count")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of attachments.';
                }
                field("Attached Lines Count"; Rec."Attached Lines Count")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of non-inventory product lines attached to the sales line.';
                }
                field("Attached to Line No."; Rec."Attached to Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the line number to which this sales line is attached.';
                }
                field("BOM Item No."; Rec."BOM Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BOM Item No. field.';
                }
                field("Balance Surcharge Amount"; Rec."Balance Surcharge Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Balance Surcharge Amount field.';
                }
                field(Batch; Rec.Batch)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Batch field.';
                }
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bill-to Customer No. field.';
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
                field("Buyer's Price"; Rec."Buyer's Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Buyer''s Price field.';
                }
                field("Buyer's Price /Sq.Mt"; Rec."Buyer's Price /Sq.Mt")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Buyer''s Price /Sq.Mt field.';
                }
                field(COCO; Rec.COCO)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the COCO field.';
                }
                field("Calculate Line Discount"; Rec."Calculate Line Discount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Calculate Line Discount field.';
                }
                field("Calculate TCS"; Rec."Calculate TCS")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Calculate TCS field.';
                }
                field("Carton No. From"; Rec."Carton No. From")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Carton No. From field.';
                }
                field("Carton No. To"; Rec."Carton No. To")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Carton No. To field.';
                }
                field("Charge Item"; Rec."Charge Item")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Charge Item field.';
                }
                field("Charge Item Created"; Rec."Charge Item Created")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Charge Item Created field.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                }
                field("Color Code"; Rec."Color Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Color Code field.';
                }
                field("Complete Description"; Rec."Complete Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Complete Description field.';
                }
                field("Completely Shipped"; Rec."Completely Shipped")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Completely Shipped field.';
                }
                field("Copied From Posted Doc."; Rec."Copied From Posted Doc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Copied From Posted Doc. field.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the currency that is used on the entry.';
                }
                field("Customer Disc. Group"; Rec."Customer Disc. Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Disc. Group field.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Name field.';
                }
                field("Customer Price Group"; Rec."Customer Price Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Price Group field.';
                }
                field(D1; Rec.D1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the D1 field.';
                }
                field(D2; Rec.D2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the D2 field.';
                }
                field(D3; Rec.D3)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the D3 field.';
                }
                field(D4; Rec.D4)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the D4 field.';
                }
                field(D6; Rec.D6)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the D6 field.';
                }
                field(D7; Rec.D7)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the D7 field.';
                }
                field("Default Prod. Plant Code"; Rec."Default Prod. Plant Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Default Prod. Plant Code field.';
                }
                field("Deferral Code"; Rec."Deferral Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the deferral template that governs how revenue earned with this sales document is deferred to the different accounting periods when the good or service was delivered.';
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
                    ToolTip = 'Specifies a description of the item or service on the line.';
                }
                field("Description 2"; Rec."Description 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies information in addition to the description.';
                }
                field("Design Code"; Rec."Design Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Design Code field.';
                }
                field("Despatch Periority"; Rec."Despatch Periority")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Despatch Periority field.';
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dimension Set ID field.';
                }
                field("Discount Amt 1"; Rec."Discount Amt 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount Amt 1 field.';
                }
                field("Discount Amt 2"; Rec."Discount Amt 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount Amt 2 field.';
                }
                field("Discount Amt 3"; Rec."Discount Amt 3")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount Amt 3 field.';
                }
                field("Discount Amt 4"; Rec."Discount Amt 4")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount Amt 4 field.';
                }
                field("Discount Amt 6"; Rec."Discount Amt 6")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount Amt 6 field.';
                }
                field("Discount Amt 7"; Rec."Discount Amt 7")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount Amt 7 field.';
                }
                field("Discount Per SQ.MT"; Rec."Discount Per SQ.MT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount Per SQ.MT field.';
                }
                field("Discount Per Unit"; Rec."Discount Per Unit")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount Per Unit field.';
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
                    ToolTip = 'Specifies if your vendor ships the items directly to your customer.';
                }
                field("Duplicate in Depreciation Book"; Rec."Duplicate in Depreciation Book")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a depreciation book code if you want the journal line to be posted to that depreciation book, as well as to the depreciation book in the Depreciation Book Code field.';
                }
                field(Exempted; Rec.Exempted)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the line is exempted from GST.';
                }
                field("Exit Point"; Rec."Exit Point")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Exit Point field.';
                }
                field("FA Posting Date"; Rec."FA Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date that will be used on related fixed asset ledger entries.';
                }
                field("GST Assessable Value (FCY)"; Rec."GST Assessable Value (FCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Assessable Value (FCY) field.';
                }
                field("GST Assessable Value (LCY)"; Rec."GST Assessable Value (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the GST Assessable value on which GST is calculated for the line.';
                }
                field("GST Credit"; Rec."GST Credit")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the GST credit has to be availed or not.';
                }
                field("GST Group Code"; Rec."GST Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies an identifier for the GST group used to calculate and post GST.';
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
                field("GST On Assessable Value"; Rec."GST On Assessable Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if GST is applicable on assessable value.';
                }
                field("GST Place Of Supply"; Rec."GST Place Of Supply")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the GST Place of Supply. For example Bill-to Address, Ship-to Address, Location Address etc.';
                }
                field("GST Rounding Line"; Rec."GST Rounding Line")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GST Rounding Line field.';
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor''s or customer''s trade type to link transactions made for this business partner with the appropriate general ledger account according to the general posting setup.';
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the item''s product type to link transactions made for this item with the appropriate general ledger account according to the general posting setup.';
                }
                field("Gross Weight"; Rec."Gross Weight")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the gross weight of one unit of the item. In the sales statistics window, the gross weight on the line is included in the total gross weight of all the lines for the particular sales document.';
                }
                field("Gross Weight (Ship)"; Rec."Gross Weight (Ship)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gross Weight (Ship) field.';
                }
                field("Group Code"; Rec."Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Group Code field.';
                }
                field("HSN/SAC Code"; Rec."HSN/SAC Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the HSN/SAC code for the calculation of GST on Sales line.';
                }
                field("IC Item Reference No."; Rec."IC Item Reference No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the IC item reference. If the line is being sent to one of your intercompany partners, this field is used together with the IC Partner Ref. Type field to indicate the item or account in your partner''s company that corresponds to the line.';
                }
                field("IC Partner Code"; Rec."IC Partner Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code of the intercompany partner that the transaction is related to if the entry was created from an intercompany transaction.';
                }
                field("IC Partner Ref. Type"; Rec."IC Partner Ref. Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the item or account in your IC partner''s company that corresponds to the item or account on the line.';
                }
                field("IC Partner Reference"; Rec."IC Partner Reference")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the IC partner. If the line is being sent to one of your intercompany partners, this field is used together with the IC Partner Ref. Type field to indicate the item or account in your partner''s company that corresponds to the line.';
                }
                field("Inv. Disc. Amount to Invoice"; Rec."Inv. Disc. Amount to Invoice")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the actual invoice discount amount that will be posted for the line in next invoice.';
                }
                field("Inv. Discount Amount"; Rec."Inv. Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the invoice discount amount for the line.';
                }
                field("Invoice Type"; Rec."Invoice Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice Type field.';
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
                field("Item Reference No."; Rec."Item Reference No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the referenced item number.';
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
                field("Item Type"; Rec."Item Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Type field.';
                }
                field("Itemr Change Remarks"; Rec."Itemr Change Remarks")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Itemr Change Remarks field.';
                }
                field("Job Contract Entry No."; Rec."Job Contract Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entry number of the job planning line that the sales line is linked to.';
                }
                field("Job No."; Rec."Job No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the related job. If you fill in this field and the Job Task No. field, then a job ledger entry will be posted together with the sales line.';
                }
                field("Job Task No."; Rec."Job Task No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the related job task.';
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the net amount, excluding any invoice discount amount, that must be paid for products on the line.';
                }
                field("Line Amount 1"; Rec."Line Amount 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line Amount 1 field.';
                }
                field("Line Amount Per Qty"; Rec."Line Amount Per Qty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line Amount Per Qty field.';
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the discount percentage that is granted for the item on the line.';
                }
                field("Line Discount Amount"; Rec."Line Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the discount amount that is granted for the item on the line.';
                }
                field("Line Discount Amount 1"; Rec."Line Discount Amount 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line Discount Amount 1 field.';
                }
                field("Line Discount Calculation"; Rec."Line Discount Calculation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line Discount Calculation field.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the line number.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the inventory location from which the items sold should be picked and where the inventory decrease is registered.';
                }
                field(MRP; Rec.MRP)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the MRP field.';
                }
                field("MRP Price"; Rec."MRP Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the MRP Price field.';
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
                field("Morbi Batch No."; Rec."Morbi Batch No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Morbi Batch No. field.';
                }
                field("Net Weight"; Rec."Net Weight")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the net weight of one unit of the item. In the sales statistics window, the net weight on the line is included in the total net weight of all the lines for the particular sales document.';
                }
                field("Net Weight (Ship)"; Rec."Net Weight (Ship)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Net Weight (Ship) field.';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the record.';
                }
                field("No. 2"; Rec."No. 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. 2 field.';
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
                field("Offer Code"; Rec."Offer Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Offer Code field.';
                }
                field("Order Qty"; Rec."Order Qty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Qty field.';
                }
                field("Order Qty (CRT)"; Rec."Order Qty (CRT)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Qty (CRT) field.';
                }
                field("Originally Ordered No."; Rec."Originally Ordered No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Originally Ordered No. field.';
                }
                field("Originally Ordered Var. Code"; Rec."Originally Ordered Var. Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Originally Ordered Var. Code field.';
                }
                field("Out-of-Stock Substitution"; Rec."Out-of-Stock Substitution")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Out-of-Stock Substitution field.';
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
                field("Outstanding Amount (LCY)"; Rec."Outstanding Amount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Amount (LCY) field.';
                }
                field("Outstanding Gross Weight"; Rec."Outstanding Gross Weight")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Gross Weight field.';
                }
                field("Outstanding Qty. (Base)"; Rec."Outstanding Qty. (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the outstanding quantity expressed in the base units of measure.';
                }
                field("Outstanding Quantity"; Rec."Outstanding Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units on the order line have not yet been shipped.';
                }
                field("Packing Code"; Rec."Packing Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Packing Code field.';
                }
                field("Pallet No. From"; Rec."Pallet No. From")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pallet No. From field.';
                }
                field("Pallet No. To"; Rec."Pallet No. To")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pallet No. To field.';
                }
                field(Planned; Rec.Planned)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Planned field.';
                }
                field("Planned Delivery Date"; Rec."Planned Delivery Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the planned date that the shipment will be delivered at the customer''s address. If the customer requests a delivery date, the program calculates whether the items will be available for delivery on this date. If the items are available, the planned delivery date will be the same as the requested delivery date. If not, the program calculates the date that the items are available for delivery and enters this date in the Planned Delivery Date field.';
                }
                field("Planned Shipment Date"; Rec."Planned Shipment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date that the shipment should ship from the warehouse. If the customer requests a delivery date, the program calculates the planned shipment date by subtracting the shipping time from the requested delivery date. If the customer does not request a delivery date or the requested delivery date cannot be met, the program calculates the content of this field by adding the shipment time to the shipping date.';
                }
                field("Plant Code"; Rec."Plant Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Plant Code field.';
                }
                field("Pmt. Discount Amount"; Rec."Pmt. Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pmt. Discount Amount field.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Date field.';
                }
                field("Posting Date1"; Rec."Posting Date1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Date1 field.';
                }
                field("Posting Group"; Rec."Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Group field.';
                }
                field("PreApproved Discount"; Rec."PreApproved Discount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PreApproved Discount field.';
                }
                field("PreApproved Discount Amount"; Rec."PreApproved Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PreApproved Discount Amount field.';
                }
                field("Prepayment %"; Rec."Prepayment %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the prepayment percentage to use to calculate the prepayment for sales.';
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
                    ToolTip = 'Specifies the prepayment amount that has already been deducted from ordinary invoices posted for this sales order line.';
                }
                field("Prepmt Amt to Deduct"; Rec."Prepmt Amt to Deduct")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the prepayment amount that has already been deducted from ordinary invoices posted for this sales order line.';
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
                    ToolTip = 'Specifies the prepayment amount that has already been invoiced to the customer for this sales line.';
                }
                field("Prepmt. Line Amount"; Rec."Prepmt. Line Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the prepayment amount of the line in the currency of the sales document if a prepayment percentage is specified for the sales line.';
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
                field("Price Inclusive of Tax"; Rec."Price Inclusive of Tax")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the price in inclusive of tax for the line.';
                }
                field("Price description"; Rec."Price description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Price description field.';
                }
                field("Profit %"; Rec."Profit %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Profit % field.';
                }
                field("Promised Delivery Date"; Rec."Promised Delivery Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date that you have promised to deliver the order, as a result of the Order Promising function.';
                }
                field("Purch. Order Line No."; Rec."Purch. Order Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Purch. Order Line No. field.';
                }
                field("Purchase Order No."; Rec."Purchase Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Purchase Order No. field.';
                }
                field("Purchasing Code"; Rec."Purchasing Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for a special procurement method, such as drop shipment.';
                }
                field("Qty. Assigned"; Rec."Qty. Assigned")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of the item charge that was assigned to a specified item when you posted this sales line.';
                }
                field("Qty. Invoiced (Base)"; Rec."Qty. Invoiced (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. Invoiced (Base) field.';
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
                field("Qty. Shipped (Base)"; Rec."Qty. Shipped (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. Shipped (Base) field.';
                }
                field("Qty. Shipped Not Invd. (Base)"; Rec."Qty. Shipped Not Invd. (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. Shipped Not Invd. (Base) field.';
                }
                field("Qty. Shipped Not Invoiced"; Rec."Qty. Shipped Not Invoiced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. Shipped Not Invoiced field.';
                }
                field("Qty. per Unit of Measure"; Rec."Qty. per Unit of Measure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies an auto-filled number if you have included Sales Unit of Measure on the item card and a quantity in the Qty. per Unit of Measure field.';
                }
                field("Qty. to Asm. to Order (Base)"; Rec."Qty. to Asm. to Order (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. to Asm. to Order (Base) field.';
                }
                field("Qty. to Assemble to Order"; Rec."Qty. to Assemble to Order")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units of the blanket sales line quantity that you want to supply by assembly.';
                }
                field("Qty. to Assign"; Rec."Qty. to Assign")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units of the item charge will be assigned to the line.';
                }
                field("Qty. to Invoice"; Rec."Qty. to Invoice")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity that remains to be invoiced. It is calculated as Quantity - Qty. Invoiced.';
                }
                field("Qty. to Invoice (Base)"; Rec."Qty. to Invoice (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. to Invoice (Base) field.';
                }
                field("Qty. to Ship"; Rec."Qty. to Ship")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of items that remain to be shipped.';
                }
                field("Qty. to Ship (Base)"; Rec."Qty. to Ship (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. to Ship (Base) field.';
                }
                field("Quality Code"; Rec."Quality Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quality Code field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units are being sold.';
                }
                field("Quantity (Base)"; Rec."Quantity (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity (Base) field.';
                }
                field("Quantity Discount %"; Rec."Quantity Discount %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity Discount % field.';
                }
                field("Quantity Discount Amount"; Rec."Quantity Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity Discount Amount field.';
                }
                field("Quantity Invoiced"; Rec."Quantity Invoiced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units of the item on the line have been posted as invoiced.';
                }
                field("Quantity Shipped"; Rec."Quantity Shipped")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units of the item on the line have been posted as shipped.';
                }
                field("Quantity in Blanket Order"; Rec."Quantity in Blanket Order")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity in Blanket Order field.';
                }
                field("Quantity in Cartons"; Rec."Quantity in Cartons")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity in Cartons field.';
                }
                field("Quantity in Cartons(Ship)"; Rec."Quantity in Cartons(Ship)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity in Cartons(Ship) field.';
                }
                field("Quantity in Hand CRT"; Rec."Quantity in Hand CRT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity in Hand CRT field.';
                }
                field("Quantity in Hand SQM"; Rec."Quantity in Hand SQM")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity in Hand SQM field.';
                }
                field("Quantity in Sq. Mt."; Rec."Quantity in Sq. Mt.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity in Sq. Mt. field.';
                }
                field("Quantity in Sq. Mt.(Ship)"; Rec."Quantity in Sq. Mt.(Ship)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity in Sq. Mt.(Ship) field.';
                }
                field("Recalculate Invoice Disc."; Rec."Recalculate Invoice Disc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Recalculate Invoice Disc. field.';
                }
                field("Related Location code"; Rec."Related Location code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Related Location code field.';
                }
                field("Releasing Date"; Rec."Releasing Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Releasing Date field.';
                }
                field("Remaining Inventory"; Rec."Remaining Inventory")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Remaining Inventory field.';
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
                    ToolTip = 'Specifies whether a reservation can be made for items on this line.';
                }
                field("Reserved Qty. (Base)"; Rec."Reserved Qty. (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the reserved quantity of the item expressed in base units of measure.';
                }
                field("Reserved Quantity"; Rec."Reserved Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units of the item on the line have been reserved.';
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Responsibility Center field.';
                }
                field("Ret. Qty. Rcd. Not Invd.(Base)"; Rec."Ret. Qty. Rcd. Not Invd.(Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ret. Qty. Rcd. Not Invd.(Base) field.';
                }
                field("Return Qty. Rcd. Not Invd."; Rec."Return Qty. Rcd. Not Invd.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Qty. Rcd. Not Invd. field.';
                }
                field("Return Qty. Received"; Rec."Return Qty. Received")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units of the item on the line have been posted as shipped.';
                }
                field("Return Qty. Received (Base)"; Rec."Return Qty. Received (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Qty. Received (Base) field.';
                }
                field("Return Qty. to Receive"; Rec."Return Qty. to Receive")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of items that remain to be shipped.';
                }
                field("Return Qty. to Receive (Base)"; Rec."Return Qty. to Receive (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Qty. to Receive (Base) field.';
                }
                field("Return Rcd. Not Invd."; Rec."Return Rcd. Not Invd.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Rcd. Not Invd. field.';
                }
                field("Return Rcd. Not Invd. (LCY)"; Rec."Return Rcd. Not Invd. (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Rcd. Not Invd. (LCY) field.';
                }
                field("Return Reason Code"; Rec."Return Reason Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code explaining why the item was returned.';
                }
                field("Return Receipt Line No."; Rec."Return Receipt Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Receipt Line No. field.';
                }
                field("Return Receipt No."; Rec."Return Receipt No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Receipt No. field.';
                }
                field("Returns Deferral Start Date"; Rec."Returns Deferral Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the starting date of the returns deferral period.';
                }
                field(S1; Rec.S1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the S1 field.';
                }
                field("Sales Type"; Rec."Sales Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Type field.';
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Salesperson Code field.';
                }
                field("Scheme Group Code"; Rec."Scheme Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Scheme Group Code field.';
                }
                field(Schemes; Rec.Schemes)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Schemes field.';
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the customer.';
                }
                field("Shipment Date"; Rec."Shipment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies when items on the document are shipped or were shipped. A shipment date is usually calculated from a requested delivery date plus lead time.';
                }
                field("Shipment Line No."; Rec."Shipment Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipment Line No. field.';
                }
                field("Shipment No."; Rec."Shipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipment No. field.';
                }
                field("Shipped Gross Weight"; Rec."Shipped Gross Weight")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipped Gross Weight field.';
                }
                field("Shipped Not Inv. (LCY) No VAT"; Rec."Shipped Not Inv. (LCY) No VAT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipped Not Invoiced (LCY) field.';
                }
                field("Shipped Not Invoiced"; Rec."Shipped Not Invoiced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipped Not Invoiced field.';
                }
                field("Shipped Not Invoiced (LCY)"; Rec."Shipped Not Invoiced (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipped Not Invoiced (LCY) Incl. VAT field.';
                }
                field("Shipping Agent Code"; Rec."Shipping Agent Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the shipping agent who is transporting the items.';
                }
                field("Shipping Agent Service Code"; Rec."Shipping Agent Service Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the service, such as a one-day delivery, that is offered by the shipping agent.';
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
                field("Size Code"; Rec."Size Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Size Code field.';
                }
                field(Slab; Rec.Slab)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Slab field.';
                }
                field("Special Order"; Rec."Special Order")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that the item on the sales line is a special-order item.';
                }
                field("Special Order Purch. Line No."; Rec."Special Order Purch. Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Special Order Purch. Line No. field.';
                }
                field("Special Order Purchase No."; Rec."Special Order Purchase No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Special Order Purchase No. field.';
                }
                field("State Name"; Rec."State Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the State Name field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Status Hdr"; Rec."Status Hdr")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status Hdr field.';
                }
                field("Status Updated"; Rec."Status Updated")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status Updated field.';
                }
                field("Structure Calculated"; Rec."Structure Calculated")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Structure Calculated field.';
                }
                field("Structure Discount Amount"; Rec."Structure Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Structure Discount Amount field.';
                }
                field("Substitution Available"; Rec."Substitution Available")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that a substitute is available for the item on the sales line.';
                }
                field(Subtype; Rec.Subtype)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subtype field.';
                }
                field("System Discount Amount"; Rec."System Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the System Discount Amount field.';
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
                field("TCS Base Amount"; Rec."TCS Base Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TCS Base Amount field.';
                }
                field("TCS Nature of Collection"; Rec."TCS Nature of Collection")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the TCS Nature of collection on which the TCS will be calculated for the Sales Return Order.';
                }
                field("TDS Amount Including Surcharge"; Rec."TDS Amount Including Surcharge")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TDS Amount Including Surcharge field.';
                }
                field("TDS Group"; Rec."TDS Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TDS Group field.';
                }
                field("TDS Nature of Deduction"; Rec."TDS Nature of Deduction")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TDS Nature of Deduction field.';
                }
                field("Tax Area Code"; Rec."Tax Area Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the tax area code for the customer.';
                }
                field("Tax Category"; Rec."Tax Category")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the VAT category in connection with electronic document sending. For example, when you send sales documents through the PEPPOL service, the value in this field is used to populate several fields, such as the ClassifiedTaxCategory element in the Item group. It is also used to populate the TaxCategory element in both the TaxSubtotal and AllowanceCharge group. The number is based on the UNCL5305 standard.';
                }
                field("Tax Group Code"; Rec."Tax Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the tax group code for the tax-detail entry.';
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the customer or vendor is liable for sales tax.';
                }
                field("Total Cartons"; Rec."Total Cartons")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Cartons field.';
                }
                field("Total Pallets"; Rec."Total Pallets")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Pallets field.';
                }
                field("Total Reserved Quantity"; Rec."Total Reserved Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Reserved Quantity field.';
                }
                field("Total UPIT Amount"; Rec."Total UPIT Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total UPIT Amount field.';
                }
                field("Trade Discount Amount"; Rec."Trade Discount Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Trade Discount Amount field.';
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
                field("Transfer Line No."; Rec."Transfer Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transfer Line No. field.';
                }
                field("Transfer No."; Rec."Transfer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transfer No. field.';
                }
                field("Transport Method"; Rec."Transport Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transport Method field.';
                }
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of entity that will be posted for this sales line, such as Item, Resource, or G/L Account. The type that you enter in this field determines what you can select in the No. field.';
                }
                field("Type Catogery Code"; Rec."Type Catogery Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type Catogery Code field.';
                }
                field("Type Code"; Rec."Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type Code field.';
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Cost field.';
                }
                field("Unit Cost (LCY)"; Rec."Unit Cost (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unit cost of the item on the line.';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the price for one unit on the sales line.';
                }
                field("Unit Price (FCY)"; Rec."Unit Price (FCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Price (FCY) Per Sq.Mt. field.';
                }
                field("Unit Price Excl. VAT/Sq.Mt"; Rec."Unit Price Excl. VAT/Sq.Mt")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Price Excl. VAT/Sq.Mt field.';
                }
                field("Unit Price Incl. of Tax"; Rec."Unit Price Incl. of Tax")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies unit prices are inclusive of tax on the line.';
                }
                field("Unit Volume"; Rec."Unit Volume")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the volume of one unit of the item. In the sales statistics window, the volume of one unit of the item on the line is included in the total volume of all the lines for the particular sales document.';
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sales unit of measure for this product or service.';
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unit of measure that is used to determine the value in the Unit Price field on the sales line.';
                }
                field("Units per Parcel"; Rec."Units per Parcel")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of units per parcel of the item. In the sales statistics window, the number of units per parcel on the line helps to determine the total number of units for all the lines for the particular sales document.';
                }
                field("Use Duplication List"; Rec."Use Duplication List")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies, if the type is Fixed Asset, that information on the line is to be posted to all the assets defined depreciation books. ';
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
                field("VAT Clause Code"; Rec."VAT Clause Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Clause Code field.';
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
                    ToolTip = 'Specifies the VAT product posting group. Links business transactions made for the item, resource, or G/L account with the general ledger, to account for VAT amounts resulting from trade with that record.';
                }
                field("Variant Code"; Rec."Variant Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the variant of the item on the line.';
                }
                field("Vendor Code"; Rec."Vendor Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Code field.';
                }
                field("Whse. Outstanding Qty."; Rec."Whse. Outstanding Qty.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units on the sales order line remain to be handled in warehouse documents.';
                }
                field("Whse. Outstanding Qty. (Base)"; Rec."Whse. Outstanding Qty. (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units on the sales order line remain to be handled in warehouse documents.';
                }
                field("Work Type Code"; Rec."Work Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies which work type the resource applies to when the sale is related to a job.';
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
