pageextension 50423 pageextension50423 extends "Item List"
{
    layout
    {
        moveafter("Base Unit of Measure"; "Substitutes Exist", "Assembly BOM", "Production BOM No.", "Routing No.", "Vendor No.", "Default Deferral Template Code")
        addafter(Description)
        {


            //<<17699
            field("Description 2"; Rec."Description 2")
            {
                ApplicationArea = All;
            }
            field("NPD Sub"; Rec."NPD Sub")
            {
                Caption = 'NPD Sub';
                ApplicationArea = all;
            }
            field("Manuf. Strategy"; Rec."Manuf. Strategy")
            {
                ApplicationArea = all;
            }
            field("Item Classification"; Rec."Item Classification")
            {
                ApplicationArea = all;
            }
            field("Complete Description"; Rec."Complete Description")
            {
                ApplicationArea = all;
            }
            field("Gross Weight"; Rec."Gross Weight")
            {
                ApplicationArea = all;
            }
            field("Net Weight"; Rec."Net Weight")
            {
                ApplicationArea = all;
            }
            field(NPD; Rec.NPD)
            {
                ApplicationArea = all;
            }
            field("Type Code"; Rec."Type Code")
            {
                ApplicationArea = all;
            }
            field("Type Catogery Code"; Rec."Type Catogery Code")
            {
                ApplicationArea = all;
            }
            field("Size Code"; Rec."Size Code")
            {
                ApplicationArea = all;
            }
            field("Design Code"; Rec."Design Code")
            {
                ApplicationArea = all;
            }
            field("Color Code"; Rec."Color Code")
            {
                ApplicationArea = all;
            }
            field("Packing Code"; Rec."Packing Code")
            {
                ApplicationArea = all;
            }
            field("Quality Code"; Rec."Quality Code")
            {
                ApplicationArea = all;
            }
            field("Plant Code"; Rec."Plant Code")
            {
                ApplicationArea = all;
            }
            field("Tableau Product Group"; Rec."Tableau Product Group")
            {
                ApplicationArea = all;
            }

        }
        moveafter("Type Code"; "Item Category Code")
        addafter("No.")
        {
            field("Created Date"; Rec."Created Date")
            {
                ApplicationArea = all;
            }
        }

        addafter("Default Deferral Template Code")
        {
            field("Maximum Inventory"; Rec."Maximum Inventory")
            {
                ApplicationArea = All;
            }
            field("Qty. on Sales Order"; Rec."Qty. on Sales Order")
            {
                ApplicationArea = All;
            }
            field("Date Filter"; Rec."Date Filter")
            {
                ApplicationArea = All;
            }

            field("Reserved Qty. on Inventory"; Rec."Reserved Qty. on Inventory")
            {
                ApplicationArea = All;
            }
            field(Inventory; Rec.Inventory)
            {
                ApplicationArea = All;
            }
            field("Qty. on Purch. Order"; Rec."Qty. on Purch. Order")
            {
                ApplicationArea = All;
            }
            field("<Net Weight/SQ.MT>"; Rec."Net Weight")
            {
                Caption = '<Net Weight/SQ.MT>';
                ApplicationArea = All;
            }
            field("Net Change"; Rec."Net Change")
            {
                ApplicationArea = All;
            }
            field("GST Group Code"; Rec."GST Group Code")
            {
                ApplicationArea = All;
            }
            field("HSN/SAC Code"; Rec."HSN/SAC Code")
            {
                ApplicationArea = All;
            }
            field("ProductionQty."; Rec."ProductionQty.")
            {
                ApplicationArea = all;
            }
            field("Layer Per Pallate"; Rec."Layer Per Pallate")
            {
                ApplicationArea = all;
            }
            field("Box Per Layer"; Rec."Box Per Layer")
            {
                ApplicationArea = all;
            }


            field("Last Modified ID"; Rec."Last Modified ID")
            {
                ApplicationArea = all;
            }
            field("Minimum Inventory"; Rec."Minimum Inventory")
            {
                ApplicationArea = all;
            }
            field("Transfer Order Blocked"; Rec."Transfer Order Blocked")
            {
                ApplicationArea = all;
            }
            field("Created ID"; Rec."Created ID")
            {
                ApplicationArea = all;
            }
            field("Indent Blocked"; Rec."Indent Blocked")
            {
                ApplicationArea = all;
            }
            field("Purchase Blocked"; Rec."Purchase Blocked")
            {
                ApplicationArea = all;
            }
            field(Premium; Rec.Premium)
            {
                ApplicationArea = all;
            }

            field(Retained; Rec.Retained)
            {
                ApplicationArea = all;
            }
            field("Default Prod. Plant Code"; Rec."Default Prod. Plant Code")
            {
                ApplicationArea = all;
            }
            field("Type Category Code Desc."; Rec."Type Category Code Desc.")
            {
                ApplicationArea = all;
            }
            field("Product Group Desc."; Rec."Product Group Desc.")
            {
                ApplicationArea = all;
            }
            field("Item Category Desc."; Rec."Item Category Desc.")
            {
                ApplicationArea = all;
            }
            field("Size Code Desc."; Rec."Size Code Desc.")
            {
                ApplicationArea = all;
            }
            field("Plant Code Desc."; Rec."Plant Code Desc.")
            {
                ApplicationArea = all;
            }
            field("Inventory In CRT"; Rec."Inventory In CRT")
            {
                ApplicationArea = all;
            }
            field("Design Code Desc."; Rec."Design Code Desc.")
            {
                ApplicationArea = all;
            }
            field("Color Code Desc."; Rec."Color Code Desc.")
            {
                ApplicationArea = all;
            }
            field("Packing Code Desc."; Rec."Packing Code Desc.")
            {
                ApplicationArea = all;
            }
            field("Quality Code Desc."; Rec."Quality Code Desc.")
            {
                ApplicationArea = all;
            }
            field("Scheme Group Code"; Rec."Scheme Group Code")
            {
                ApplicationArea = all;
            }
            field(Liquidaton; Rec.Liquidaton)
            {
                ApplicationArea = all;
            }
            field(Layer; Rec.Layer)
            {
                ApplicationArea = all;
            }
            field("Prod. Consumption Item"; Rec."Prod. Consumption Item")
            {
                ApplicationArea = all;
            }
            field("Sample Group"; Rec."Sample Group")
            {
                ApplicationArea = all;
            }
            /* field("Assembly Policy";Rec."Assembly Policy")
             {
                 ApplicationArea = all;
             }
             field(Blocked;Rec.Blocked)
             {
                 ApplicationArea = all;
             }
             field("Created From Nonstock Item";Rec."Created From Nonstock Item")
             {
                 ApplicationArea = all;
             }
             field()
             {
                 ApplicationArea = all;
             }
             field()
             {
                 ApplicationArea = all;
             }
             field()
             {
                 ApplicationArea = all;
             }
  */



        }
        moveafter("HSN/SAC Code"; "Unit Price", "Unit Cost")
    }

    var
        ItemCostMgt: Codeunit ItemCostManagement;
        AverageCostLCY: Decimal;
        AverageCostACY: Decimal;
        AverageCostLCY1: Decimal;
        AverageCostACY1: Decimal;
        LocFilter: Code[10];
        [InDataSet]
        "Cost is AdjustedEditable": Boolean;
        AdminVisi: Boolean;

    trigger OnOpenPage()
    begin
        CurrPage.LOOKUPMODE := TRUE;
        //if xRec.Blocked = True then;
        //  IF UPPERCASE(USERID) = 'ADMIN' THEN
        Rec.SETRANGE(Blocked, FALSE);
        Rec.SETRANGE(Blocked2, FALSE);

    end;

    procedure "--MSBS.Rao261114--"()
    begin
    end;

    procedure SetLocationFilter(LocCode: Code[10])
    begin
        LocFilter := LocCode;
    end;
}

