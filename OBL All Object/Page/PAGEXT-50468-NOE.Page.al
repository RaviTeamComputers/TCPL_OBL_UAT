page 50468 NOE
{
    PageType = List;
    Caption = 'NOE Page';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "NOE Permission";
    Permissions = tabledata "NOE Permission" = rimd;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(NOE; Rec.NOE)
                {
                    ApplicationArea = All;

                }
                field(SNOE; Rec.SNOE)
                {
                    ApplicationArea = All;
                }
                field(Approver; Rec.Approver)
                {
                    ApplicationArea = All;
                }
                field(Limit; Rec.Limit)
                {
                    ApplicationArea = All;
                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
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