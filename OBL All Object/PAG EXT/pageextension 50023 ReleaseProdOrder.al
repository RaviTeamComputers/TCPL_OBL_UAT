pageextension 50023 pageextension50023 extends "Released Prod. Order Lines"
{

    layout
    {
    }
    actions
    {
        modify(ProductionJournal)
        {
            trigger OnBeforeAction()
            var
                myInt: Integer;
            begin
                rec.TestField("Location Code");
            end;
        }
    }

}

