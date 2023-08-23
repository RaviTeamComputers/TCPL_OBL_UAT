page 50382 "IT- No. Series Line"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Permissions = tabledata 309 = rimd;
    SourceTable = 309;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Series Code"; Rec."Series Code")
                {
                    Editable = true;
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
                {
                    Editable = true;
                    ApplicationArea = All;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    Editable = true;
                    ApplicationArea = All;
                }
                field("Starting No."; Rec."Starting No.")
                {
                    Editable = true;
                    ApplicationArea = All;
                }
                field("Ending No."; Rec."Ending No.")
                {
                    Editable = true;
                    ApplicationArea = All;
                }
                field("Warning No."; Rec."Warning No.")
                {
                    Editable = true;
                    ApplicationArea = All;
                }
                field("Increment-by No."; Rec."Increment-by No.")
                {
                    Editable = true;
                    ApplicationArea = All;
                }
                field("Last No. Used"; Rec."Last No. Used")
                {
                    Editable = true;
                    ApplicationArea = All;
                }
                field(Open; Rec.Open)
                {
                    Editable = true;
                    ApplicationArea = All;
                }
                field("Last Date Used"; Rec."Last Date Used")
                {
                    Editable = true;
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