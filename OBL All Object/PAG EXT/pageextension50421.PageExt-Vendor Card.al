pageextension 50421 pageextension50421 extends "Vendor Card"
{
    Editable = false;
    layout
    {
        //17141
        modify("P.A.N. No.")
        {
            Editable = "P.A.N. No.Editable";
        }
        modify(Contact)
        {
            Editable = ContactEditable;
        }
        modify(Name)
        {
            Editable = NameEditable;
        }
        //17141
        addafter("P.A.N. No.")
        {
            field("GST No."; Rec."GST No.")
            {
                Caption = 'Tranporter RCM GST No.';
            }
        }
        modify("Phone No.")
        {
            Caption = 'Mobile Phone No.';
        }
        modify(MobilePhoneNo)
        {
            Caption = 'Phone No.';
        }




        moveafter(Name; "Name 2")
        addbefore("State Code")
        {
            field("Micro Enterprises"; Rec."Micro Enterprises")
            {
                ApplicationArea = All;
            }


            field("Small Enterprises"; Rec."Small Enterprises")
            {
                ApplicationArea = All;
            }
            field("Medium Enterprises"; Rec."Medium Enterprises")
            {
                ApplicationArea = All;
            }
            field("Msme Code"; Rec."Msme Code")
            {
                ApplicationArea = All;
            }
            field("State Desc"; Rec."State Desc")
            {
                ApplicationArea = All;
            }

            field(Zone; Rec.Zone)
            {
                ApplicationArea = All;
            }
            field("Pin Code"; Rec."Pin Code")
            {
                ApplicationArea = All;
            }
            field("Landline No."; Rec."Landline No.")
            {
                ApplicationArea = All;
            }
            field(Region; Rec.Region)
            {
                ApplicationArea = All;
            }
            field(Grade; Rec.Grade)
            {
                ApplicationArea = All;
            }
            field("Net Change"; Rec."Net Change")
            {
                ApplicationArea = All;
            }
            field("<City1>"; Rec.City)
            {
                ApplicationArea = All;
            }
        }
        addafter("State Code")
        {
            field("Vendor Classification"; Rec."Vendor Classification")
            {
                ApplicationArea = All;
            }
            field("Vend. Company Type"; Rec."Vend. Company Type")
            {
                ApplicationArea = All;
            }
            field("Security Amount"; Rec."Security Amount")
            {
                ApplicationArea = All;
            }
            field("Security Date"; Rec."Security Date")
            {
                ApplicationArea = All;
            }
            field(Dsgn; Rec.Dsgn)
            {
                ApplicationArea = All;
            }
            field("Emp Code"; Rec."Emp Code")
            {
                ApplicationArea = All;
            }
            field(Section; Rec.Section)
            {
                ApplicationArea = All;
            }
            field("Department Code"; Rec."Department Code")
            {
                ApplicationArea = All;
            }
            field(Transporter1; Rec.Transporter1)
            {
                ApplicationArea = all;
            }
            field("Date Of Joining"; Rec."Date Of Joining")
            {
                ApplicationArea = All;
            }
            field("194Q Recived Data"; Rec."194Q Recived Data")
            {
                ApplicationArea = All;
            }
            field("194Q"; Rec."194Q")
            {
                ApplicationArea = All;
            }
        }
        addafter("Payment Method Code")
        {
            field("Approver ID"; Rec."Approver ID")
            {
                ApplicationArea = All;
            }
            field("Blocked Vendor"; Rec."Blocked Vendor")
            {
                ApplicationArea = All;
            }
            field(Approved; Rec.Approved)
            {
                ApplicationArea = All;
            }
        }
        moveafter("Approver ID"; "Payment Terms Code")
        moveafter("VAT Registration No."; "VAT Bus. Posting Group", "Vendor Posting Group")
        moveafter("Vendor Posting Group"; "Location Code")
        moveafter("Location Code"; "Currency Code")
        moveafter("Currency Code"; "Pay-to Vendor No.")
        moveafter("Pay-to Vendor No."; "Invoice Disc. Code")
        moveafter("Vendor Posting Group"; "Gen. Bus. Posting Group")
        moveafter(Grade; Blocked)
        movebefore("Landline No."; "IC Partner Code")

        addafter("Home Page")
        {
            field(Balance; Rec.Balance)
            {
                ApplicationArea = All;
            }
            field("Vend Ledger Balance"; Rec."Vend Ledger Balance")
            {
                ApplicationArea = all;
            }
        }
        addafter("Location Code")
        {
            field("Morbi Location Code"; Rec."Morbi Location Code")
            {
                ApplicationArea = all;
            }
            field("Branch Filter"; Rec."Global Dimension 1 Code")
            {
                Caption = 'Branch Filter';
                ApplicationArea = All;
            }
            field("Balance confirmation"; Rec."Balance confirmation")
            {
                ApplicationArea = all;
            }
            field("Balance Conf Date"; Rec."Balance Conf Date")
            {
                ApplicationArea = All;
            }
            field("Bal on Balance Conf Date"; Rec."Bal on Balance Conf Date")
            {
                ApplicationArea = All;
            }

        }
        addafter(City)
        {
            field("<State Code1>"; Rec."State Code")
            {
                ApplicationArea = All;
            }
        }
        modify("E-Mail")
        {
            Caption = 'Supplier E-Mail';
        }
        modify("Aggregate Turnover")
        {
            Editable = true;
        }
        addafter("E-Mail")
        {
            field("A/C user E-mail"; Rec."A/C user E-mail")
            {
                ApplicationArea = All;
            }
        }
        addafter("Tax Information")
        {
            Group(BankDetails)
            {
                Caption = 'Bank Details';

                field("Bank Account Name"; Rec."Bank Account Name")
                {
                    ApplicationArea = all;
                }
                field("Bank A/c"; Rec."Bank A/c")
                {
                    ApplicationArea = all;
                    Editable = "BankA/cEditable";//17141
                }
                field("Bank Beneficiary Name"; Rec."Bank Beneficiary Name")
                {
                    ApplicationArea = all;
                }
                field("Bank Address"; Rec."Bank Address")
                {
                    ApplicationArea = all;
                }
                field("RTGS/NEFT Code"; Rec."RTGS/NEFT Code")
                {
                    ApplicationArea = All;
                }
                field(Picture; Rec.Image)
                {
                    ApplicationArea = All;
                    Caption = 'Picture';
                }
            }
        }
        moveafter("P.A.N. Reference No."; "Aggregate Turnover")
        moveafter("Associated Enterprises"; "ARN No.")
        moveafter("Post Code"; City)
    }
    actions
    {


        addafter("Request Approval")
        {
            action(SendApprovalRequestOld)
            {
                Caption = 'Send A&pproval Request';
                Enabled = NOT OpenApprovalEntriesExist;
                Image = SendApprovalRequest;
                Promoted = true;
                PromotedCategory = Category5;
                ApplicationArea = All;

                trigger OnAction()
                var
                    ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    SendMail: Codeunit "QD Test, PDF Creation & Email";
                begin
                    //SendMail.SendVendorMialApproval(Rec);

                    //MSVrn -->>
                    Rec.TESTFIELD(Name);
                    Rec.TESTFIELD(Address);
                    Rec.TESTFIELD("Address 2");
                    //TESTFIELD("Country/Region Code");
                    //IF "Country/Region Code" =  '01' THEN

                    Rec.TESTFIELD("Post Code"); //(In Case Of India )
                    Rec.TESTFIELD("Pin Code");
                    Rec.TESTFIELD(Contact);
                    Rec.TESTFIELD("Vendor Classification");
                    Rec.TESTFIELD("E-Mail");

                    Rec.TESTFIELD("Bank A/c");
                    Rec.TESTFIELD("Bank Account Name");
                    Rec.TESTFIELD("Bank Address");
                    Rec.TESTFIELD("Bank Beneficiary Name");
                    Rec.TESTFIELD("P.A.N. No.");
                    Rec.TESTFIELD("GST Registration No.");
                    Rec.TESTFIELD("GST Vendor Type");
                    Rec.TESTFIELD("GST No.");
                    //  Rec.TESTFIELD("Vendor Type");

                    SendMail.AppEntryVendor(Rec);

                    IF Rec."Approver ID" <> '' THEN
                        CurrPage.EDITABLE(FALSE);
                    CurrPage.UPDATE(TRUE);

                    //--<<

                    /*
                    IF ApprovalsMgmt.CheckVendorApprovalsWorkflowEnabled(Rec) THEN
                      ApprovalsMgmt.OnSendVendorForApproval(Rec);
                      */

                end;
            }
            action(CancelApprovalRequestOld)
            {
                Caption = 'Cancel Approval Re&quest';
                Enabled = OpenApprovalEntriesExist;
                Image = Cancel;
                Promoted = true;
                PromotedCategory = Category5;
                ApplicationArea = All;

                trigger OnAction()
                var
                    ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    recAppEnt: Record "Approval Entry";
                begin
                    IF CONFIRM('Do you want to cancel %1 approval?', TRUE, Rec."No.") THEN BEGIN
                        recAppEnt.RESET;
                        recAppEnt.SETRANGE("Document No.", Rec."No.");
                        recAppEnt.SETFILTER(Status, '%1', recAppEnt.Status::Open);
                        IF recAppEnt.FINDFIRST THEN BEGIN
                            recAppEnt.Status := recAppEnt.Status::Canceled;
                            recAppEnt.MODIFY;
                            Rec."Approver ID" := '';
                            Rec.MODIFY;
                        END;
                        MESSAGE('Vendor %1 approval request cancelled!', Rec."No.");
                    END
                    ELSE
                        EXIT;

                    //ApprovalsMgmt.OnCancelVendorApprovalRequest(Rec);
                end;
            }
            action(ArchiveVendor)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    IF CONFIRM('Do you want to Arcive Vendor', TRUE) THEN
                        Rec.ArchiveVendor(Rec, USERID);
                end;
            }
        }
        /* modify("Vendor Sections")
        {
            trigger OnAfterAction()
            begin
                IF CONFIRM('Do You want to Create NOD/NOC Lines for 194Q Section', FALSE) THEN BEGIN
                    rec.GenerateNODNOCData();
                end;

            end;
        }15578 */



        addafter(VendorReportSelections)
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
                    VENDLEntry.RESET;
                    VENDLEntry.SETCURRENTKEY("Vendor No.", "Posting Date", "Currency Code");
                    VENDLEntry.SETFILTER("Vendor No.", '%1', 'D0110300107');
                    IF VENDLEntry.FINDFIRST THEN
                        REPEAT
                            VENDLEntry2.RESET;
                            VENDLEntry2.COPY(VENDLEntry);
                            VENDLEntry2.NEXT;
                            MESSAGE('%1    %2', VENDLEntry."Vendor No.", VENDLEntry2."Vendor No.");
                        UNTIL
                        VENDLEntry.NEXT = 0;
                end;
            }

            action("Generate NOD/NOC Lines")
            {
                Visible = false;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    IF CONFIRM('Do you Want to Create NOD/NOC Lines for 194Q', FALSE) THEN BEGIN
                        Rec.GenerateNODNOCData();
                    END;
                end;
            }
            action("Generate All NOD/NOC Lines")
            {
                Enabled = true;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                Visible = true;
                ApplicationArea = All;

                trigger OnAction()
                var
                    Vendor: Record Vendor;
                begin
                    IF CONFIRM('Do You want to Create Allowed Section 194Q', FALSE) THEN BEGIN
                        /*    Vendor.RESET;
                           Vendor.SETFILTER("GST Vendor Type", '<%1', Vendor."GST Vendor Type"::Import);
                           Vendor.SETFILTER(Blocked, '%1', Vendor.Blocked::" ");
                           IF Vendor.FINDFIRST THEN
                               REPEAT
                                   Rec.GenerateNODNOCData(Vendor);
                               UNTIL Vendor.NEXT = 0; */
                        rec.GenerateNODNOCData();
                    END;
                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        ActivateFields();   ////17141
        VendorEDitAccess := (UserId = 'ADMIN');
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        rec."Creation Date" := Today;
        rec."Created By" := UserId;
    end;

    var
        [InDataSet]
        VendorEDitAccess: Boolean;

        OpenApprovalEntriesExist: Boolean;
        //17141
        "P.A.N. No.Editable": Boolean;
        ContactEditable: Boolean;
        NameEditable: Boolean;
        "BankA/cEditable": Boolean;
    //17141



    //Unsupported feature: Code Modification on "ActivateFields(PROCEDURE 3)".

    //procedure ActivateFields();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SetSocialListeningFactboxVisibility;
    ContactEditable := "Primary Contact No." = '';
    "P.A.N. No.Editable" := "P.A.N. Status" = 0;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    "BankA/cEditable" := FALSE;
    NameEditable := FALSE;
    "P.A.N. No.Editable" := FALSE;
    IF ("P.A.N. No." = '') OR (UPPERCASE(USERID) = 'IN001') THEN
        "P.A.N. No.Editable" := TRUE;

    IF (Name <> '') AND (UPPERCASE(USERID) = 'FA011') THEN
        NameEditable := TRUE
    ELSE IF Name = '' THEN
      NameEditable := TRUE;

    IF ("Bank A/c" <> '') AND (UPPERCASE(USERID) = 'FA011') THEN
        "BankA/cEditable" := TRUE
    ELSE IF "Bank A/c" = '' THEN
      "BankA/cEditable" := TRUE;
    */
    //end;
    procedure ActivateFields()
    begin
        "P.A.N. No.Editable" := false;
        ContactEditable := false;
        NameEditable := false;
        "BankA/cEditable" := false;

        ContactEditable := rec."Primary Contact No." = '';
        "P.A.N. No.Editable" := Rec."P.A.N. Status" = Rec."P.A.N. Status"::" ";


        IF (Rec."P.A.N. No." = '') OR (UPPERCASE(USERID) = 'IN001') THEN
            "P.A.N. No.Editable" := TRUE;

        IF (Rec.Name <> '') AND (UPPERCASE(USERID) = 'FA011') THEN
            NameEditable := TRUE
        ELSE
            IF Rec.Name = '' THEN
                NameEditable := TRUE;
        IF (Rec."Bank A/c" <> '') AND (UPPERCASE(USERID) = 'FA011') THEN
            "BankA/cEditable" := TRUE
        ELSE
            IF Rec."Bank A/c" = '' THEN
                "BankA/cEditable" := TRUE;


    end;
    //17141
}

