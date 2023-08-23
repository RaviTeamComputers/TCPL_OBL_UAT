report 50042 "State Cust.Wise SalesJrnl Mod"
{
    // --MSVRN 091117--
    DefaultLayout = RDLC;
    RDLCLayout = '.\ReportLayouts\StateCustWiseSalesJrnlMod.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;
    PreviewMode = Normal;


    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING(State, "Sell-to Customer No.")
                                ORDER(Ascending);
            RequestFilterFields = "Posting Date", "No.", "Sell-to Customer No.", "Bill-to City", "Customer Type", State, "Sales Territory";
            column(TotalCDAvail; TotalCDAvail)
            { }
            column(ShowChainName; ShowChainName)
            { }
            column(Insurance_Amount; "Insurance Amount")
            { }
            column(ChainName; ChainName)
            { }
            column(MakeOrderDate; "Sales Invoice Header"."Make Order Date")
            { }
            column(DateFrom; DateFrom)
            { }
            column(DateTo; DateTo)
            { }
            column(Detailed; Detailed)
            { }
            column(StateGroup; StateNum)
            { }
            column(Statecode; Statecode)
            { }
            column(Statename; Statename)
            { }
            column(PostingDate; "Sales Invoice Header"."Posting Date")
            { }
            column(CustNo; "Sales Invoice Header"."Sell-to Customer No.")
            { }
            column(CustName; "Sales Invoice Header"."Sell-to Customer Name")
            { }
            column(City; "Sales Invoice Header"."Sell-to City")
            { }
            column(DealerCode; DealerCode)
            { }
            column(SIHpay; "Sales Invoice Header".Pay)
            { }
            column(CustType; "Sales Invoice Header"."Customer Type")
            { }
            column(SalesType; "Sales Invoice Header"."Sales Type")
            { }
            column(OrderNo; "Sales Invoice Header"."Order No.")
            { }
            column(ReleDate; "Sales Invoice Header"."Releasing Date")
            { }
            column(Set; "Sales Invoice Header".BD)
            { }
            column(get; "Sales Invoice Header".GPS)
            { }
            column(pet; "Sales Invoice Header".CKA)
            { }
            column(TotWeight; TotWeight)
            { }
            column(RatioFreightAmt; RatioFreightAmt)
            { }
            column(PchCode; PchCode)
            { }
            column(GPchCode; GPchCode)
            { }
            column(PriPchCode; PriPchCode)
            { }
            column(AreaCode; AreaCode)
            { }
            column(zone1; zone)
            { }
            column(ExDocNumber; "Sales Invoice Header"."External Document No.")
            { }
            column(FormCode; '') // 16630 blank "Sales Invoice Header"."Form Code"
            { }
            column(SagentCode; "Sales Invoice Header"."Shipping Agent Code")
            { }
            column(GrossWeight; "Sales Invoice Header"."Gross Weight")
            { }
            column(cdavail; "Sales Invoice Header"."CD Availed from Utilisation")
            { }
            column(GRNo; "Sales Invoice Header"."GR No.")
            { }
            column(GRDate; "Sales Invoice Header"."GR Date")
            { }
            column(SalesPerson; "Sales Invoice Header"."Salesperson Code")
            { }
            column(Order_booked; "Sales Invoice Header"."Order Booked Date")
            { }
            column(TruckNo; "Truck No.")
            { }
            column(PMT_code; "Sales Invoice Header"."PMT Code")
            { }
            column(TransporterName; "Transporter Name")
            { }
            column(SalesPersonSIH; Salesperson.Name)
            { }
            column(SalesPersonName; Salesperson.Name)
            { }
            column(PCHName; Salesperson1.Name)
            { }
            column(GovtSPName; Salesperson2.Name)
            { }
            column(PrivSPName; Salesperson3.Name)
            { }
            column(ShDim1; "Sales Invoice Header"."Shortcut Dimension 1 Code")
            { }
            column(ORCCOde; "Sales Invoice Header"."ORC Terms")
            { }
            column(ShiptoCity; SalesInvHeader."Ship-to City")
            { }
            column(Cust_gstno; GSTNO)
            { }
            column(Order_process; "Sales Invoice Header"."Payment Date 3")
            { }
            column(promis_dt; promis)
            { }
            column(BusnssDev; SalesPer[1].Name)
            { }
            column(GovtProjSles; SalesPer[2].Name)
            { }
            column(OrientBoutique; SalesPer[3].Name)
            { }
            column(CKA; "Sales Invoice Header"."CKA Code")
            { }
            column(RETAIL; "Sales Invoice Header"."Retail Code")
            { }
            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = FIELD("No."),
                               "Posting Date" = FIELD("Posting Date"),
                               "Sell-to Customer No." = FIELD("Sell-to Customer No.");
                DataItemTableView = WHERE("No." = FILTER(<> ''),
                                          Type = FILTER('Item|Fixed Asset|Resource'),
                                          Quantity = FILTER(<> 0));
                RequestFilterFields = "Unit of Measure Code", "No.";
                column(BuyerPricePerSqm; BuyerPricePerSqm)
                { }
                column(InvNo; "Sales Invoice Line"."Document No.")
                { }
                column(ref_code; refcode)
                { }
                column(Tableau_prod; tpc)
                { }
                column(Descrip; "Sales Invoice Line".Description + ' ' + "Sales Invoice Line"."Description 2")
                { }
                column(Quantity; "Sales Invoice Line".Quantity)
                { }
                column(Custo_price; "Sales Invoice Line"."Customer Price Group")
                { }
                column(TCS_amt; TCSAmt) // 16630  "Sales Invoice Line"."TDS/TCS Amount"
                { }
                column(TradeDisc; TradeDisc * "Sales Invoice Line".Quantity)
                { }
                column(Trade_Discount_Amount; "Trade Discount Amount")
                { }
                column(UOM; "Sales Invoice Line"."Unit of Measure")
                { }
                column(SqrMtr; SqrMtr)
                { }
                column(FreightAmt; FreightAmt)
                { }
                column(UnitPriceMulQual; "Sales Invoice Line"."Unit Price" * Quantity)
                { }
                column(ExAmount; ExAmount)
                { }
                column(LineDisAmt; LineDisAmt)
                { }
                column(DisAmtMinsAqAmt; "Sales Invoice Line"."Quantity Discount Amount" - "Sales Invoice Line"."Accrued Discount")
                { }
                column(ItemDiscount; ItemDiscount)
                { }
                column(AccDis; "Sales Invoice Line"."Accrued Discount")
                { }
                column(Val; ("Sales Invoice Line"."Quantity in Sq. Mt." * Round(RoundValue, 0.1, '='))) // 16630
                { }
                column(ItemInvValue; ItemInvValue) //MIPLRK030823
                { }
                column(ExciseAmt; 0)// 16630 blank "Sales Invoice Line"."Excise Amount"
                { }
                //column(ItemSalesValue; ("Sales Invoice Line"."Quantity in Sq. Mt." * Round(RoundValue, 0.1, '=') - (InvDisc1 + "Sales Invoice Line"."Trade Discount Amount")))//15578 SalesValue //MIPLRK030823
                column(ItemSalesValue; ItemSalesValue) //MIPLRK030823
                { }
                column(TotItemSalesValue; TotItemSalesValue) //MIPLRK030823
                { }
                column(Taxamount; Taxamount)
                { }
                column(GrValue; (RATPERKG) * ("Sales Invoice Line"."Gross Weight"))
                { }
                //column(Insurance1; (("Sales Invoice Line"."Quantity in Sq. Mt." * Round(RoundValue, 0.1, '=') - (InvDisc1 + "Sales Invoice Line"."Trade Discount Amount")) * 1 / 100))//Insurance1 //MIPLRK030823
                column(Insurance1; Insurance1) //MIPLRK030823
                { }
                column(tgVATCess; tgVATCess)
                { }
                column(TotalValue; TotalValue)
                { }
                column(Roundoff; Roundoff)
                { }
                column(NetValue; NetValue)
                { }
                column(EXAmt1; 0) // 16630 blank "Sales Invoice Line"."Excise Amount"
                { }
                column(Dis1; "Sales Invoice Line"."Discount Amt 1")
                { }
                column(Dis2; "Sales Invoice Line"."Discount Amt 2")
                { }
                column(Dis3; "Sales Invoice Line"."Discount Amt 3")
                { }
                column(Dis4; "Sales Invoice Line"."Discount Amt 4")
                { }
                column(Dis5; "Sales Invoice Line"."System Discount Amount")
                { }
                column(Dis6; "Sales Invoice Line"."Discount Amt 6")
                { }
                column(Dis7; "Sales Invoice Line"."Discount Amt 7")
                { }
                column(SILTaxAmt; 0) // 16630 blank  "Sales Invoice Line"."Tax Amount"
                { }
                column(ET1; ET1)
                { }
                column(SILNo; "Sales Invoice Line"."No.")
                { }
                column(ItemClass; Item."Item Classification")
                { }
                column(ItemCatCode; "Sales Invoice Line"."Item Category Code")
                { }
                column(ItemGrpDes; TgItemGrp.Description)
                { }
                column(QualityCode; "Sales Invoice Line"."Quality Code")
                { }
                column(LocationCode; "Sales Invoice Line"."Location Code")
                { }
                column(MRPPrice; "Sales Invoice Line"."MRP Price")
                { }
                column(MRPPerSqmtr; MRPPerSqmtr)
                { }
                column(D1; "Sales Invoice Line".D1)
                { }
                column(D2; "Sales Invoice Line".D2)
                { }
                column(D3; "Sales Invoice Line".D3)
                { }
                column(D4; "Sales Invoice Line".D4)
                { }
                column(D5; "Sales Invoice Line".S1)
                { }
                column(D6; "Sales Invoice Line".D6)
                { }
                column(D7; "Sales Invoice Line".D7)
                { }
                column(LineDisPerSqMeter; LineDisPerSqMeter)
                { }
                column(BillingRate; BillingRate)
                { }
                column(BuyerRateSqm; BuyerRateSqm)
                { }
                column(InvDisc1; InvDisc1)
                { }
                column(OfferCode; "Sales Invoice Line"."Offer Code")
                { }
                column(CustPriceGroup; "Sales Invoice Line"."Customer Price Group")
                { }
                column(AD_req; "Sales Invoice Line"."Approval Required") //16767
                { }
                column(Remarks; "Sales Invoice Line".Remarks)
                { }
                column(Vcost; "Sales Invoice Line"."V. Cost")
                { }
                column(var1; var1)
                { }
                column(var2; Var2)
                { }
                column(ItemNo; "Sales Invoice Line"."No.")
                { }
                column(itemprice1; itemprice + itemprice1)
                { }
                column(gstper; GSTPERCENT("Document No.", "Line No.")) // 16630  "Sales Invoice Line"."GST %"
                { }
                column(tgst; GSTAmtFinal)// 16630  "Sales Invoice Line"."Total GST Amount"  TotalGSTAmtLine("Document No.", "Line No.")
                { }
                column(FrightChargeAmt; FrightChargeAmt)
                { }
                column(OthClm; OthClm)
                { }
                column(InsuranceClm; InsuranceClm)
                { }
                column(TotalQty; TotalQty)
                { }
                column(ad_remarks; "Sales Invoice Line"."AD Remarks")
                { }
                column(Gweight; "Sales Invoice Line"."Gross Weight")
                { }
                column(nweight; "Sales Invoice Line"."Net Weight")
                { }

                trigger OnAfterGetRecord()
                var
                    BaseUOM: Record "Item Unit of Measure";
                    ItemLedEntry: Record "Item Ledger Entry";
                    TCSentry: Record "TCS Entry";
                    SIL: Record "Sales Invoice Line";
                    TaxTranscValue: Record "Tax Transaction Value";
                    TCSSetup: Record "TCS Setup";
                begin
                    RoundValue := 0;
                    SalesValue1 := 0;
                    InsuranceValue := 0;
                    RoundValue := "Sales Invoice Line"."Buyer's Price" / "Sales Invoice Line"."Qty. per Unit of Measure";
                    GSTAmtFinal := 0;

                    Clear(TCSAmt);
                    Clear(igst);
                    Clear(sgst);
                    Clear(Cgst);
                    TCSSetup.Get();
                    TaxTranscValue.Reset();
                    TaxTranscValue.SetRange("Tax Record ID", "Sales Invoice Line".RecordId);

                    TaxTranscValue.SetRange("Line No. Filter", "Sales Invoice Line"."Line No.");
                    TaxTranscValue.SetRange("Tax Type", TCSSetup."Tax Type");
                    TaxTranscValue.SetRange("Value Type", TaxTranscValue."Value Type"::COMPONENT);
                    TaxTranscValue.SetRange("Value ID", 6);
                    if TaxTranscValue.FindFirst() then
                        TCSAmt := TaxTranscValue.Amount;

                    FreightAmt := 0;
                    TotalQty := 0;
                    recSalesInvLn.RESET;
                    recSalesInvLn.SETRANGE("Document No.", "Document No.");
                    recSalesInvLn.SETRANGE(Type, Type);
                    IF recSalesInvLn.FINDFIRST THEN
                        REPEAT
                            TotalQty += recSalesInvLn.Quantity;
                        UNTIL recSalesInvLn.NEXT = 0;

                    SIL.Reset();
                    SIL.SetRange("Document No.", "Sales Invoice Header"."No.");
                    SIL.SetRange(Type, SIL.Type::"Charge (Item)");
                    SIL.SetFilter("No.", '%1', 'INSURANCE');
                    IF SIL.FindSet() then
                        Insurance1 := SIL."Line Amount";

                    Clear(InvDisc1);
                    SIL.Reset();
                    SIL.SetRange("Document No.", "Sales Invoice Line"."Document No.");
                    SIL.SetRange("Line No.", "Sales Invoice Line"."Line No.");
                    if SIL.Type <> SIL.Type::" " then
                        IF SIL.FindFirst() then
                            InvDisc1 := SIL."Structure Discount Amount";

                    /*
                    PostedStrOrderLineDetails.RESET;
                    PostedStrOrderLineDetails.SETCURRENTKEY(Type,"Invoice No.","Item No.","Line No.");//Rahul 060706
                    PostedStrOrderLineDetails.SETRANGE(Type,PostedStrOrderLineDetails.Type::Sale);
                    PostedStrOrderLineDetails.SETRANGE("Document Type",PostedStrOrderLineDetails."Document Type"::Invoice);
                    PostedStrOrderLineDetails.SETRANGE("Invoice No.","Document No.");
                    PostedStrOrderLineDetails.SETRANGE("Charge Type",PostedStrOrderLineDetails."Charge Type"::Freight);
                    PostedStrOrderLineDetails.SETRANGE("Line No.","Line No.");
                    //TRI SC Open
                    IF PostedStrOrderLineDetails.FINDFIRST THEN
                    REPEAT
                      FreightAmt += ABS(PostedStrOrderLineDetails.Amount);
                    UNTIL PostedStrOrderLineDetails.NEXT = 0;
                    */

                    //msvrn 041017>>
                    /* 16630   FrightChargeAmt := 0;
                       OthClm := 0;
                       InsuranceClm := 0;
                       PostedStrOrderLineDetails1.RESET;
                       PostedStrOrderLineDetails1.SETCURRENTKEY(Type, "Invoice No.", "Item No.", "Line No.");//Rahul 060706
                       PostedStrOrderLineDetails1.SETRANGE(Type, PostedStrOrderLineDetails1.Type::Sale);
                       PostedStrOrderLineDetails1.SETRANGE("Document Type", PostedStrOrderLineDetails1."Document Type"::Invoice);
                       PostedStrOrderLineDetails1.SETRANGE("Invoice No.", "Sales Invoice Line"."Document No.");
                       PostedStrOrderLineDetails1.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");
                       IF PostedStrOrderLineDetails1.FIND('-') THEN
                           REPEAT
                               IF NOT PostedStrOrderLineDetails1."Payable to Third Party" THEN BEGIN
                                   IF PostedStrOrderLineDetails1."Tax/Charge Type" = PostedStrOrderLineDetails1."Tax/Charge Type"::Charges THEN BEGIN
                                       CASE PostedStrOrderLineDetails1."Tax/Charge Group" OF
                                           'FREIGHT':
                                               BEGIN
                                                   FrightChargeAmt := FrightChargeAmt + PostedStrOrderLineDetails1.Amount;
                                               END;
                                           'OTH_CLAIM':
                                               BEGIN
                                                   OthClm := OthClm + PostedStrOrderLineDetails1.Amount;
                                               END;
                                           'INS_CLAIM':
                                               BEGIN
                                                   InsuranceClm := InsuranceClm + PostedStrOrderLineDetails1.Amount;
                                               END;
                                       END;
                                   END;
                               END;
                           UNTIL PostedStrOrderLineDetails1.NEXT = 0;*/ // 16630
                                                                        //msvrn<<


                    IF Quantity <> 0 THEN  //ND 6700
                        IF BaseUOM.GET("No.", "Unit of Measure Code") THEN
                            IF BaseUOM."Qty. per Unit of Measure" <> 0 THEN
                                //16630   BuyerPricePerSqm := (("Line Amount" + "Excise Amount" + "Sales Invoice Line"."Line Discount Amount") / Quantity) / BaseUOM."Qty. per Unit of Measure";
                                BuyerPricePerSqm := (("Line Amount" + "Sales Invoice Line"."Line Discount Amount") / Quantity) / BaseUOM."Qty. per Unit of Measure";

                    //Vipul Tri1.0
                    // TRI G.D 06.05.08
                    Cust.GET("Sales Invoice Line"."Sell-to Customer No.");
                    IF Location.GET("Location Code") THEN
                        IF Location."State Code" = Cust."State Code" THEN
                            // 16630       VATAmount := "Sales Invoice Line"."Tax Amount";
                            CLEAR(var1);
                    CLEAR(Var2);
                    IF Item.GET("Sales Invoice Line"."No.") THEN
                        var1 := Item."Item Classification";
                    refcode := Item."Old Code";
                    tpc := Item."Tableau Product Group";

                    IF TgItemGrp.GET("Sales Invoice Line"."Group Code") THEN
                        Var2 := TgItemGrp.Description;

                    CLEAR(LineDisPerSqMeter);

                    // 16630   Taxamount := ROUND("Tax Amount", 0.01, '=');
                    CLEAR(ET1);

                    ExAmount := ROUND("Sales Invoice Line".Amount, 0.01, '=');
                    IF S1 <> 0 THEN
                        val1 := "Quantity in Sq. Mt." * S1;

                    IF D7 <> 0 THEN
                        val2 := "Quantity in Sq. Mt." * D7;

                    ItemInvValue := ROUND(ExAmount, 0.01, '=');

                    LineDisAmt := "Discount Amt 1" + "Discount Amt 2" + "Discount Amt 3" + "Discount Amt 4"
                                 + "System Discount Amount" + "Discount Amt 6" + "Discount Amt 7";

                    clear(ItemSalesValue);
                    IF InvDisc1 > 0 THEN
                        ItemSalesValue := ItemInvValue - ABS(InvDisc1)
                    ELSE
                        ItemSalesValue := ItemInvValue - (InvDisc1);

                    TotItemSalesValue += ItemSalesValue; //MIPLRK030823

                    NetValue := ROUND(ItemSalesValue + FreightAmt + Taxamount + Insurance1 + ET1, 0.01, '=');

                    SqrMtr := ROUND(Item.UomToSqm("No.", "Unit of Measure Code", Quantity), 0.01, '=');
                    Sqmt := Item.UomToSqm("No.", "Unit of Measure Code", Quantity);
                    IF SqrMtr <> 0 THEN
                        // LineDisPerSqMeter := ROUND((("Sales Invoice Line"."Discount Amt 1" + "Sales Invoice Line"."Discount Amt 2" + "Sales Invoice Line"."Discount Amt 3"
                        // + "Sales Invoice Line"."Discount Amt 4" + "Sales Invoice Line"."System Discount Amount") / SqrMtr), 0.01, '=');  //17141 wrong field selected to add
                        //17141- Asked from lakshman sir
                        LineDisPerSqMeter := ROUND((("Sales Invoice Line".D1 + "Sales Invoice Line".D2 + "Sales Invoice Line".D3
                                          + "Sales Invoice Line".D4 + "Sales Invoice Line".S1)), 0.01, '=');

                    IF Sqmt <> 0 THEN
                        MRPPerSqmtr := ROUND(("MRP Price" * Quantity / Sqmt), 0.01, '=');
                    IF SqrMtr <> 0 THEN
                        BillingRate := ROUND(ItemInvValue / SqrMtr, 0.01, '=');

                    DealerCode := '';
                    SalesInvHeader.RESET;
                    SalesInvHeader.SETRANGE("No.", "Document No.");
                    IF SalesInvHeader.FIND('-') THEN BEGIN
                        SalespersonPurchaser.RESET;
                        IF SalespersonPurchaser.GET(SalesInvHeader."Dealer Code") THEN
                            DealerCode := SalespersonPurchaser."Customer No.";
                    END;

                    GrandTaxAmount := GrandTaxAmount + Taxamount;

                    TotalBasicAmt := "Sales Invoice Line"."Unit Price" * "Sales Invoice Line".Quantity;

                    itemprice := 0;
                    itemprice1 := 0;
                    itemapp.RESET;
                    itemapp.SETCURRENTKEY("Outbound Item Entry No.", "Item Ledger Entry No.", "Cost Application", "Transferred-from Entry No.");
                    itemapp.SETRANGE("Outbound Item Entry No.", GetItemLedgerEntry("Sales Invoice Line"."Document No.", "Sales Invoice Line"."Line No."));
                    IF itemapp.FINDFIRST THEN BEGIN
                        IF ItemLedEntry.GET(itemapp."Inbound Item Entry No.") THEN BEGIN

                            IF ItemLedEntry."Entry Type" = ItemLedEntry."Entry Type"::Transfer THEN BEGIN
                                TranRecLine.RESET;
                                TranRecLine.SETRANGE("Document No.", ItemLedEntry."Document No.");
                                TranRecLine.SETRANGE("Item No.", ItemLedEntry."Item No.");
                                /* IF TranRecLine.FINDFIRST THEN
                                     itemprice := TranRecLine."MRP Price";*/ // 16630
                            END ELSE BEGIN
                                IF ItemLedEntry."Entry Type" = ItemLedEntry."Entry Type"::Purchase THEN BEGIN
                                    purinvline.RESET;
                                    purinvline.SETRANGE(purinvline."Receipt No.", ItemLedEntry."Document No.");
                                    purinvline.SETRANGE("No.", ItemLedEntry."Item No.");
                                    /*   IF purinvline.FINDFIRST THEN
                                           itemprice1 := purinvline."Assessable Value";*/ // 16630
                                END ELSE BEGIN
                                    itemprice1 := (ItemLedEntry."Cost Amount (Actual)" / ItemLedEntry.Quantity);
                                END;
                            END;
                        END;
                    END;
                    SalesValue1 := ("Sales Invoice Line"."Quantity in Sq. Mt." * Round(RoundValue, 0.1, '=') - (InvDisc1 + "Sales Invoice Line"."Trade Discount Amount"));
                    InsuranceValue := (("Sales Invoice Line"."Quantity in Sq. Mt." * Round(RoundValue, 0.1, '=') - (InvDisc1 + "Sales Invoice Line"."Trade Discount Amount")) * 1 / 100);

                    GSTAmtFinal := ((SalesValue1 + InsuranceValue) * GSTPERCENT("Document No.", "Line No.") / 100);

                end;

                trigger OnPreDataItem()
                begin
                    GLSetup.GET;
                    ItemInvValue := 0;
                    TotItemSalesValue := 0;
                    val1 := 0;
                    val2 := 0;
                    NetValue := 0;
                    Insurance1 := 0;
                    VATAmount := 0;
                    tgVATCess := 0;
                    LineDisAmt := 0;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                TotalCDAvail += "Sales Invoice Header"."CD Availed from Utilisation";

                EVALUATE(StateNum, "Sales Invoice Header".State);

                CompanyInfo.GET;
                CompanyName1 := CompanyInfo.Name;
                CompanyName2 := CompanyInfo."Name 2";

                IF StateRec.GET(State) THEN
                    Statename := StateRec.Description;

                TotWeight := 0;
                RatioFreightAmt := 0;

                PchCode := '';
                GPchCode := '';
                PriPchCode := '';
                CLEAR(ChainName);
                IF Customer2.GET("Sales Invoice Header"."Sell-to Customer No.") THEN BEGIN
                    PchCode := Customer2."PCH Code";
                    GPchCode := Customer2."Govt. SP Resp.";
                    PriPchCode := Customer2."Private SP Resp.";
                    AreaCode := Customer2."Area Code";
                    ChainName := Customer2."Chain Name";
                    GSTNO := Customer2."GST Registration No.";
                    zone := Customer2."Tableau Zone";
                END;
                IF Salesperson.GET(Customer2."Salesperson Code") THEN;
                IF Salesperson1.GET(PchCode) THEN;
                IF Salesperson2.GET(GPchCode) THEN;
                IF Salesperson3.GET(PriPchCode) THEN;

                RecSalesInvLine.RESET;
                RecSalesInvLine.SETRANGE("Document No.", "No.");
                IF RecSalesInvLine.FINDFIRST THEN BEGIN
                    REPEAT
                        TotWeight += RecSalesInvLine."Gross Weight";
                    UNTIL RecSalesInvLine.NEXT = 0;
                END;

                IF TotWeight <> 0 THEN
                    RatioFreightAmt := FreightAmt / TotWeight
                ELSE
                    RatioFreightAmt := 0;

                arcsahead.RESET;
                arcsahead.SETRANGE("No.", "Order No.");
                IF arcsahead.FINDFIRST THEN
                    promis := arcsahead."Promised Delivery Date";

                CLEAR(SalesPer);
                IF SalesPer[1].GET("Business Development") THEN;
                IF SalesPer[2].GET("Govt. Project Sales") THEN;
                IF SalesPer[3].GET("Orient Bell Tiles Boutique") THEN;

                "Sales Invoice Header".CALCFIELDS("Gross Weight");
                IF "Sales Invoice Header"."GR Value" <> 0 THEN
                    IF ("Sales Invoice Header"."Gross Weight" <> 0) THEN
                        RATPERKG := "Sales Invoice Header"."GR Value" / "Sales Invoice Header"."Gross Weight";
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                field(Detail; Detailed)
                { ApplicationArea = All; }
            }
        }

        actions
        { }
    }

    labels
    { }

    trigger OnPostReport()
    begin

        //RepAuditMgt.CreateAudit(50042);
    end;

    trigger OnPreReport()
    begin

        IF STRPOS(FORMAT("Sales Invoice Header".GETFILTER("Sales Invoice Header"."Posting Date")), '.') <> 1 THEN
            DateFrom := FORMAT("Sales Invoice Header".GETRANGEMIN("Sales Invoice Header"."Posting Date"));

        IF STRPOS(FORMAT("Sales Invoice Header".GETFILTER("Sales Invoice Header"."Posting Date")), '.')
          <> STRLEN(FORMAT("Sales Invoice Header".GETFILTER("Sales Invoice Header"."Posting Date"))) - 1 THEN
            DateTo := FORMAT("Sales Invoice Header".GETRANGEMAX("Sales Invoice Header"."Posting Date"));

        IF UPPERCASE(USERID) = 'ADMIN' THEN
            ShowChainName := TRUE;
    end;

    var
        // 16630 PostedStrOrderLineDetails: Record 13798;
        TotItemSalesValue, BillingRate, sgst, igst, Cgst, TotalCDAvail, TradeDisc, ItemDiscount, TotalQty : Decimal;
        TotalBasicAmt, BuyerRateSqm, MRPPerSqmtr, Sqmt, tgVATCess, GrandTaxAmount, Taxamount : Decimal;
        TotalValue, ItemSalesValue, ItemInvValue, ExAmount, GSTAmtFinal, RoundValue, TCSAmt, Insurance1 : Decimal;
        LineDisAmt, ET1, InvDisc1, InsuranceValue, SalesValue1, SqrMtr, Roundoff, NetValue : Decimal;
        InsuranceClm, OthClm, RatioFreightAmt, TotWeight, FreightAmt, RATPERKG, VATAmount : Decimal;
        FrightChargeAmt, val2, val1, itemprice1, itemprice, LineDisPerSqMeter, BuyerPricePerSqm : Decimal;
        Statename, DateTo, DateFrom : Text[30];
        RepAuditMgt: Codeunit "Auto PDF Generate";
        Item: Record Item;
        Cust, Customer2 : Record Customer;
        CompanyInfo: Record "Company Information";
        ExcelBuf: Record "Excel Buffer" temporary;
        GenLegSetup, GLSetup : Record "General Ledger Setup";
        TgItemGrp: Record "Item Group";
        TaxAreaLine: Record "Tax Area Line";
        TaxJurisdiction: Record "Tax Jurisdiction";
        TaxDetails: Record "Tax Detail";
        recSalesInvLn, RecSalesInvLine, SalesInvLine : Record "Sales Invoice Line";
        StateRec: Record State;
        Location: Record Location;
        itemapp: Record "Item Application Entry";
        TranRecLine: Record "Transfer Receipt Line";
        purinvline: Record "Purch. Inv. Line";
        arcsahead: Record "Sales Header Archive";
        SalesPer: array[3] of Record "Salesperson/Purchaser";
        Salesperson3, Salesperson : Record "Salesperson/Purchaser";
        Salesperson2, Salesperson1, SalespersonPurchaser : Record "Salesperson/Purchaser";
        SalesInvHeader: Record "Sales Invoice Header";
        ShowChainName, remarks, PrintToExcel, Detailed : Boolean;
        StateNum: Integer;
        tpc: Text[10];
        ChainName: Text[50];
        Var2, CompanyName2, CompanyName1 : Text[100];
        zone, Statecode : Code[10];
        GSTNO: Code[15];
        refcode, GlobalDocNo, AreaCode, PriPchCode, GPchCode, PchCode : Code[20];
        DealerCode: Code[30];
        var1: Code[50];
        promis: Date;
        Text001: Label 'State Cust. Wise Sales Journal';
        Text002: Label 'Data';
        Text005: Label 'Company Name';
        Text006: Label 'Report No.';
        Text007: Label 'Report Name';
        Text008: Label 'User ID';
        Text009: Label 'Print Date';
        Text011: Label 'Filters';


    procedure GetItemLedgerEntry(DocNo: Code[20]; DocLineNo: Integer) EntryNo: Integer
    var
        ValueEntry: Record "Value Entry";
    begin
        ValueEntry.RESET;
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", DocNo);
        ValueEntry.SETRANGE("Document Line No.", DocLineNo);
        IF ValueEntry.FINDFIRST THEN BEGIN
            EntryNo := ValueEntry."Item Ledger Entry No.";
            //MESSAGE('%1',EntryNo);
        END;
    end;

    procedure TotalGSTAmtLine(DocNo: Code[20]; LineNo: Integer): Decimal
    var
        PstdSalesInv: Record "Sales Invoice Line";
        DetGstLedEntry: Record "Detailed GST Ledger Entry";
        TotalAmt, SGSTper, CGSTper, IGSTper, CGSTAmt, SGSTAmt, GSTBaseAmt, GSTper, IGSTAmt : Decimal;
    begin
        Clear(IGSTAmt);
        Clear(GSTBaseAmt);
        Clear(SGSTAmt);
        Clear(CGSTAmt);
        Clear(IGSTper);
        Clear(CGSTper);
        Clear(SGSTper);
        DetGstLedEntry.Reset();
        DetGstLedEntry.SetRange("Document No.", DocNo);
        DetGstLedEntry.SetRange("Document Line No.", LineNo);
        if DetGstLedEntry.FindSet() then
            repeat
                if DetGstLedEntry."GST Component Code" = 'IGST' then
                    IGSTAmt := DetGstLedEntry."GST Amount";
                if DetGstLedEntry."GST Component Code" = 'CGST' then
                    CGSTAmt := DetGstLedEntry."GST Amount";
                if DetGstLedEntry."GST Component Code" = 'SGST' then
                    SGSTAmt := DetGstLedEntry."GST Amount";

            until DetGstLedEntry.Next() = 0;

        Clear(TotalAmt);
        Clear(GSTper);
        TotalAmt := IGSTAmt + SGSTAmt + CGSTAmt;
        EXIT(ABS(TotalAmt));
    end;

    procedure GSTPERCENT(DocNo: Code[20]; DocLineNo: Integer): Decimal
    var
        PstdSalesInv: Record "Sales Invoice Line";
        DetGstLedEntry: Record "Detailed GST Ledger Entry";
        GSTper, SGSTper, CGSTper, IGSTper, CGSTAmt, SGSTAmt, GSTBaseAmt, TotalAmt, IGSTAmt : Decimal;
    begin
        Clear(IGSTAmt);
        Clear(GSTBaseAmt);
        Clear(SGSTAmt);
        Clear(CGSTAmt);
        Clear(IGSTper);
        Clear(CGSTper);
        Clear(SGSTper);

        DetGstLedEntry.RESET();
        DetGstLedEntry.SETRANGE("Document No.", DocNo);
        DetGstLedEntry.SetRange("Document Line No.", DocLineNo);
        DetGstLedEntry.SETRANGE("GST Component Code", 'IGST');
        IF DetGstLedEntry.FINDFIRST THEN begin
            IGSTper := DetGstLedEntry."GST %";
        end;

        DetGstLedEntry.RESET();
        DetGstLedEntry.SETRANGE("Document No.", DocNo);
        DetGstLedEntry.SetRange("Document Line No.", DocLineNo);
        DetGstLedEntry.SETRANGE("GST Component Code", 'SGST');
        IF DetGstLedEntry.FINDFIRST THEN begin
            SGSTper := DetGstLedEntry."GST %";
        end;


        DetGstLedEntry.RESET();
        DetGstLedEntry.SETRANGE("Document No.", DocNo);
        DetGstLedEntry.SetRange("Document Line No.", DocLineNo);
        DetGstLedEntry.SETRANGE("GST Component Code", 'CGST');
        IF DetGstLedEntry.FINDFIRST THEN begin
            CGSTper := DetGstLedEntry."GST %";
        end;


        Clear(GSTper);
        GSTper := IGSTper + CGSTper + SGSTper;
        exit(GSTper);
    end;
}

