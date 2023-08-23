pageextension 50001 pageextension50001 extends "Company Information"
{
    layout
    {
        addafter(Address)
        {
            field("IC Gen. Bus. Posting Group"; rec."IC Gen. Bus. Posting Group")
            {
                ApplicationArea = All;
            }
        }
        addafter("Home Page")
        {
            field(Picture1; rec.Picture1)
            {
                ApplicationArea = All;
            }
        }
        addafter("VAT Registration No.")
        {
            field("T.I.N No. w.e.f"; rec."T.I.N No. w.e.f")
            {
                ApplicationArea = All;
            }
        }
        addafter(Picture)
        {
            field("IDFC Bank Out Folder"; Rec."IDFC Bank Out Folder")
            {
                ApplicationArea = All;
            }
        }
        addafter(Picture)
        {
            field("IDFC Bank In Folder"; Rec."IDFC Bank In Folder")
            {
                ApplicationArea = All;
            }
        }
        moveafter("Ward No."; "Deductor Category")
    }
    //>>17699
    actions
    {
        addafter("Responsibility Centers")
        {
            group(TestGroup)
            {
                action(TestAction1)
                {
                    Caption = 'TestAction1';

                    AccessByPermission = tabledata "G/L Entry" = RMID;
                    trigger OnAction();
                    var
                        T18: Record Customer;
                    begin
                        IF T18.FindFirst() then begin
                            repeat
                                IF (T18.Blocked = 4) then begin
                                    T18.Blocked := Enum::"Customer Blocked"::"Order Releasing";
                                    T18.Modify();
                                end;
                            until T18.Next() = 0;
                            Message('Done');
                        end;
                    end;
                }
            }
        }
    }
    //<<17699    
}

