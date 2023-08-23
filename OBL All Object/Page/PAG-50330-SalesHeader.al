page 50330 "Status Modify"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Permissions = tabledata "Sales Header" = rimd;
    SourceTable = 36;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field(Status; Rec.Status)
                {
                    Editable = true;
                    ApplicationArea = All;

                }
                field("Document Type"; Rec."Document Type")
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
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        if UserId <> 'OBLTILES\TEAM1' then
            Error('You Are not Authorize');
    end;
}