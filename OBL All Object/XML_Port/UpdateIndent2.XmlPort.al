xmlport 50063 "Update Indent 2"
{
    Format = VariableText;

    schema
    {
        textelement(Root)
        {
            tableelement("Purchase Line"; 50400)
            {
                AutoSave = true;
                XmlName = 'PurchaseLine';
                SourceTableView = WHERE("Document Type" = CONST(1));
                fieldelement(DocumentType; "Purchase Line"."Document Type")
                {
                }
                fieldelement(DocumentNo; "Purchase Line"."Document No.")
                {
                }
                fieldelement(LineNo; "Purchase Line"."Line No.")
                {
                }
                fieldelement(No; "Purchase Line"."No.")
                {
                }
                fieldelement(IndentNo; "Purchase Line"."Indent No.")
                {
                }
                fieldelement(IndentLineNo; "Purchase Line"."Indent Line No.")
                {
                }
                fieldelement(IndentDate; "Purchase Line"."Indent Date")
                {
                }
                fieldelement(CapexNo; "Purchase Line"."Capex No.")
                {

                }
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }
}

