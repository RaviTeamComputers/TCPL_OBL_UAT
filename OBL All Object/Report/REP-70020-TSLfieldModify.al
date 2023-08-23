report 70020 ModifyDataTransferShipLine
{
    Caption = 'Update transfer Shipment Lines Size & Quality Code';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;
    Permissions = TableData "Transfer Shipment Line" = rm;
    dataset
    {
        dataitem("Transfer Shipment Line"; "Transfer Shipment Line")
        {
            RequestFilterFields = "Posting Date";
            trigger OnPreDataItem()
            begin

                // ItemRec.Reset();
                // ItemRec.SetFilter("Size Code", '<>%1', '');
                // IF ItemRec.FindSet() then begin
                //     repeat
                //         TSL_rec.Reset();
                //         TSL_rec.SetRange("Item No.", ItemRec."No.");
                //         TSL_rec.SetFilter("Size Code", '%1', '');
                //         IF TSL_rec.FindSet() then begin
                //             TSL_rec.ModifyAll("Size Code", ItemRec."Size Code");
                //         end;
                //     until ItemRec.next() = 0;
                // end;
                // ItemRec.Reset();
                // ItemRec.SetFilter("Quality Code", '<>%1', '');
                // IF ItemRec.FindSet() then begin
                //     repeat
                //         TSL_rec.Reset();
                //         TSL_rec.SetRange("Item No.", ItemRec."No.");
                //         TSL_rec.SetFilter("Quality Code", '%1', '');
                //         IF TSL_rec.FindSet() then begin
                //             TSL_rec.ModifyAll("Quality Code", ItemRec."Quality Code");
                //         end;
                //     until ItemRec.next() = 0;
                // end;
                // // Message(('Done'));

            end;

            trigger OnAfterGetRecord()
            begin
                ILE.Reset();
                ILE.SetRange("Entry Type", ILE."Entry Type"::Transfer);
                ILE.SetRange("Document Type", ILE."Document Type"::"Transfer Shipment");
                ILE.SetRange("Location Code", "Transfer Shipment Line"."Transfer-from Code");
                ILE.SetRange("Posting Date", "Transfer Shipment Line"."Shipment Date");
                ILE.SetRange("Document No.", "Transfer Shipment Line"."Document No.");
                ILE.SetRange("Item No.", "Transfer Shipment Line"."Item No.");
                if ILE.FindFirst() then begin
                    Clear(updateBool);
                    if ("Transfer Shipment Line"."Size Code" = '') then begin
                        "Transfer Shipment Line"."Size Code" := ILE."Size Code";
                        updateBool := true;
                    end;
                    if ("Transfer Shipment Line"."Quality Code" = '') then begin
                        "Transfer Shipment Line"."Quality Code" := ILE."Quality Code";
                        updateBool := true;
                    end;

                end;


                IF ("Transfer Shipment Line"."Size Code" = '') then begin
                    ItemRec.Get("Transfer Shipment Line"."Item No.");
                    "Transfer Shipment Line"."Size Code" := ItemRec."Size Code";
                    updateBool := true;

                end;
                IF ("Transfer Shipment Line"."Quality Code" = '') then begin
                    ItemRec.Get("Transfer Shipment Line"."Item No.");
                    "Transfer Shipment Line"."Quality Code" := ItemRec."Quality Code";
                    updateBool := true;

                end;
                If updateBool = true then
                    "Transfer Shipment Line".Modify()
            end;
        }
    }
    var
        ItemRec: Record Item;
        TSL_rec: Record "Transfer Shipment Line";
        ILE: Record "Item Ledger Entry";
        updateBool: Boolean;
}