report 70017 "Update Indent"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;
    AccessByPermission = tabledata 39 = rimd;

    dataset
    {
        dataitem("Update Indent"; "Update Indent")
        {
            trigger OnPreDataItem()
            var

            begin
                Xmlport.run(50063);
            end;

            trigger OnAfterGetRecord()
            var
                PurchaseLine: Record "Purchase Line";
            begin
                Progress.Open('#1 Processing');
                PurchaseLine.Reset();
                PurchaseLine.SetRange("Document Type", "Update Indent"."Document Type");
                PurchaseLine.SetRange("Document No.", "Update Indent"."Document No.");
                PurchaseLine.SetRange("Line No.", "Update Indent"."Line No.");
                if PurchaseLine.FindSet() then
                    repeat
                        Counter += 1;
                        Progress.Update(1, Counter);
                        PurchaseLine."Indent No." := "Update Indent"."Indent No.";
                        PurchaseLine."Indent Date" := "Update Indent"."Indent Date";
                        PurchaseLine."Indent Line No." := "Update Indent"."Indent Line No.";
                        PurchaseLine."Capex No." := "Update Indent"."Capex No.";
                        PurchaseLine.Modify();
                    until PurchaseLine.Next() = 0;
                Progress.Close();

            end;
        }
    }
    trigger OnPreReport()
    begin
        Clear(Counter);
    end;

    trigger OnPostReport()
    begin
        Message('Total %1 records modified successfully', Counter);
    end;



    var
        Progress: Dialog;
        Counter: Integer;
}