pageextension 50459 ItemCard extends "Item Card"
{


    layout
    {
        addafter("Lead Time Calculation")
        {
            //>>17699
            field("Prod. Consumption Item"; Rec."Prod. Consumption Item")
            {
                ApplicationArea = All;
            }
            field("Manuf. Strategy"; Rec."Manuf. Strategy")
            {
                ApplicationArea = All;
            }
            //<<17699
            field(Premium; Rec.Premium)
            {
                ApplicationArea = All;
            }
            field(Commercial; Rec.Commercial)
            {
                ApplicationArea = All;
            }
        }
        //>>

        modify("No.")
        {
            Editable = "No.Editable";
        }
        modify(Description)
        {
            Editable = DescriptionEditable;
            ;
        }
        modify("Search Description")
        {
            Editable = "Search DescriptionEditable";

        }
        modify(AssemblyBOM)
        {
            Editable = "Assembly BOMEditable";
        }
        modify("Inventory Posting Group")
        {
            Editable = InventoryPostingGroupEditable;
        }
        modify("Shelf No.")
        {
            Editable = "Shelf No.Editable";

        }


        modify("Item Disc. Group")
        {
            Editable = "Allow Invoice Disc.Editable";

        }
        Modify("Unit Price")
        {
            Editable = "Unit PriceEditable";

        }
        modify("Price/Profit Calculation")
        {
            Editable = PriceProfitCalculationEditable;

        }
        modify("Profit %")
        {
            Editable = "Profit %Editable";
        }
        modify("Costing Method")
        {
            Editable = "Costing MethodEditable";
        }
        modify("Unit Cost")
        {
            Editable = "Unit CostEditable";
        }
        modify("Standard Cost")
        {
            Editable = "Standard CostEditable";
        }
        modify("Last Direct Cost")
        {
            Editable = "Last Direct CostEditable";

        }
        modify("Indirect Cost %")
        {
            Editable = "Indirect Cost %Editable";
        }
        modify("Cost is Adjusted")
        {
            Editable = "Cost is AdjustedEditable";
        }
        modify("Vendor No.")
        {
            Editable = "Vendor No.Editable";
        }
        modify("Vendor Item No.")
        {
            Editable = "Vendor Item No.Editable";
        }
        modify("Lead Time Calculation")
        {
            Editable = "Lead Time CalculationEditable";
        }
        modify("Reorder Point")
        {
            Editable = "Reorder PointEditable";
        }
        modify("Maximum Inventory")
        {
            Editable = "Maximum InventoryEditable";
        }
        modify("Reorder Quantity")
        {
            Editable = "Reorder QuantityEditable";
        }
        modify("Gross Weight")
        {
            Editable = "Gross WeightEditable";
        }
        modify("Net Weight")
        {
            Editable = "Net WeightEditable";
        }
        modify("Cost is Posted to G/L")
        {
            Editable = "Cost is Posted to G/LEditable";

        }
        modify("Last Date Modified")
        {
            Editable = "Last Date ModifiedEditable";
        }
        modify(Inventory)
        {
            Editable = InventoryEditable;
        }
        modify("Net Invoiced Qty.")
        {
            Editable = "Net Invoiced Qty.Editable";
        }
        modify("Qty. on Purch. Order")
        {
            Editable = "Qty. on Purch. OrderEditable";

        }
        modify("Qty. on Sales Order")
        {
            Editable = "Qty. on Sales OrderEditable";
        }
        modify("Gen. Prod. Posting Group")
        {
            Editable = GenProdPostingGroupEditable;
        }
        modify("Country/Region of Origin Code")
        {
            Editable = CountryRegionofOriginCodeEdita;
        }
        modify("Tax Group Code")
        {
            Editable = "Tax Group CodeEditable";
        }
        modify("VAT Prod. Posting Group")
        {
            Editable = VATProdPostingGroupEditable;
        }
        modify(Reserve)
        {
            Editable = ReserveEditable;
        }
        modify("Lot Size")
        {
            Editable = "Lot SizeEditable";
        }
        modify("Serial Nos.")
        {
            Editable = "Serial Nos.Editable";
        }
        modify("Scrap %")
        {
            Editable = "Scrap %Editable";
        }
        modify("Minimum Order Quantity")
        {
            Editable = "Minimum Order QuantityEditable";
        }
        modify("Maximum Order Quantity")
        {
            Editable = "Maximum Order QuantityEditable";
        }
        modify("Safety Stock Quantity")
        {
            Editable = "Safety Stock QuantityEditable";
        }
        modify("Order Multiple")
        {
            Editable = "Order MultipleEditable";

        }
        modify("Safety Lead Time")
        {
            Editable = "Safety Lead TimeEditable";
        }
        modify("Flushing Method")
        {
            Editable = "Flushing MethodEditable";
        }
        modify("Replenishment System")
        {
            Editable = "Replenishment SystemEditable";
        }
        Modify("Rounding Precision")
        {
            Editable = "Rounding PrecisionEditable";
        }
        modify("Sales Unit of Measure")
        {
            Editable = "Sales Unit of MeasureEditable";
        }
        modify("Purch. Unit of Measure")
        {
            Editable = "Purch. Unit of MeasureEditable";
        }

        modify("Reordering Policy")
        {
            Editable = "Reordering PolicyEditable";
        }
        modify("Include Inventory")
        {
            Editable = "Include InventoryEditable";

        }
        modify("Manufacturing Policy")
        {
            Editable = "Manufacturing PolicyEditable";
        }
        modify("Stockkeeping Unit Exists")
        {
            Editable = StockkeepingUnitExistsEditable;
        }
        modify("Manufacturer Code")
        {
            Editable = "Manufacturer CodeEditable";
        }
        modify("Item Category Code")
        {
            Editable = "Item Category CodeEditable";
        }
        modify("Item Tracking Code")
        {
            Editable = "Item Tracking CodeEditable";
        }
        Modify("Lot Nos.")
        {
            Editable = "Lot Nos.Editable";
        }
        modify("Expiration Calculation")
        {
            Editable = "Expiration CalculationEditable";
        }
        modify("Special Equipment Code")
        {
            Editable = "Special Equipment CodeEditable";
        }
        modify("Put-away Template Code")
        {
            Editable = "Put-away Template CodeEditable";
        }
        modify("Put-away Unit of Measure Code")
        {
            Editable = PutawayUnitofMeasureCodeEditab;
        }
        modify("Phys Invt Counting Period Code")
        {
            Editable = PhysInvtCountingPeriodCodeEdit;
        }
        modify("Last Counting Period Update")
        {
            Editable = LastCountingPeriodUpdateEditab;
        }
        modify("Last Phys. Invt. Date")
        {
            Editable = "Last Phys. Invt. DateEditable";
        }
        modify("Use Cross-Docking")
        {
            Editable = "Use Cross-DockingEditable";
        }
        modify("Identifier Code")
        {
            Editable = "Identifier CodeEditable";
        }
        modify(Subcontracting)
        {
            Editable = SubcontractingEditable;
        }
        modify("Sub. Comp. Location")
        {
            Editable = "Sub. Comp. LocationEditable";
        }
        modify("Price Includes VAT")
        {
            Editable = "Price Inclusive of TaxEditable";
        }
        modify(type)
        {
            Editable = "Type CodeEditable";
        }
        //<<

        //>>
        modify("Base Unit of Measure")
        {
            Caption = 'Base Unit of Measure';
            Visible = true;
            Editable = true;

            trigger OnLookup(var Text: Text): Boolean
            var
                ItemUnitOfMeasure: Record "Item Unit of Measure";
            begin
                //>>17699
                ItemUnitOfMeasure.Reset();
                ItemUnitOfMeasure.SetRange("Item No.", Rec."No.");
                if ItemUnitOfMeasure.FindSet() then begin
                    IF Page.RunModal(0, ItemUnitOfMeasure) = ACTION::LookupOK then begin
                        Rec."Base Unit of Measure" := ItemUnitOfMeasure.Code;
                        Rec.Modify();
                    end;
                end else begin
                    ItemUnitOfMeasure.Reset();
                    IF Page.RunModal(0, ItemUnitOfMeasure) = ACTION::LookupOK then begin
                        Rec."Base Unit of Measure" := ItemUnitOfMeasure.Code;
                        Rec.Modify();
                    end;
                end;
            end;
        }
        //<<

        addafter(Description)
        {
            field("Description 2"; Rec."Description 2")
            {
                ApplicationArea = all;
                Editable = "Description 2Editable";
            }
            field("End Use Item"; Rec."End Use Item")
            {
                ApplicationArea = all;
            }
        }
        addafter("Shelf No.")
        {
            field("Shelf Location Dra"; Rec."Shelf Location Dra")
            {
                ApplicationArea = all;
                Editable = "Shelf No.DraEditable";
            }
            field("Shelf Location HSK"; Rec."Shelf Location HSK")
            {
                ApplicationArea = all;
                Editable = "Shelf No.HSKEditable";
            }
        }
        addafter(Type)
        {
            field("Base Unit Of Measure New"; Rec."Base Unit Of Measure New")
            {
                ApplicationArea = all;
                Visible = false;
            }

        }
        moveafter("Purchasing Code"; Inventory, "Qty. on Sales Order")

        addafter(Inventory)
        {

            field("Inventory In CRT"; Rec."Inventory In CRT")
            {
                ApplicationArea = all;
            }

            field("Reserved Qty. on Inventory"; Rec."Reserved Qty. on Inventory")
            {
                ApplicationArea = all;
                Editable = ReservedQtyonInventoryEditable;
            }
        }
        moveafter("Service Item Group"; Blocked)
        modify(Blocked)
        {
            Editable = BlockedEditable;
            ApplicationArea = All;
            Visible = true;
        }
        addafter("Service Item Group")
        {
            field(Blocked2; Rec.Blocked2)
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("Transfer Order Blocked"; Rec."Transfer Order Blocked")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("Indent Blocked"; Rec."Indent Blocked")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("Purchase Blocked"; Rec."Purchase Blocked")
            {
                ApplicationArea = All;
                Visible = true;
            }
            field(Retained; Rec.Retained)
            {
                ApplicationArea = All;
                Visible = true;
            }
            field(Liquidaton; Rec.Liquidaton)
            {
                ApplicationArea = All;
                Visible = true;
            }
            field("Hide Items"; Rec."Hide Items")
            {
                ApplicationArea = All;
                Visible = true;
            }
        }
    }

    actions
    {
        addbefore("Unit of Measure")
        {
            action(UpdateBase)
            {
                ApplicationArea = All;
                Visible = false;
                Promoted = true;
                trigger OnAction()
                var
                    RecItem: Record Item;
                    Counter: Integer;
                begin
                    Clear(Counter);
                    RecItem.SetRange("Base Unit Of Measure New", '');
                    if RecItem.FindSet() then
                        repeat
                            Counter += 1;
                            RecItem."Base Unit Of Measure New" := 'SQ.MT';
                            RecItem.Modify();
                        until RecItem.next() = 0;
                    Message('Tota record Modify %1', Counter);
                end;
            }
            action("Group Price")
            {
                Caption = 'Group Price';
                RunObject = Page 50007;
                Promoted = true;
                PromotedCategory = Process;
                RunPageLink = "Item Classification No." = FIELD("Item Classification");
                ApplicationArea = all;
            }
        }
    }
    trigger OnOpenPage()
    begin
        OnInitFunction();
        EnableShowStockOutWarning;
        EnableShowShowEnforcePositivInventory;
        EnablePremium;
        //EnableRetained;
        //EnableShelfNo;
    end;

    trigger OnAfterGetRecord()
    begin
        EnablePlanningControls;
        EnableCostingControls;
        SetSocialListeningFactboxVisibility;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        EnablePlanningControls;
        EnableCostingControls;
        //EnableShelfNo;
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        rec."Created Date" := Today;
        rec."Created ID" := UserId;
    end;

    LOCAL procedure EnableShowStockOutWarning()
    var
        SalesSetup: Record "Sales & Receivables Setup";
    begin
        SalesSetup.GET;
        ShowStockoutWarningDefaultYes := SalesSetup."Stockout Warning";
        ShowStockoutWarningDefaultNo := NOT ShowStockoutWarningDefaultYes;
    end;

    LOCAL procedure EnableShowShowEnforcePositivInventory()
    begin
        InventorySetup.GET;
        ShowPreventNegInventoryDefaultYes := InventorySetup."Prevent Negative Inventory";
        ShowPreventNegInventoryDefaultNo := NOT ShowPreventNegInventoryDefaultYes;
    end;

    LOCAL procedure EnableCostingControls()
    begin
        StandardCostEnable := Rec."Costing Method" = Rec."Costing Method"::Standard;
        UnitCostEnable := Rec."Costing Method" <> Rec."Costing Method"::Standard;
    end;

    LOCAL procedure SetSocialListeningFactboxVisibility()
    begin
        //SocialListeningMgt.GetItemFactboxVisibility(Rec, SocialListeningSetupVisible, SocialListeningVisible);
    end;

    local procedure EnablePremium()
    begin
        IF Premium THEN BEGIN
            CommercialEditable := true;
            EconomicEditable := true;
            "Broken TilesEditable" := TRUE;
        END ELSE BEGIN
            CommercialEditable := FALSE;
            EconomicEditable := FALSE;
            "Broken TilesEditable" := FALSE;
        END;
    end;

    local procedure PremiumOnPush()
    begin
        EnablePremium;
    end;



    local procedure OnInitFunction()
    begin
        // IF (LOWERCASE(USERID) = 'plantpu3') AND (LOWERCASE(USERID) = 'plantpu6') AND (LOWERCASE(USERID) = 'bhkpuc001') THEN BEGIN
        //     "No.Editable" := FALSE;
        //     kbseditable := FALSE;
        //     DescriptionEditable := FALSE;
        //     "Search DescriptionEditable" := FALSE;
        //     "Scheme GroupEditable" := FALSE;
        //     "Inactive Itemseditable" := FALSE;
        //     "Assembly BOMEditable" := FALSE;
        //     "Description 2Editable" := FALSE;
        //     "Bill of MaterialsEditable" := FALSE;
        //     "Base Unit of MeasureEditable" := FALSE;
        //     InventoryPostingGroupEditable := FALSE;
        //     "Shelf No.Editable" := TRUE;
        //     "Shelf No.DraEditable" := TRUE;
        //     "Shelf No.HSKEditable" := TRUE;
        //     "Item Disc. GroupEditable" := FALSE;
        //     "Allow Invoice Disc.Editable" := FALSE;
        //     "Unit PriceEditable" := FALSE;
        //     PriceProfitCalculationEditable := FALSE;
        //     "Profit %Editable" := FALSE;
        //     "Costing MethodEditable" := FALSE;
        //     "Unit CostEditable" := FALSE;
        //     "Standard CostEditable" := FALSE;
        //     "Last Direct CostEditable" := FALSE;
        //     "Indirect Cost %Editable" := FALSE;
        //     "Cost is AdjustedEditable" := FALSE;
        //     "Vendor No.Editable" := FALSE;
        //     "Vendor Item No.Editable" := FALSE;
        //     "Lead Time CalculationEditable" := FALSE;
        //     "Reorder PointEditable" := FALSE;
        //     "Maximum InventoryEditable" := FALSE;
        //     "Reorder QuantityEditable" := FALSE;
        //     "Gross WeightEditable" := FALSE;
        //     "Net WeightEditable" := FALSE;
        //     "Tariff No.Editable" := FALSE;
        //     CommentEditable := FALSE;
        //     BlockedEditable := FALSE;
        //     "Cost is Posted to G/LEditable" := FALSE;
        //     "Last Date ModifiedEditable" := FALSE;
        //     "Date FilterEditable" := FALSE;
        //     "Location FilterEditable" := FALSE;
        //     InventoryEditable := FALSE;
        //     "Net Invoiced Qty.Editable" := FALSE;
        //     "Net ChangeEditable" := FALSE;
        //     "Purchases (Qty.)Editable" := FALSE;
        //     "Qty. on Purch. OrderEditable" := FALSE;
        //     "Qty. on Sales OrderEditable" := FALSE;
        //     GenProdPostingGroupEditable := FALSE;
        //     CountryRegionofOriginCodeEdita := FALSE;
        //     "Tax Group CodeEditable" := FALSE;
        //     VATProdPostingGroupEditable := FALSE;
        //     ReserveEditable := FALSE;
        //     ReservedQtyonInventoryEditable := FALSE;
        //     "Lot SizeEditable" := FALSE;
        //     "Serial Nos.Editable" := FALSE;
        //     "Scrap %Editable" := FALSE;
        //     "Minimum Order QuantityEditable" := FALSE;
        //     "Maximum Order QuantityEditable" := FALSE;
        //     "Safety Stock QuantityEditable" := FALSE;
        //     "Order MultipleEditable" := FALSE;
        //     "Safety Lead TimeEditable" := FALSE;
        //     "Flushing MethodEditable" := FALSE;
        //     "Replenishment SystemEditable" := FALSE;
        //     "Rounding PrecisionEditable" := FALSE;
        //     "Sales Unit of MeasureEditable" := FALSE;
        //     "Purch. Unit of MeasureEditable" := FALSE;
        //     "Reorder CycleEditable" := FALSE;
        //     "Reordering PolicyEditable" := FALSE;
        //     "Include InventoryEditable" := FALSE;
        //     "Manufacturing PolicyEditable" := FALSE;
        //     StockkeepingUnitExistsEditable := FALSE;
        //     "Manufacturer CodeEditable" := FALSE;
        //     "Item Category CodeEditable" := FALSE;
        //     "Product Group CodeEditable" := FALSE;
        //     "Item Tracking CodeEditable" := FALSE;
        //     "Lot Nos.Editable" := FALSE;
        //     "Expiration CalculationEditable" := FALSE;
        //     "Special Equipment CodeEditable" := FALSE;
        //     "Put-away Template CodeEditable" := FALSE;
        //     PutawayUnitofMeasureCodeEditab := FALSE;
        //     PhysInvtCountingPeriodCodeEdit := FALSE;
        //     LastCountingPeriodUpdateEditab := FALSE;
        //     "Next Counting PeriodEditable" := FALSE;
        //     "Last Phys. Invt. DateEditable" := FALSE;
        //     "Use Cross-DockingEditable" := FALSE;
        //     "Identifier CodeEditable" := FALSE;
        //     ExciseProdPostingGroupEditable := FALSE;
        //     "Excise Accounting TypeEditable" := FALSE;
        //     "Assessable ValueEditable" := FALSE;
        //     "Capital ItemEditable" := FALSE;
        //     SubcontractingEditable := FALSE;
        //     "Sub. Comp. LocationEditable" := FALSE;
        //     "Fixed AssetEditable" := FALSE;
        //     "Scrap ItemEditable" := FALSE;
        //     "MRP PriceEditable" := FALSE;
        //     "MRP ValueEditable" := FALSE;
        //     "Abatement %Editable" := FALSE;
        //     "Price Inclusive of TaxEditable" := FALSE;
        //     "Type CodeEditable" := FALSE;
        //     "Type Catogery CodeEditable" := FALSE;
        //     "Size CodeEditable" := FALSE;
        //     "Design CodeEditable" := FALSE;
        //     "Color CodeEditable" := FALSE;
        //     "Packing CodeEditable" := FALSE;
        //     "Quality CodeEditable" := FALSE;
        //     "Plant CodeEditable" := FALSE;
        //     "Item ClassificationEditable" := FALSE;
        //     "Type Code Desc.Editable" := FALSE;
        //     TypeCategoryCodeDescEditable := FALSE;
        //     "Size Code Desc.Editable" := FALSE;
        //     "Design Code Desc.Editable" := FALSE;
        //     "Color Code Desc.Editable" := FALSE;
        //     "Packing Code Desc.Editable" := FALSE;
        //     "Quality Code Desc.Editable" := FALSE;
        //     "Plant Code Desc.Editable" := FALSE;
        //     "Manufacturer NameEditable" := FALSE;
        //     "Group CodeEditable" := FALSE;
        //     "Group code DescEditable" := FALSE;
        //     COGSEditable := FALSE;
        //     "COGS Effective DateEditable" := FALSE;
        //     "Indent BlockedEditable" := FALSE;
        //     "Purchase BlockedEditable" := FALSE;
        //     PremiumEditable := FALSE;
        //     Blocked2Editable := FALSE;
        //     CommercialEditable := FALSE;
        //     EconomicEditable := FALSE;
        //     "Broken TilesEditable" := FALSE;
        //     "Indent QuantityEditable" := FALSE;
        //     IndirectConsumptionItemEditabl := FALSE;
        //     "ABC AnalysisEditable" := FALSE;
        //     "Created IDEditable" := FALSE;
        //     "Created DateEditable" := FALSE;
        //     "Last Modified IDEditable" := FALSE;
        //     RetainedEditable := FALSE;
        //     "Inventory In CRTEditable" := FALSE;
        //     DefaultTransactionUOMEditable := FALSE;
        //     "Transfer Order BlockedEditable" := FALSE;
        //     DefaultProdPlantCodeEditable := FALSE;
        //     "End Use Itemeditable" := FALSE;
        //     "Scheme Group CodeEditable" := FALSE;
        //     "Routing No.Editable" := FALSE;
        //     "Production BOM No.Editable" := FALSE;
        //     "Overhead RateEditable" := FALSE;
        //     "Order Tracking PolicyEditable" := FALSE;
        //     QtyonComponentLinesEditable := FALSE;
        //     CriticalEditable := FALSE;
        //     "Common Item No.Editable" := FALSE;
        //     "Plant CodeEditable" := FALSE;
        //     CurrPage.UPDATE
        // END ELSE
        //     IF (LOWERCASE(USERID) <> 'plantpu3') AND (LOWERCASE(USERID) <> 'plantpu6') AND (LOWERCASE(USERID) <> 'bhkpuc001') THEN BEGIN
        //         "No.Editable" := TRUE;
        //         kbsEditable := true;
        //         DescriptionEditable := true;
        //         "Search DescriptionEditable" := TRUE;
        //         "Scheme GroupEditable" := TRUE;
        //         "Inactive Itemseditable" := TRUE;
        //         "Assembly BOMEditable" := TRUE;
        //         "Description 2Editable" := TRUE;
        //         "Bill of MaterialsEditable" := TRUE;
        //         "Base Unit of MeasureEditable" := TRUE;
        //         InventoryPostingGroupEditable := true;
        //         "Shelf No.Editable" := TRUE;
        //         "Shelf No.DraEditable" := true;
        //         "Shelf No.HSKEditable" := true;
        //         "Item Disc. GroupEditable" := TRUE;
        //         "Allow Invoice Disc.Editable" := TRUE;
        //         "Unit PriceEditable" := TRUE;
        //         PriceProfitCalculationEditable := true;
        //         "Profit %Editable" := TRUE;
        //         "Costing MethodEditable" := TRUE;
        //         "Unit CostEditable" := TRUE;
        //         "Standard CostEditable" := TRUE;
        //         "Last Direct CostEditable" := TRUE;
        //         "Indirect Cost %Editable" := TRUE;
        //         "Cost is AdjustedEditable" := TRUE;
        //         "Vendor No.Editable" := TRUE;
        //         "Vendor Item No.Editable" := TRUE;
        //         "Lead Time CalculationEditable" := TRUE;
        //         "Reorder PointEditable" := TRUE;
        //         "Maximum InventoryEditable" := TRUE;
        //         "Reorder QuantityEditable" := TRUE;
        //         "Gross WeightEditable" := TRUE;
        //         "Net WeightEditable" := TRUE;
        //         "Tariff No.Editable" := TRUE;
        //         CommentEditable := true;
        //         BlockedEditable := true;
        //         "Cost is Posted to G/LEditable" := TRUE;
        //         "Last Date ModifiedEditable" := TRUE;
        //         "Date FilterEditable" := TRUE;
        //         "Location FilterEditable" := TRUE;
        //         InventoryEditable := true;
        //         "Net Invoiced Qty.Editable" := TRUE;
        //         "Net ChangeEditable" := TRUE;
        //         "Purchases (Qty.)Editable" := TRUE;
        //         "Qty. on Purch. OrderEditable" := TRUE;
        //         "Qty. on Sales OrderEditable" := TRUE;
        //         GenProdPostingGroupEditable := true;
        //         CountryRegionofOriginCodeEdita := TRUE;
        //         "Tax Group CodeEditable" := TRUE;
        //         VATProdPostingGroupEditable := true;
        //         ReserveEditable := true;
        //         ReservedQtyonInventoryEditable := true;
        //         "Lot SizeEditable" := TRUE;
        //         "Serial Nos.Editable" := TRUE;
        //         "Scrap %Editable" := TRUE;
        //         "Minimum Order QuantityEditable" := TRUE;
        //         "Maximum Order QuantityEditable" := TRUE;
        //         "Safety Stock QuantityEditable" := TRUE;
        //         "Order MultipleEditable" := TRUE;
        //         "Safety Lead TimeEditable" := TRUE;
        //         "Flushing MethodEditable" := TRUE;
        //         "Replenishment SystemEditable" := TRUE;
        //         "Rounding PrecisionEditable" := TRUE;
        //         "Sales Unit of MeasureEditable" := TRUE;
        //         "Purch. Unit of MeasureEditable" := TRUE;
        //         "Reorder CycleEditable" := TRUE;
        //         "Reordering PolicyEditable" := TRUE;
        //         "Include InventoryEditable" := TRUE;
        //         "Manufacturing PolicyEditable" := TRUE;
        //         StockkeepingUnitExistsEditable := true;
        //         "Manufacturer CodeEditable" := TRUE;
        //         "Item Category CodeEditable" := TRUE;
        //         "Product Group CodeEditable" := TRUE;
        //         "Item Tracking CodeEditable" := TRUE;
        //         "Lot Nos.Editable" := TRUE;
        //         "Expiration CalculationEditable" := TRUE;
        //         "Special Equipment CodeEditable" := TRUE;
        //         "Put-away Template CodeEditable" := TRUE;
        //         PutawayUnitofMeasureCodeEditab := TRUE;
        //         PhysInvtCountingPeriodCodeEdit := TRUE;
        //         LastCountingPeriodUpdateEditab := TRUE;
        //         "Next Counting PeriodEditable" := TRUE;
        //         "Last Phys. Invt. DateEditable" := TRUE;
        //         "Use Cross-DockingEditable" := TRUE;
        //         "Identifier CodeEditable" := TRUE;
        //         ExciseProdPostingGroupEditable := true;
        //         "Excise Accounting TypeEditable" := TRUE;
        //         "Assessable ValueEditable" := TRUE;
        //         "Capital ItemEditable" := TRUE;
        //         SubcontractingEditable := true;
        //         "Sub. Comp. LocationEditable" := TRUE;
        //         "Fixed AssetEditable" := TRUE;
        //         "Scrap ItemEditable" := TRUE;
        //         "MRP PriceEditable" := TRUE;
        //         "MRP ValueEditable" := TRUE;
        //         "Abatement %Editable" := TRUE;
        //         "Price Inclusive of TaxEditable" := TRUE;
        //         "Type CodeEditable" := TRUE;
        //         "Type Catogery CodeEditable" := TRUE;
        //         "Size CodeEditable" := TRUE;
        //         "Design CodeEditable" := TRUE;
        //         "Color CodeEditable" := TRUE;
        //         "Packing CodeEditable" := TRUE;
        //         "Quality CodeEditable" := TRUE;
        //         "Plant CodeEditable" := TRUE;
        //         "Item ClassificationEditable" := TRUE;
        //         "Type Code Desc.Editable" := TRUE;
        //         TypeCategoryCodeDescEditable := true;
        //         "Size Code Desc.Editable" := TRUE;
        //         "Design Code Desc.Editable" := TRUE;
        //         "Color Code Desc.Editable" := TRUE;
        //         "Packing Code Desc.Editable" := TRUE;
        //         "Quality Code Desc.Editable" := TRUE;
        //         "Plant Code Desc.Editable" := TRUE;
        //         "Manufacturer NameEditable" := TRUE;
        //         "Group CodeEditable" := TRUE;
        //         "Group code DescEditable" := TRUE;
        //         COGSEditable := true;
        //         "COGS Effective DateEditable" := TRUE;
        //         "Indent BlockedEditable" := TRUE;
        //         "Purchase BlockedEditable" := TRUE;
        //         PremiumEditable := true;
        //         Blocked2Editable := true;
        //         CommercialEditable := true;
        //         EconomicEditable := true;
        //         "Broken TilesEditable" := TRUE;
        //         "Indent QuantityEditable" := TRUE;
        //         IndirectConsumptionItemEditabl := TRUE;
        //         "ABC AnalysisEditable" := TRUE;
        //         "Created IDEditable" := TRUE;
        //         "Created DateEditable" := TRUE;
        //         "Last Modified IDEditable" := TRUE;
        //         RetainedEditable := true;
        //         "Inventory In CRTEditable" := TRUE;
        //         DefaultTransactionUOMEditable := true;
        //         "Transfer Order BlockedEditable" := TRUE;
        //         DefaultProdPlantCodeEditable := true;
        //         "End Use Itemeditable" := TRUE;
        //         "Scheme Group CodeEditable" := TRUE;
        //         "Routing No.Editable" := TRUE;
        //         "Production BOM No.Editable" := TRUE;
        //         "Overhead RateEditable" := TRUE;
        //         "Order Tracking PolicyEditable" := TRUE;
        //         QtyonComponentLinesEditable := true;
        //         CriticalEditable := true;
        //         "Common Item No.Editable" := TRUE;
        //         "Plant CodeEditable" := TRUE;
        //         CurrPage.UPDATE
        //     END;
        // IF (UPPERCASE(USERID) = 'BDRAST005') THEN BEGIN
        //     "Shelf No.DraEditable" := TRUE;
        // END

        IF (LOWERCASE(USERID) = 'plantpu3') OR (LOWERCASE(USERID) = 'plantpu6') OR (LOWERCASE(USERID) = 'bhkpuc001') OR (LOWERCASE(USERID) = 'it005') OR (LOWERCASE(USERID) = 'it003') OR (LOWERCASE(USERID) = 'admin') THEN BEGIN
            "No.Editable" := TRUE;
            kbsEditable := true;
            DescriptionEditable := true;
            "Search DescriptionEditable" := TRUE;
            "Scheme GroupEditable" := TRUE;
            "Inactive Itemseditable" := TRUE;
            "Assembly BOMEditable" := TRUE;
            "Description 2Editable" := TRUE;
            "Bill of MaterialsEditable" := TRUE;
            "Base Unit of MeasureEditable" := TRUE;
            InventoryPostingGroupEditable := true;
            "Shelf No.Editable" := TRUE;
            "Shelf No.DraEditable" := true;
            "Shelf No.HSKEditable" := true;
            "Item Disc. GroupEditable" := TRUE;
            "Allow Invoice Disc.Editable" := TRUE;
            "Unit PriceEditable" := TRUE;
            PriceProfitCalculationEditable := true;
            "Profit %Editable" := TRUE;
            "Costing MethodEditable" := TRUE;
            "Unit CostEditable" := TRUE;
            "Standard CostEditable" := TRUE;
            "Last Direct CostEditable" := TRUE;
            "Indirect Cost %Editable" := TRUE;
            "Cost is AdjustedEditable" := TRUE;
            "Vendor No.Editable" := TRUE;
            "Vendor Item No.Editable" := TRUE;
            "Lead Time CalculationEditable" := TRUE;
            "Reorder PointEditable" := TRUE;
            "Maximum InventoryEditable" := TRUE;
            "Reorder QuantityEditable" := TRUE;
            "Gross WeightEditable" := TRUE;
            "Net WeightEditable" := TRUE;
            "Tariff No.Editable" := TRUE;
            CommentEditable := true;
            BlockedEditable := true;
            "Cost is Posted to G/LEditable" := TRUE;
            "Last Date ModifiedEditable" := TRUE;
            "Date FilterEditable" := TRUE;
            "Location FilterEditable" := TRUE;
            InventoryEditable := true;
            "Net Invoiced Qty.Editable" := TRUE;
            "Net ChangeEditable" := TRUE;
            "Purchases (Qty.)Editable" := TRUE;
            "Qty. on Purch. OrderEditable" := TRUE;
            "Qty. on Sales OrderEditable" := TRUE;
            GenProdPostingGroupEditable := true;
            CountryRegionofOriginCodeEdita := TRUE;
            "Tax Group CodeEditable" := TRUE;
            VATProdPostingGroupEditable := true;
            ReserveEditable := true;
            ReservedQtyonInventoryEditable := true;
            "Lot SizeEditable" := TRUE;
            "Serial Nos.Editable" := TRUE;
            "Scrap %Editable" := TRUE;
            "Minimum Order QuantityEditable" := TRUE;
            "Maximum Order QuantityEditable" := TRUE;
            "Safety Stock QuantityEditable" := TRUE;
            "Order MultipleEditable" := TRUE;
            "Safety Lead TimeEditable" := TRUE;
            "Flushing MethodEditable" := TRUE;
            "Replenishment SystemEditable" := TRUE;
            "Rounding PrecisionEditable" := TRUE;
            "Sales Unit of MeasureEditable" := TRUE;
            "Purch. Unit of MeasureEditable" := TRUE;
            "Reorder CycleEditable" := TRUE;
            "Reordering PolicyEditable" := TRUE;
            "Include InventoryEditable" := TRUE;
            "Manufacturing PolicyEditable" := TRUE;
            StockkeepingUnitExistsEditable := true;
            "Manufacturer CodeEditable" := TRUE;
            "Item Category CodeEditable" := TRUE;
            "Product Group CodeEditable" := TRUE;
            "Item Tracking CodeEditable" := TRUE;
            "Lot Nos.Editable" := TRUE;
            "Expiration CalculationEditable" := TRUE;
            "Special Equipment CodeEditable" := TRUE;
            "Put-away Template CodeEditable" := TRUE;
            PutawayUnitofMeasureCodeEditab := TRUE;
            PhysInvtCountingPeriodCodeEdit := TRUE;
            LastCountingPeriodUpdateEditab := TRUE;
            "Next Counting PeriodEditable" := TRUE;
            "Last Phys. Invt. DateEditable" := TRUE;
            "Use Cross-DockingEditable" := TRUE;
            "Identifier CodeEditable" := TRUE;
            ExciseProdPostingGroupEditable := true;
            "Excise Accounting TypeEditable" := TRUE;
            "Assessable ValueEditable" := TRUE;
            "Capital ItemEditable" := TRUE;
            SubcontractingEditable := true;
            "Sub. Comp. LocationEditable" := TRUE;
            "Fixed AssetEditable" := TRUE;
            "Scrap ItemEditable" := TRUE;
            "MRP PriceEditable" := TRUE;
            "MRP ValueEditable" := TRUE;
            "Abatement %Editable" := TRUE;
            "PIT StructureEditable" := TRUE;
            "Price Inclusive of TaxEditable" := TRUE;
            "Type CodeEditable" := TRUE;
            "Type Catogery CodeEditable" := TRUE;
            "Size CodeEditable" := TRUE;
            "Design CodeEditable" := TRUE;
            "Color CodeEditable" := TRUE;
            "Packing CodeEditable" := TRUE;
            "Quality CodeEditable" := TRUE;
            "Plant CodeEditable" := TRUE;
            "Item ClassificationEditable" := TRUE;
            "Type Code Desc.Editable" := TRUE;
            TypeCategoryCodeDescEditable := true;
            "Size Code Desc.Editable" := TRUE;
            "Design Code Desc.Editable" := TRUE;
            "Color Code Desc.Editable" := TRUE;
            "Packing Code Desc.Editable" := TRUE;
            "Quality Code Desc.Editable" := TRUE;
            "Plant Code Desc.Editable" := TRUE;
            "Manufacturer NameEditable" := TRUE;
            "Group CodeEditable" := TRUE;
            "Group code DescEditable" := TRUE;
            COGSEditable := true;
            "COGS Effective DateEditable" := TRUE;
            "Indent BlockedEditable" := TRUE;
            "Purchase BlockedEditable" := TRUE;
            PremiumEditable := true;
            Blocked2Editable := true;
            CommercialEditable := true;
            EconomicEditable := true;
            "Broken TilesEditable" := TRUE;
            "Indent QuantityEditable" := TRUE;
            IndirectConsumptionItemEditabl := TRUE;
            "ABC AnalysisEditable" := TRUE;
            "Created IDEditable" := TRUE;
            "Created DateEditable" := TRUE;
            "Last Modified IDEditable" := TRUE;
            RetainedEditable := true;
            "Inventory In CRTEditable" := TRUE;
            DefaultTransactionUOMEditable := true;
            "Transfer Order BlockedEditable" := TRUE;
            DefaultProdPlantCodeEditable := true;
            "End Use Itemeditable" := TRUE;
            "Scheme Group CodeEditable" := TRUE;
            "Routing No.Editable" := TRUE;
            "Production BOM No.Editable" := TRUE;
            "Overhead RateEditable" := TRUE;
            "Order Tracking PolicyEditable" := TRUE;
            QtyonComponentLinesEditable := true;
            CriticalEditable := true;
            "Common Item No.Editable" := TRUE;
            "Plant CodeEditable" := TRUE;
            CurrPage.UPDATE;

        END else begin
            "No.Editable" := FALSE;
            kbseditable := FALSE;
            DescriptionEditable := FALSE;
            "Search DescriptionEditable" := FALSE;
            "Scheme GroupEditable" := FALSE;
            "Inactive Itemseditable" := FALSE;
            "Assembly BOMEditable" := FALSE;
            "Description 2Editable" := FALSE;
            "Bill of MaterialsEditable" := FALSE;
            "Base Unit of MeasureEditable" := FALSE;
            InventoryPostingGroupEditable := FALSE;
            "Shelf No.Editable" := TRUE;
            "Shelf No.DraEditable" := TRUE;
            "Shelf No.HSKEditable" := TRUE;
            "Item Disc. GroupEditable" := FALSE;
            "Allow Invoice Disc.Editable" := FALSE;
            "Unit PriceEditable" := FALSE;
            PriceProfitCalculationEditable := FALSE;
            "Profit %Editable" := FALSE;
            "Costing MethodEditable" := FALSE;
            "Unit CostEditable" := FALSE;
            "Standard CostEditable" := FALSE;
            "Last Direct CostEditable" := FALSE;
            "Indirect Cost %Editable" := FALSE;
            "Cost is AdjustedEditable" := FALSE;
            "Vendor No.Editable" := FALSE;
            "Vendor Item No.Editable" := FALSE;
            "Lead Time CalculationEditable" := FALSE;
            "Reorder PointEditable" := FALSE;
            "Maximum InventoryEditable" := FALSE;
            "Reorder QuantityEditable" := FALSE;
            "Gross WeightEditable" := FALSE;
            "Net WeightEditable" := FALSE;
            "Tariff No.Editable" := FALSE;
            CommentEditable := FALSE;
            BlockedEditable := FALSE;
            "Cost is Posted to G/LEditable" := FALSE;
            "Last Date ModifiedEditable" := FALSE;
            "Date FilterEditable" := FALSE;
            "Location FilterEditable" := FALSE;
            InventoryEditable := FALSE;
            "Net Invoiced Qty.Editable" := FALSE;
            "Net ChangeEditable" := FALSE;
            "Purchases (Qty.)Editable" := FALSE;
            "Qty. on Purch. OrderEditable" := FALSE;
            "Qty. on Sales OrderEditable" := FALSE;
            GenProdPostingGroupEditable := FALSE;
            CountryRegionofOriginCodeEdita := FALSE;
            "Tax Group CodeEditable" := FALSE;
            VATProdPostingGroupEditable := FALSE;
            ReserveEditable := FALSE;
            ReservedQtyonInventoryEditable := FALSE;
            "Lot SizeEditable" := FALSE;
            "Serial Nos.Editable" := FALSE;
            "Scrap %Editable" := FALSE;
            "Minimum Order QuantityEditable" := FALSE;
            "Maximum Order QuantityEditable" := FALSE;
            "Safety Stock QuantityEditable" := FALSE;
            "Order MultipleEditable" := FALSE;
            "Safety Lead TimeEditable" := FALSE;
            "Flushing MethodEditable" := FALSE;
            "Replenishment SystemEditable" := FALSE;
            "Rounding PrecisionEditable" := FALSE;
            "Sales Unit of MeasureEditable" := FALSE;
            "Purch. Unit of MeasureEditable" := FALSE;
            "Reorder CycleEditable" := FALSE;
            "Reordering PolicyEditable" := FALSE;
            "Include InventoryEditable" := FALSE;
            "Manufacturing PolicyEditable" := FALSE;
            StockkeepingUnitExistsEditable := FALSE;
            "Manufacturer CodeEditable" := FALSE;
            "Item Category CodeEditable" := FALSE;
            "Product Group CodeEditable" := FALSE;
            "Item Tracking CodeEditable" := FALSE;
            "Lot Nos.Editable" := FALSE;
            "Expiration CalculationEditable" := FALSE;
            "Special Equipment CodeEditable" := FALSE;
            "Put-away Template CodeEditable" := FALSE;
            PutawayUnitofMeasureCodeEditab := FALSE;
            PhysInvtCountingPeriodCodeEdit := FALSE;
            LastCountingPeriodUpdateEditab := FALSE;
            "Next Counting PeriodEditable" := FALSE;
            "Last Phys. Invt. DateEditable" := FALSE;
            "Use Cross-DockingEditable" := FALSE;
            "Identifier CodeEditable" := FALSE;
            ExciseProdPostingGroupEditable := FALSE;
            "Excise Accounting TypeEditable" := FALSE;
            "Assessable ValueEditable" := FALSE;
            "Capital ItemEditable" := FALSE;
            SubcontractingEditable := FALSE;
            "Sub. Comp. LocationEditable" := FALSE;
            "Fixed AssetEditable" := FALSE;
            "Scrap ItemEditable" := FALSE;
            "MRP PriceEditable" := FALSE;
            "MRP ValueEditable" := FALSE;
            "Abatement %Editable" := FALSE;
            "PIT StructureEditable" := FALSE;
            "Price Inclusive of TaxEditable" := FALSE;
            "Type CodeEditable" := FALSE;
            "Type Catogery CodeEditable" := FALSE;
            "Size CodeEditable" := FALSE;
            "Design CodeEditable" := FALSE;
            "Color CodeEditable" := FALSE;
            "Packing CodeEditable" := FALSE;
            "Quality CodeEditable" := FALSE;
            "Plant CodeEditable" := FALSE;
            "Item ClassificationEditable" := FALSE;
            "Type Code Desc.Editable" := FALSE;
            TypeCategoryCodeDescEditable := FALSE;
            "Size Code Desc.Editable" := FALSE;
            "Design Code Desc.Editable" := FALSE;
            "Color Code Desc.Editable" := FALSE;
            "Packing Code Desc.Editable" := FALSE;
            "Quality Code Desc.Editable" := FALSE;
            "Plant Code Desc.Editable" := FALSE;
            "Manufacturer NameEditable" := FALSE;
            "Group CodeEditable" := FALSE;
            "Group code DescEditable" := FALSE;
            COGSEditable := FALSE;
            "COGS Effective DateEditable" := FALSE;
            "Indent BlockedEditable" := FALSE;
            "Purchase BlockedEditable" := FALSE;
            PremiumEditable := FALSE;
            Blocked2Editable := FALSE;
            CommercialEditable := FALSE;
            EconomicEditable := FALSE;
            "Broken TilesEditable" := FALSE;
            "Indent QuantityEditable" := FALSE;
            IndirectConsumptionItemEditabl := FALSE;
            "ABC AnalysisEditable" := FALSE;
            "Created IDEditable" := FALSE;
            "Created DateEditable" := FALSE;
            "Last Modified IDEditable" := FALSE;
            RetainedEditable := FALSE;
            "Inventory In CRTEditable" := FALSE;
            DefaultTransactionUOMEditable := FALSE;
            "Transfer Order BlockedEditable" := FALSE;
            DefaultProdPlantCodeEditable := FALSE;
            "End Use Itemeditable" := FALSE;
            "Scheme Group CodeEditable" := FALSE;
            "Routing No.Editable" := FALSE;
            "Production BOM No.Editable" := FALSE;
            "Overhead RateEditable" := FALSE;
            "Order Tracking PolicyEditable" := FALSE;
            QtyonComponentLinesEditable := FALSE;
            CriticalEditable := FALSE;
            "Common Item No.Editable" := FALSE;
            "Plant CodeEditable" := FALSE;

        END;
        IF (UPPERCASE(USERID) = 'BDRAST005') THEN BEGIN
            "Shelf No DRA.Editable" := TRUE;
        END

    end;

    var
        [InDataSet]
        "No.Editable": Boolean;
        [InDataSet]

        kbseditable: Boolean;
        [InDataSet]
        DescriptionEditable: Boolean;

        [InDataSet]
        "Search DescriptionEditable": Boolean;
        [InDataSet]
        "Scheme GroupEditable": Boolean;
        [InDataSet]
        "Inactive Itemseditable": Boolean;
        [InDataSet]
        "Assembly BOMEditable": Boolean;
        [InDataSet]
        "Description 2Editable": Boolean;
        "PIT StructureEditable": Boolean;
        [InDataSet]
        "Bill of MaterialsEditable": Boolean;
        [InDataSet]
        "Base Unit of MeasureEditable": Boolean;
        [InDataSet]
        InventoryPostingGroupEditable: Boolean;
        [InDataSet]
        "Shelf No DRA.Editable": Boolean;
        [InDataSet]
        "Item Disc. GroupEditable": Boolean;
        [InDataSet]
        "Allow Invoice Disc.Editable": Boolean;
        [InDataSet]
        "Unit PriceEditable": Boolean;
        [InDataSet]
        PriceProfitCalculationEditable: Boolean;
        [InDataSet]
        "Profit %Editable": Boolean;
        [InDataSet]
        "Costing MethodEditable": Boolean;
        [InDataSet]
        "Unit CostEditable": Boolean;
        [InDataSet]
        "Standard CostEditable": Boolean;
        [InDataSet]
        "Last Direct CostEditable": Boolean;
        [InDataSet]
        "Indirect Cost %Editable": Boolean;
        [InDataSet]
        "Cost is AdjustedEditable": Boolean;
        [InDataSet]
        "Vendor No.Editable": Boolean;
        [InDataSet]
        "Vendor Item No.Editable": Boolean;
        [InDataSet]
        "Lead Time CalculationEditable": Boolean;
        [InDataSet]
        "Reorder PointEditable": Boolean;
        [InDataSet]
        "Maximum InventoryEditable": Boolean;
        [InDataSet]
        "Reorder QuantityEditable": Boolean;
        [InDataSet]
        "Gross WeightEditable": Boolean;
        [InDataSet]
        "Net WeightEditable": Boolean;
        [InDataSet]
        "Tariff No.Editable": Boolean;
        [InDataSet]
        CommentEditable: Boolean;
        [InDataSet]
        BlockedEditable: Boolean;
        [InDataSet]
        "Cost is Posted to G/LEditable": Boolean;
        [InDataSet]
        "Last Date ModifiedEditable": Boolean;
        [InDataSet]
        "Date FilterEditable": Boolean;
        [InDataSet]
        "Location FilterEditable": Boolean;
        [InDataSet]
        InventoryEditable: Boolean;
        [InDataSet]
        "Net Invoiced Qty.Editable": Boolean;
        [InDataSet]
        "Net ChangeEditable": Boolean;
        [InDataSet]
        "Purchases (Qty.)Editable": Boolean;
        [InDataSet]
        "Qty. on Purch. OrderEditable": Boolean;
        [InDataSet]
        "Qty. on Sales OrderEditable": Boolean;
        [InDataSet]
        GenProdPostingGroupEditable: Boolean;
        [InDataSet]
        CountryRegionofOriginCodeEdita: Boolean;
        [InDataSet]
        "Tax Group CodeEditable": Boolean;
        [InDataSet]
        VATProdPostingGroupEditable: Boolean;
        [InDataSet]
        ReserveEditable: Boolean;
        [InDataSet]
        ReservedQtyonInventoryEditable: Boolean;
        [InDataSet]
        "Lot SizeEditable": Boolean;
        [InDataSet]
        "Serial Nos.Editable": Boolean;
        [InDataSet]
        "Scrap %Editable": Boolean;
        [InDataSet]
        "Minimum Order QuantityEditable": Boolean;
        [InDataSet]
        "Maximum Order QuantityEditable": Boolean;
        [InDataSet]
        "Safety Stock QuantityEditable": Boolean;
        [InDataSet]
        "Order MultipleEditable": Boolean;
        [InDataSet]
        "Safety Lead TimeEditable": Boolean;
        [InDataSet]
        "Flushing MethodEditable": Boolean;
        [InDataSet]
        "Replenishment SystemEditable": Boolean;
        [InDataSet]
        "Rounding PrecisionEditable": Boolean;
        [InDataSet]
        "Sales Unit of MeasureEditable": Boolean;
        [InDataSet]
        "Purch. Unit of MeasureEditable": Boolean;
        [InDataSet]
        "Reorder CycleEditable": Boolean;
        [InDataSet]
        "Reordering PolicyEditable": Boolean;
        [InDataSet]
        "Include InventoryEditable": Boolean;
        [InDataSet]
        "Manufacturing PolicyEditable": Boolean;
        [InDataSet]
        StockkeepingUnitExistsEditable: Boolean;
        [InDataSet]
        "Manufacturer CodeEditable": Boolean;
        [InDataSet]
        [InDataSet]
        "Item Category CodeEditable": Boolean;
        [InDataSet]
        "Product Group CodeEditable": Boolean;
        [InDataSet]
        "Item Tracking CodeEditable": Boolean;
        [InDataSet]
        "Lot Nos.Editable": Boolean;
        [InDataSet]
        "Expiration CalculationEditable": Boolean;
        [InDataSet]
        "Special Equipment CodeEditable": Boolean;
        [InDataSet]
        "Put-away Template CodeEditable": Boolean;
        [InDataSet]
        PutawayUnitofMeasureCodeEditab: Boolean;
        [InDataSet]
        PhysInvtCountingPeriodCodeEdit: Boolean;
        [InDataSet]
        LastCountingPeriodUpdateEditab: Boolean;
        [InDataSet]
        "Next Counting PeriodEditable": Boolean;
        [InDataSet]
        "Last Phys. Invt. DateEditable": Boolean;
        [InDataSet]
        "Use Cross-DockingEditable": Boolean;
        [InDataSet]
        "Identifier CodeEditable": Boolean;
        [InDataSet]
        ExciseProdPostingGroupEditable: Boolean;
        [InDataSet]
        "Excise Accounting TypeEditable": Boolean;
        [InDataSet]
        "Assessable ValueEditable": Boolean;
        [InDataSet]
        "Capital ItemEditable": Boolean;
        [InDataSet]
        SubcontractingEditable: Boolean;
        [InDataSet]
        "Sub. Comp. LocationEditable": Boolean;
        [InDataSet]
        "Fixed AssetEditable": Boolean;
        [InDataSet]
        "Scrap ItemEditable": Boolean;
        [InDataSet]
        [InDataSet]
        "MRP PriceEditable": Boolean;
        [InDataSet]
        "MRP ValueEditable": Boolean;
        [InDataSet]
        "Abatement %Editable": Boolean;
        [InDataSet]
        "PITStructureEditable": Boolean;
        [InDataSet]
        "Price Inclusive of TaxEditable": Boolean;
        [InDataSet]
        "Type CodeEditable": Boolean;
        [InDataSet]
        "Type Catogery CodeEditable": Boolean;
        [InDataSet]
        "Size CodeEditable": Boolean;
        [InDataSet]
        "Design CodeEditable": Boolean;
        [InDataSet]
        "Color CodeEditable": Boolean;
        [InDataSet]
        "Packing CodeEditable": Boolean;
        [InDataSet]
        "Quality CodeEditable": Boolean;
        [InDataSet]
        "Plant CodeEditable": Boolean;
        [InDataSet]
        "Item ClassificationEditable": Boolean;
        [InDataSet]
        "Type Code Desc.Editable": Boolean;
        [InDataSet]
        TypeCategoryCodeDescEditable: Boolean;
        [InDataSet]
        "Size Code Desc.Editable": Boolean;
        [InDataSet]
        "Design Code Desc.Editable": Boolean;
        [InDataSet]
        "Color Code Desc.Editable": Boolean;
        [InDataSet]
        "Packing Code Desc.Editable": Boolean;
        [InDataSet]
        "Quality Code Desc.Editable": Boolean;
        [InDataSet]
        "Plant Code Desc.Editable": Boolean;
        [InDataSet]
        "Manufacturer NameEditable": Boolean;
        [InDataSet]
        "Group CodeEditable": Boolean;
        [InDataSet]
        "Group code DescEditable": Boolean;
        [InDataSet]
        COGSEditable: Boolean;
        [InDataSet]
        "COGS Effective DateEditable": Boolean;
        [InDataSet]
        "Indent BlockedEditable": Boolean;
        [InDataSet]
        "Purchase BlockedEditable": Boolean;
        [InDataSet]
        PremiumEditable: Boolean;
        [InDataSet]
        Blocked2Editable: Boolean;
        [InDataSet]
        CommercialEditable: Boolean;
        [InDataSet]
        EconomicEditable: Boolean;
        [InDataSet]
        "Broken TilesEditable": Boolean;
        [InDataSet]
        "Indent QuantityEditable": Boolean;
        [InDataSet]
        IndirectConsumptionItemEditabl: Boolean;
        [InDataSet]
        "ABC AnalysisEditable": Boolean;
        [InDataSet]
        "Created IDEditable": Boolean;
        [InDataSet]
        "Created DateEditable": Boolean;
        [InDataSet]
        "Last Modified IDEditable": Boolean;
        [InDataSet]
        RetainedEditable: Boolean;
        [InDataSet]
        "Inventory In CRTEditable": Boolean;
        [InDataSet]
        DefaultTransactionUOMEditable: Boolean;
        [InDataSet]
        "Transfer Order BlockedEditable": Boolean;
        [InDataSet]
        DefaultProdPlantCodeEditable: Boolean;
        [InDataSet]
        "End Use Itemeditable": Boolean;
        [InDataSet]
        "Scheme Group CodeEditable": Boolean;
        [InDataSet]
        "Routing No.Editable": Boolean;
        [InDataSet]
        "Production BOM No.Editable": Boolean;
        [InDataSet]
        "Overhead RateEditable": Boolean;
        [InDataSet]
        "Order Tracking PolicyEditable": Boolean;
        [InDataSet]
        QtyonComponentLinesEditable: Boolean;
        [InDataSet]
        CriticalEditable: Boolean;
        [InDataSet]
        "Common Item No.Editable": Boolean;
        [InDataSet]
        ShowStockoutWarningDefaultYes: Boolean;
        [InDataSet]
        ShowStockoutWarningDefaultNo: Boolean;
        [InDataSet]
        ShowPreventNegInventoryDefaultYes: Boolean;
        [InDataSet]
        ShowPreventNegInventoryDefaultNo: Boolean;
        InventorySetup: Record "Inventory Setup";
        [InDataSet]
        SocialListeningSetupVisible: Boolean;
        [InDataSet]
        SocialListeningVisible: Boolean;
        [InDataSet]
        Premium: Boolean;
        [InDataSet]
        "Shelf No.Editable": Boolean;
        [InDataSet]
        "Shelf No.DraEditable": Boolean;
        [InDataSet]
        "Shelf No.HSKEditable": Boolean;


    //SocialListeningMgt:Codeunit "Social Listening Management";



}