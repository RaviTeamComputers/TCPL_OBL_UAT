page 50393 "Sales Order Ledger Entries"
{
    ApplicationArea = All;
    Caption = 'Sales Order Ledger Entries';
    PageType = List;
    SourceTable = "Sales Order Ledger Entry";
    UsageCategory = History;
    InsertAllowed = false;
    DeleteAllowed = false;
    Editable = false;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field.';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Date field.';
                }
                field("Order Plant"; Rec."Order Plant")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Plant field.';
                }
                field("Original SO Qty"; Rec."Original SO Qty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Original SO Qty field.';
                }
                field("Outstanding Qty."; Rec."Outstanding Qty.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Qty. field.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Date field.';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer No. field.';
                }
                field("Sales Order No."; Rec."Sales Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Order No. field.';
                }
                field("Sales Order Line No."; Rec."Sales Order Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Order Line No. field.';
                }
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type field.';
                }
                field("Size Code"; Rec."Size Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Size Code field.';
                }
                field("Size Description"; Rec."Size Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Size Description field.';
                }
                field("Sales Person Code"; Rec."Sales Person Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Person Code field.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Location Code field.';
                }
                field("PMT ID"; Rec."PMT ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PMT ID field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
                field("Buyer Price"; Rec."Buyer Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Buyer Price field.';
                }
                field("Basic Value"; Rec."Basic Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Basic Value field.';
                }
                field(Closed; Rec.Closed)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Closed field.';
                }
                field("Creation DateTime"; Rec."Creation DateTime")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Creation DateTime field.';
                }
                field("Default Prod. Line Code"; Rec."Default Prod. Line Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Default Prod. Line Code field.';
                }
                field("Despatch Remark"; Rec."Despatch Remark")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Despatch Remark field.';
                }
                field("Inventory status"; Rec."Inventory status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inventory status field.';
                }
                field("Mfg Plant"; Rec."Mfg Plant")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mfg Plant field.';
                }
                field("Reserved Qty."; Rec."Reserved Qty.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reserved Qty. field.';
                }
                field("Sales Order Deleted"; Rec."Sales Order Deleted")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Order Deleted field.';
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
            }
        }
    }
}
