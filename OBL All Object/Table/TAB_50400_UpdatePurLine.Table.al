table 50400 "Update Indent"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document Type"; Enum "Purchase Document Type")
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "No."; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Indent No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Indent Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Indent Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Capex No."; Code[30])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}