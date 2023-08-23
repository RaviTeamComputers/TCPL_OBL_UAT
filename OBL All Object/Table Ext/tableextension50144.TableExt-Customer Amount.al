tableextension 50144 tableextension50144 extends "Customer Amount"
{
    fields
    {
        field(4; "SP Code"; Code[20])
        {
        }
        field(5; "SNo."; Integer)
        {
        }
        field(50000; Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50001; Zone; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50002; "Sales Teritory"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50003; "Customer Type"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(50004; City; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(50005; State; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(50006; "Total Order Qty."; Decimal)
        {
            CalcFormula = Sum("Sales Line".Quantity WHERE("Document Type" = CONST(Order),
                                                           "Sell-to Customer No." = FIELD("Customer No.")));
            FieldClass = FlowField;
        }
        field(50007; "Outstanding Qty."; Decimal)
        {
            CalcFormula = Sum("Sales Line"."Outstanding Quantity" WHERE("Document Type" = CONST(Order),
                                                                         "Sell-to Customer No." = FIELD("Customer No.")));
            FieldClass = FlowField;
        }
        field(50008; "Reserved Qty."; Decimal)
        {
        }
        field(50009; "Outstanding Order Value"; Decimal)
        {
            CalcFormula = Sum("Sales Line"."Outstanding Amount" WHERE("Document Type" = CONST(Order),
                                                                       "Sell-to Customer No." = FIELD("Customer No.")));
            FieldClass = FlowField;
        }
        field(50010; "Total Order Lines (Nos.)"; Integer)
        {
            CalcFormula = Count("Sales Line" WHERE("Document Type" = CONST(Order),
                                                    "Sell-to Customer No." = FIELD("Customer No.")));
            FieldClass = FlowField;
        }
        field(50011; "No Full Reservation Lines (Nos"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50012; "Area Code"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(50014; "City Name"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(50016; "State Name"; text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(50030; "CF Limit"; decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                UpdateAvailableCreditLimit();
            end;
        }
        field(50035; "Credit Limit"; decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                UpdateAvailableCreditLimit();
            end;
        }
        field(50040; "Total Outstanding"; decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                UpdateAvailableCreditLimit();
            end;
        }
        field(50045; "Total Overdue amount"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50050; "MTD Billing"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50055; "MTD Collection"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50060; "Open Order Value"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50065; "Open Order Value Credit"; decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                UpdateAvailableCreditLimit();
            end;
        }
        field(50070; "Release Order Value"; decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                UpdateAvailableCreditLimit();
            end;
        }
        field(50075; "Available Credit Limit"; decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {

        //Unsupported feature: Deletion (KeyCollection) on ""Amount (LCY),Amount 2 (LCY),Customer No."(Key)".

        /* key(Key2; "SNo.", "SP Code", "Amount 2 (LCY)", "Amount (LCY)", "Customer No.")
         {
             Clustered = true;
         }*/
    }
    procedure UpdateAvailableCreditLimit()
    var
        myInt: Integer;
    begin
        "Available Credit Limit" := "Credit Limit" - "Total Outstanding" - "Open Order Value Credit" - "Release Order Value";
    end;
}

