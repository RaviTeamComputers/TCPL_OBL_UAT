page 50337 "IT Indent line"
{
    Caption = 'IT-Indent Line';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Indent Line";
    Editable = true;
    Permissions = tabledata 50017 = mir;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document No. field.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line No. field.';
                }
                field("Actual PO Qty"; Rec."Actual PO Qty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Actual PO Qty field.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field("Authorization Date"; Rec."Authorization Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Authorization Date field.';
                }
                field("Capex No."; Rec."Capex No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Capex No. field.';
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date field.';
                }
                field(Deleted; Rec.Deleted)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Not To Be Executed field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Description 2"; Rec."Description 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description 2 field.';
                }

                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Due Date field.';
                }
                field("G/L Account"; Rec."G/L Account")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the G/L Account field.';
                }
                field("Group Code"; Rec."Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Group Code field.';
                }
                field("Header Status"; Rec."Header Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Header Status field.';
                }
                field(HSN; Rec.HSN)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the HSN field.';
                }
                field("Inventory Posting Group"; Rec."Inventory Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inventory Posting Group field.';
                }
                field("Item Category Code"; Rec."Item Category Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Category Code field.';
                }
                field("Item Code Service App"; Rec."Item Code Service App")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Code Service App field.';
                }
                field("Job Indent"; Rec."Job Indent")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Indent field.';
                }
                field("Last Order Date"; Rec."Last Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Order Date field.';
                }
                field("Last Order No."; Rec."Last Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Order No. field.';
                }

                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Location Code field.';
                }
                field(Lrate; Rec.Lrate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lrate field.';
                }
                field("New Item"; Rec."New Item")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the New Item field.';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(NOE; Rec.NOE)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the NOE field.';
                }
                field("Old Status"; Rec."Old Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Old Status field.';
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Date field.';
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
                field("Orginal Entry"; Rec."Orginal Entry")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Orginal Entry field.';
                }
                field("Parent Line No"; Rec."Parent Line No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Parent Line No field.';
                }
                field("Planning Date"; Rec."Planning Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Planning Date field.';
                }
                field("PO Qty"; Rec."PO Qty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PO Qty field.';
                }
                field("Product Group Code"; Rec."Product Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Product Group Code field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
                field(Rate; Rec.Rate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rate field.';
                }
                field("Received Qty"; Rec."Received Qty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Received Qty field.';
                }
                field("Ref Code"; Rec."Ref Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ref Code field.';
                }
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Remarks field.';
                }
                field("RGP Made"; Rec."RGP Made")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RGP Made field.';
                }
                field("RGP No."; Rec."RGP No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RGP No. field.';
                }
                field(Selection; Rec.Selection)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Selection field.';
                }
                field("Short Closed"; Rec."Short Closed")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Short Closed field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
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
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type field.';
                }
                field("Unit of Measurement"; Rec."Unit of Measurement")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit of Measurement field.';
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Name field.';
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor No. field.';
                }
            }
        }
        area(Factboxes)
        {

        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        if (UserId <> 'IT005') and (UserId <> 'IT003') and (UserId <> 'admin') then
            Error('You Are Not Authorize');
    end;

}