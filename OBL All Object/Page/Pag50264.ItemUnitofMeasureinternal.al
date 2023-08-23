page 50264 "Item Unit of Measure internal"
{
    ApplicationArea = All;
    Caption = 'Item Unit of Measure internal';
    PageType = List;
    SourceTable = "Item Unit of Measure";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a code to identify the unit of measure.';
                }
                field(Cubage; Rec.Cubage)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the volume (cubage) of one item unit in the unit of measure in the Code field.';
                }
                field(Height; Rec.Height)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the height of one item unit when measured in the unit of measure in the Code field.';
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the item card from which you opened the Item Units of Measure window.';
                }
                field(Length; Rec.Length)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the length of one item unit when measured in the specified unit of measure.';
                }
                field("Not Required"; Rec."Not Required")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Not Required field.';
                }
                field("Qty. Rounding Precision"; Rec."Qty. Rounding Precision")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qty. Rounding Precision field.';
                }
                field("Qty. per Unit of Measure"; Rec."Qty. per Unit of Measure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many of the base unit of measure are contained in one unit of the item.';
                }
                //>>17699
                field("Qty. per Unit of Measure to update"; QtyPerUnitOfMeasure)
                {
                    ApplicationArea = All;
                    Caption = 'Qty. per Unit of Measure to update';
                    ToolTip = 'Specifies how many of the base unit of measure are contained in one unit of the item.';
                    trigger OnValidate();
                    begin
                        Rec."Qty. per Unit of Measure" := QtyPerUnitOfMeasure;
                        Rec.Modify();
                    end;
                }
                //<<17699
                field("Ref Code"; Rec."Ref Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ref Code field.';
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
                field(Weight; Rec.Weight)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the weight of one item unit when measured in the specified unit of measure.';
                }
                field(Width; Rec.Width)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the width of one item unit when measured in the specified unit of measure.';
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

    var
        QtyPerUnitOfMeasure: Decimal;  //17699
}
