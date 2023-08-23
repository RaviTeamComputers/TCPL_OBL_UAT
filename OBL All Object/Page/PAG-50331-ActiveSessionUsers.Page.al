page 50331 "IT - Active Session Users"
{
    PageType = list;
    ApplicationArea = All;
    UsageCategory = Lists;
    Permissions = tabledata "Active Session" = rimd;
    SourceTable = "Active Session";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = all;
                }
                field("Client Computer Name"; Rec."Client Computer Name")
                {
                    ApplicationArea = All;
                }
                field("Client Type"; Rec."Client Type")
                {
                    ApplicationArea = All;
                }
                field("Database Name"; rec."Database Name")
                {
                    ApplicationArea = All;
                }
                field("Login Datetime"; rec."Login Datetime")
                {
                    ApplicationArea = All;
                }
                field("Server Computer Name"; Rec."Server Computer Name")
                {
                    ApplicationArea = All;
                }
                field("Server Instance ID"; Rec."Server Instance ID")
                {
                    ApplicationArea = All;
                }
                field("Server Instance Name"; rec."Server Instance Name")
                {
                    ApplicationArea = All;
                }
                field("Session ID"; Rec."Session ID")
                {
                    ApplicationArea = All;
                }
                field("Session Unique ID"; Rec."Session Unique ID")
                {
                    ApplicationArea = All;
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                }
                field(SystemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}