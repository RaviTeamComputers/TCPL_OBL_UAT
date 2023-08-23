page 50396 VendorList
{
    Caption = 'Vendor List Editable';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "Vendor Card";
    SourceTable = 23;
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(Lists)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("State Code"; Rec."State Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("State Desc"; Rec."State Desc")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Balance; Rec.Balance)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Balance (LCY)"; Rec."Balance (LCY)")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Balance Conf Date"; Rec."Balance Conf Date")
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field("Balance confirmation"; Rec."Balance confirmation")
                {
                    ApplicationArea = All;
                    Editable = true;
                    trigger OnValidate()
                    begin
                        UpdateOuststandingOverDueAmtOnCustomer;
                    end;
                }

                field("Vend Ledger Balance"; Rec."Vend Ledger Balance")
                {
                    ApplicationArea = All;
                    Editable = true;
                }

                field("Bal on Balance Conf Date"; Rec."Bal on Balance Conf Date")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Assessee Code"; Rec."Assessee Code")
                {
                    ApplicationArea = All;
                    Editable = true;
                }

                field("Morbi Location Code"; Rec."Morbi Location Code")
                {
                    ApplicationArea = All;
                    Visible = VendorEdit;
                    Editable = VendorEdit;
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
            action("Vendor Balance Update")
            {
                Caption = 'Vendor Balance Update';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                RunObject = Report "Vendor Balance Update";
                ApplicationArea = All;

                trigger OnAction()
                var
                    VENDLEntry: Record "Vendor Ledger Entry";
                    VENDLEntry2: Record "Vendor Ledger Entry";
                begin
                    CurrPage.SaveRecord();
                    // VENDLEntry.RESET;
                    // VENDLEntry.SETCURRENTKEY("Vendor No.", "Posting Date", "Currency Code");
                    // VENDLEntry.SETFILTER("Vendor No.", '%1', 'D0110300107');
                    // IF VENDLEntry.FINDFIRST THEN
                    //     REPEAT
                    //         VENDLEntry2.RESET;
                    //         VENDLEntry2.COPY(VENDLEntry);
                    //         VENDLEntry2.NEXT;
                    //         MESSAGE('%1    %2', VENDLEntry."Vendor No.", VENDLEntry2."Vendor No.");
                    //     UNTIL
                    //     VENDLEntry.NEXT = 0;
                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        UserSetup: Record "User Setup";
    begin
        if UserSetup.GET(UserId) then
            if NOT UserSetup."Approval Administrator" then
                Error('You are not authorised to Open the Page [Approval Adm]');
    end;

    trigger OnAfterGetRecord()
    var
        UserSetup: Record "User Setup";
    begin
        VendorEdit := UserId = 'ADMIN';
    end;

    procedure UpdateOuststandingOverDueAmtOnCustomer()
    var
        OutstandingAmt: Decimal;
        vendtLedgerEntry: Record "Vendor Ledger Entry";
    begin
        rec.TestField("Balance Conf Date");
        OutstandingAmt := 0;
        vendtLedgerEntry.RESET;
        vendtLedgerEntry.SETRANGE("Vendor No.", rec."No.");
        IF vendtLedgerEntry.FINDFIRST THEN
            REPEAT
                IF (vendtLedgerEntry."Posting Date" <= rec."Balance Conf Date") THEN BEGIN
                    vendtLedgerEntry.CALCFIELDS(Amount);
                    OutstandingAmt += vendtLedgerEntry.Amount;
                END;
            UNTIL vendtLedgerEntry.NEXT = 0;
        rec."Bal on Balance Conf Date" := OutstandingAmt;
        rec.MODIFY;
        Commit;
    end;

    var
        [InDataSet]
        VendorEdit: Boolean;
}