pageextension 50418 pageextension50418 extends "Customer List"
{

    layout
    {

        modify("Salesperson Code")
        {
            Visible = true;
            ApplicationArea = all;
        }
        moveafter("Application Method"; "Gen. Bus. Posting Group", "IC Partner Code", "Last Date Modified", "Post Code", Reserve, "Salesperson Code", "Shipping Advice", "Customer Posting Group", "Customer Disc. Group", "Currency Code", "Country/Region Code")


        addafter("Base Calendar Code")
        {
            //>>17699
            field("HQ Town"; rec."HQ Town")
            {
                ApplicationArea = All;
            }
            field("PCH Name"; rec."PCH Name")
            {
                ApplicationArea = All;
                Caption = 'Branch Head Name';
            }
            //<<17699
            //>>17699
            field("Creation Date"; rec."Creation Date")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field("Security Amount"; rec."Security Amount")
            {
                ApplicationArea = All;
            }
            field(Outbreaks; rec.Outbreaks)
            {
                ApplicationArea = All;
                Caption = 'Ashwamedha';
            }
            field(OBTB; rec."Coco Customer")
            {
                ApplicationArea = All;
                Caption = 'OBTB';
            }
            //<<17699

            field("GST Registration No."; Rec."GST Registration No.")
            {
                ApplicationArea = All;
            }
            field("State Code"; Rec."State Code")
            {
                ApplicationArea = All;
            }
            field("Salesperson Description"; Rec."Salesperson Description")
            {
                ApplicationArea = all;
            }

            field("Pin Code"; Rec."Pin Code")
            {
                ApplicationArea = all;
            }
            field("Customer Status"; Rec."Customer Status")
            {
                ApplicationArea = all;
            }
            field("Credit Rating"; Rec."Credit Rating")
            {
                ApplicationArea = all;
            }
            field("Parent Customer No."; Rec."Parent Customer No.")
            {
                ApplicationArea = all;
            }
            field("Sales Per Mob"; Rec."Sales Per Mob")
            {
                ApplicationArea = all;
            }

            field("CF Limit"; Rec."CF Limit")
            {
                ApplicationArea = all;
            }
            field("Coco Customer"; Rec."Coco Customer")
            {
                Caption = 'OBTB';
                ApplicationArea = all;
            }
            field("Security Date"; Rec."Security Date")
            {
                ApplicationArea = all;
            }
            field("Dealer File No."; Rec."Dealer File No.")
            {
                ApplicationArea = all;
            }
            field("Private SP Resp."; Rec."Private SP Resp.")
            {
                ApplicationArea = all;
            }
            field("Govt. SP Resp."; Rec."Govt. SP Resp.")
            {
                ApplicationArea = all;
            }
            field("Old TIN"; Rec."Old TIN")
            {
                ApplicationArea = all;
            }
            field("Security Checque Max Limit 1"; Rec."Security Checque Max Limit 1")
            {
                ApplicationArea = all;
            }
            field("Security Cheque 1 Bank Name"; Rec."Security Cheque 1 Bank Name")
            {
                ApplicationArea = all;
            }
            field("Security Cheque 2 Bank Name"; Rec."Security Cheque 2 Bank Name")
            {
                ApplicationArea = all;
            }
            field(Zone; Rec.Zone)
            {
                ApplicationArea = all;
            }
            field("Security Cheque 2"; Rec."Security Cheque 2")
            {
                ApplicationArea = all;
            }

            field("Bank Account Name"; Rec."Bank Account Name")
            {
                ApplicationArea = all;
            }
            field("Security Cheque 1"; Rec."Security Cheque 1")
            {
                ApplicationArea = all;
            }
            field("Security Chq Availability"; Rec."Security Chq Availability")
            {
                ApplicationArea = all;
            }
            field(Longitude; Rec.Longitude)
            {
                ApplicationArea = all;
            }
            field(Latitude; Rec.Latitude)
            {
                ApplicationArea = all;
            }
            field("SP E-Maill ID"; Rec."SP E-Maill ID")
            {
                ApplicationArea = all;
            }


            field("Customer Type"; Rec."Customer Type")
            {
                ApplicationArea = all;
            }
            field("Outstanding Amount"; Rec."Outstanding Amount")
            {
                ApplicationArea = all;
            }

            field("State Desc."; Rec."State Desc.")
            {
                ApplicationArea = all;
            }


            field("Discount Group"; Rec."Discount Group")
            {
                ApplicationArea = all;
            }
            field("Customer Category"; Rec."Customer Category")
            {
                ApplicationArea = all;
            }
            field("Tableau Zone"; Rec."Tableau Zone")
            {
                ApplicationArea = all;
            }
            field("Aadhaar No."; Rec."Aadhaar No.")
            {
                ApplicationArea = all;
            }
            field("Mother Account Name"; Rec."Mother Account Name")
            {
                ApplicationArea = all;
            }
            field("TAN No."; Rec."TAN No.")
            {
                ApplicationArea = all;
            }
            field(CustBalance; CustBalance)
            {
                ApplicationArea = all;
            }
            field("Area Code"; Rec."Area Code")
            {
                Caption = 'Sales Territory';
                ApplicationArea = all;
            }
            field("Virtual ID"; Rec."Virtual ID")
            {
                ApplicationArea = all;
            }
            field("Balance Confirmation"; Rec."Balance Confirmation")
            {
                ApplicationArea = all;
            }
            field("Balance Conf Recd Date"; Rec."Balance Conf Recd Date")
            {
                ApplicationArea = all;
            }
            field("PCH Code"; Rec."PCH Code")
            {
                ApplicationArea = all;
            }
            field("Zonal Manager"; Rec."Zonal Manager")
            {
                ApplicationArea = all;
            }
            field("Zonal Head"; Rec."Zonal Head")
            {
                ApplicationArea = all;
            }

            field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
            {
                ApplicationArea = All;
            }
            field(Address; Rec.Address)
            {
                ApplicationArea = All;
            }
            field("Address 2"; Rec."Address 2")
            {
                ApplicationArea = All;
            }
            field(City; Rec.City)
            {
                ApplicationArea = All;
            }
            field("Telex No."; Rec."Telex No.")
            {
                ApplicationArea = All;
            }
            field("Our Account No."; Rec."Our Account No.")
            {
                ApplicationArea = All;
            }
            field("Territory Code"; Rec."Territory Code")
            {
                ApplicationArea = All;
            }
            field("Debit Amount"; Rec."Debit Amount")
            {
                ApplicationArea = All;
            }
            field("Credit Amount"; Rec."Credit Amount")
            {
                ApplicationArea = All;
            }
            field(Balance; Rec.Balance)
            {
                ApplicationArea = All;
            }
            field("E-Mail"; Rec."E-Mail")
            {
                ApplicationArea = All;
            }
            field("P.A.N. No."; Rec."P.A.N. No.")
            {
                ApplicationArea = All;
            }
            field("P.A.N. Reference No."; Rec."P.A.N. Reference No.")
            {
                ApplicationArea = All;
            }
            field("Net Change"; Rec."Net Change")
            {
                ApplicationArea = All;
            }
            field(Amount; Rec.Amount)
            {
                ApplicationArea = All;
            }
            field("Net Change (LCY)"; Rec."Net Change (LCY)")
            {
                ApplicationArea = All;
            }
            field("TCS Applicable"; TCSApplicable)
            {
                Editable = false;
                ApplicationArea = All;
            }
            field("Cust. Balance"; CustBalance)
            {
                Editable = false;
                ApplicationArea = All;
            }

        }
        addafter("TCS Applicable")
        {
            field("TCS Charge Stop Date"; Rec."TCS Charge Stop Date")
            {
                Editable = false;
                ApplicationArea = all;
            }
        }
        moveafter("GST Registration No."; "Sales (LCY)")
        moveafter("Global Dimension 1 Code"; "Name 2")
        moveafter("Net Change (LCY)"; "Balance (LCY)")
    }
    actions
    {
        addafter(ApplyTemplate)
        {
            action(CreateCustAsVendor)
            {
                Caption = 'Create AS Vendor';
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = all;
                trigger OnAction()
                begin
                    IF CONFIRM('Do you want to create as Vendor', False) THEN BEGIN
                        rec.CreateAsVendor(Rec);
                    END;
                end;
            }
        }

        addafter(ReportCustomerPaymentReceipt)
        {
            action(UpdateTemp)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    CustLedEntry: Record "Cust. Ledger Entry";
                    SIH: Record "Sales Invoice Header";
                begin
                    CustLedEntry.RESET;
                    CustLedEntry.SETRANGE("Document Type", CustLedEntry."Document Type"::Invoice);
                    CustLedEntry.SETRANGE("Dealer Code", '');
                    IF CustLedEntry.FINDFIRST THEN
                        REPEAT
                            SIH.RESET;
                            SIH.SETRANGE("No.", CustLedEntry."Document No.");
                            IF SIH.FINDFIRST THEN BEGIN
                                CustLedEntry."Dealer Code" := SIH."Dealer Code";
                                CustLedEntry.MODIFY;
                            END;
                        UNTIL
                        CustLedEntry.NEXT = 0;
                end;
            }
        }
    }
    var
        Cust: Page "Customer Card";
        UserSetup: Record "User Setup";
        [InDataSet]

        BalanceVisible: Boolean;
        [InDataSet]
        "Net ChangeVisible": Boolean;
        [InDataSet]
        "Balance (LCY)Visible": Boolean;
        [InDataSet]
        CustomerEnable: Boolean;
        SPPCHGoalSheetCalculation: Codeunit "SP  PCH Goal Sheet Calculation";
        CustBalance: Decimal;
        [InDataSet]
        TCSApplicable: Boolean;
        TCS: Record "Allowed NOC";


    trigger OnAfterGetRecord()
    var
    begin
        //Upgrade(+)
        //MSAK.BEGIN 050515
        //RB Rec.FILTERGROUP(2);
        IF GetLocations <> '' THEN
            Rec.SETFILTER("Global Dimension 1 Code", GetLocations);
        Rec.FILTERGROUP(0);
        //MSAK.END 050515

        //Upgrade(-)

        CustBalance := SPPCHGoalSheetCalculation.CalcActualBalance(Rec."No.", TODAY);

        TCSApplicable := FALSE;
        TCS.SETFILTER("Customer No.", '%1', rec."No.");
        TCS.SETFILTER("TCS Nature of Collection", '%1', '206C-1H');
        IF TCS.FINDFIRST THEN
            TCSApplicable := TRUE;

    end;

    trigger OnOpenPage()
    begin
        CurrPage.LOOKUPMODE := TRUE;
        CustomerEnable := TRUE;
        "Balance (LCY)Visible" := TRUE;
        "Net ChangeVisible" := TRUE;
        BalanceVisible := TRUE;
        //Upgrade(+)
        //MSAK.BEGIN 050515
        Rec.FILTERGROUP(2);
        IF GetLocations <> '' THEN
            Rec.SETFILTER("Global Dimension 1 Code", GetLocations);
        Rec.FILTERGROUP(0);
        //MSAK.END 050515

        //Ori Ut 21-02-11 For Checking
        IF USERID IN ['de025'] THEN BEGIN
            CurrPage.EDITABLE(FALSE);
            CustomerEnable := FALSE;
            BalanceVisible := FALSE;
            "Net ChangeVisible" := FALSE;
            "Balance (LCY)Visible" := FALSE;
        END;
        //Ori Ut 21-02-11

        //Upgrade(-)

    end;


    //Unsupported feature: Code Insertion on "OnInit".

    //trigger OnInit()
    //Parameters and return type have not been exported.
    //begin
    /*
                 CurrPage.LOOKUPMODE := TRUE;
                 CustomerEnable := TRUE;
                 "Balance (LCY)Visible" := TRUE;
                 "Net ChangeVisible" := TRUE;
                 BalanceVisible := TRUE;
    */
    //end;



    procedure GetLocations(): Text[800]
    var
        Loc: Text[800];
        UserLocation: Record "User Location";
    begin
        //MSAK Begin 05-05-15
        UserLocation.RESET;
        UserLocation.SETRANGE("User ID", USERID);
        UserLocation.SETFILTER("View Customer", '%1', TRUE);
        IF UserLocation.FINDFIRST THEN BEGIN
            REPEAT
                IF Loc = '' THEN
                    Loc := UserLocation."Location Code"
                ELSE
                    Loc := Loc + '|' + UserLocation."Location Code";
            UNTIL UserLocation.NEXT = 0;
        END;
        EXIT(Loc);
        //MSAK End 05-05-15
    end;
}

