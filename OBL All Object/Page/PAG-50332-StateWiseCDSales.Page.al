page 50332 "State Wise CD Slabs"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Permissions = tabledata "State Wise CD Slabs" = rimd;
    SourceTable = "State Wise CD Slabs";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field("State/Customer Code"; Rec."State/Customer Code")
                {
                    ApplicationArea = All;
                }
                field("Effective Date"; Rec."Effective Date")
                {
                    ApplicationArea = All;
                }
                field("Slab 1"; Rec."Slab 1")
                {
                    ApplicationArea = All;
                }
                field("Slab 2"; Rec."Slab 2")
                {
                    ApplicationArea = All;
                }
                field("Slab 3"; Rec."Slab 3")
                {
                    ApplicationArea = All;
                }
                field("Slab 4"; Rec."Slab 4")
                {
                    ApplicationArea = All;
                }
                field("Slab 5"; Rec."Slab 5")
                {
                    ApplicationArea = All;
                }
                field("Slab 6"; Rec."Slab 6")
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