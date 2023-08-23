page 50336 "IT Indent Header"
{
    Caption = 'IT-Indent Header';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Indent Header";
    Editable = true;
    Permissions = tabledata 50016 = rmi;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field("Authorization 1"; Rec."Authorization 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Authorization 1 field.';
                }
                field("Authorization 1 Date"; Rec."Authorization 1 Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Authorization 1 Date field.';
                }
                field("Authorization 1 Time"; Rec."Authorization 1 Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Authorization 1 Time field.';
                }
                field("Authorization 2"; Rec."Authorization 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Authorization 2 field.';
                }
                field("Authorization 2 Date"; Rec."Authorization 2 Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Authorization 2 Date field.';
                }
                field("Authorization 2 Time"; Rec."Authorization 2 Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Authorization 2 Time field.';
                }
                field("Authorization 3"; Rec."Authorization 3")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Authorization 3 field.';
                }
                field("Authorization 3 Date"; Rec."Authorization 3 Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Authorization 3 Date field.';
                }
                field("Authorization 3 Time"; Rec."Authorization 3 Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Authorization 3 Time field.';
                }
                field("Authorization Date"; Rec."Authorization Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Authorization Date field.';
                }
                field("Authorization Time"; Rec."Authorization Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Authorization Time field.';
                }
                field("Auto Indent"; Rec."Auto Indent")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Auto Indent field.';
                }
                field("Capex No."; Rec."Capex No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Capex No. field.';
                }
                field("Closed Date"; Rec."Closed Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Closed Date field.';
                }
                field("Closed Time"; Rec."Closed Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Closed Time field.';
                }
                field(comment; Rec.comment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the comment field.';
                }
                field(Commented; Rec.Commented)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Commented field.';
                }
                field("Completely Ordered"; Rec."Completely Ordered")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Completely Ordered field.';
                }
                field("Created By"; Rec."Created By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created By field.';
                }
                field(Deleted; Rec.Deleted)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Deleted field.';
                }
                field("Department Code"; Rec."Department Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Department Code field.';
                }
                field("Dept Name"; Rec."Dept Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dept Name field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Executed By"; Rec."Executed By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Executed By field.';
                }
                field("Group Code"; Rec."Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Group Code field.';
                }
                field(Hold; Rec.Hold)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Hold field.';
                }
                field("Hold By"; Rec."Hold By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Hold By field.';
                }
                field("Hold on"; Rec."Hold on")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Hold on field.';
                }
                field("Indent Date"; Rec."Indent Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Indent Date field.';
                }
                field("Job Indent"; Rec."Job Indent")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Indent field.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Location Code field.';
                }
                field("Mail Approval"; Rec."Mail Approval")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mail Approval field.';
                }
                field("Mail Authorization1"; Rec."Mail Authorization1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mail Authorization1 field.';
                }
                field("Mail Authorization2"; Rec."Mail Authorization2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mail Authorization2 field.';
                }
                field("Mail Authorization3"; Rec."Mail Authorization3")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mail Authorization3 field.';
                }
                field("Mail Authorized"; Rec."Mail Authorized")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mail Authorized field.';
                }

                field("No. Series"; Rec."No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. Series field.';
                }
                field("Plant Code"; Rec."Plant Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Plant Code field.';
                }
                field("Reason of Rejection"; Rec."Reason of Rejection")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reason of Rejection field.';
                }
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Remarks field.';
                }
                field(Replied; Rec.Replied)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Replied field.';
                }
                field("Requition Type"; Rec."Requition Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Requition Type field.';
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
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User ID field.';
                }
                field("Validate Upto"; Rec."Validate Upto")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Validate Upto field.';
                }
                field("Validity Period"; Rec."Validity Period")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Validity Period field.';
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