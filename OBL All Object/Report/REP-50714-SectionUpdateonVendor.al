report 50714 "Section Update On Vendor"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;
    UseRequestPage = false;

    dataset
    {
        dataitem(Vendor; Vendor)
        {

            dataitem("Allowed Sections"; "Allowed Sections")
            {
                DataItemLink = "Vendor No" = field("No.");
                DataItemTableView = SORTING("Vendor No") where("TDS Section" = const('194Q'));
                trigger OnAfterGetRecord()
                begin
                    "Allowed Sections"."Default Section" := true;
                    "Allowed Sections".Modify(true);
                end;
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        myInt: Integer;
}