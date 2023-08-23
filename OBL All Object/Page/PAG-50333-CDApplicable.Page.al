page 50333 "CD Applicable"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Permissions = tabledata "CD Applicable" = rimd;
    SourceTable = "CD Applicable";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("State Code"; Rec."State Code")
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Include; Rec.Include)
                {
                    ApplicationArea = All;
                }
                field("Days Slab 0"; Rec."Days Slab 0")
                {
                    ApplicationArea = All;
                }
                field("Days Slab 1"; Rec."Days Slab 1")
                {
                    ApplicationArea = All;
                }
                field("Days Slab 2"; Rec."Days Slab 2")
                {
                    ApplicationArea = All;
                }
                field("Days Slab 3"; Rec."Days Slab 3")
                {
                    ApplicationArea = All;
                }
                field("Days Slab 4"; Rec."Days Slab 4")
                {
                    ApplicationArea = All;
                }
                field("Days Slab 5"; Rec."Days Slab 5")
                {
                    ApplicationArea = All;
                }
                field("Days Slab 6"; Rec."Days Slab 6")
                {
                    ApplicationArea = All;
                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}