report 50406 "GST Sales Invoice New"
{
    DefaultLayout = RDLC;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;
    RDLCLayout = '.\ReportLayouts\GSTSalesInvoiceNew.rdl';
    Permissions = TableData "Sales Invoice Header" = rm;
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.";
            column(SelltoCountryRegionCode_SalesInvoiceHeader; "Sales Invoice Header"."Sell-to Country/Region Code")
            {
            }
            column(AcknowledgementNo_SalesInvoiceHeader; "Sales Invoice Header"."Acknowledgement No.")
            {
            }
            column(IRNHash_SalesInvoiceHeader; "Sales Invoice Header"."IRN Hash")
            {
            }
            column(QRCode_SalesInvoiceHeader; "Sales Invoice Header"."QR Code")
            {
            }
            column(CarriedForCaption; CarriedForLbl)
            {
            }
            column(BroughtForCaption; BroughtForLbl)
            {
            }
            column(B2CQRCode; '')
            {
            }
            column(loc_satecode; State_Rec."State Code (GST Reg. No.)")
            {
            }
            column(TranName_Sih; "Sales Invoice Header"."Transporter's Name")
            {
            }
            column(ship_name; "Sales Invoice Header"."Ship-to Name" + ' ' + "Sales Invoice Header"."Ship-to Name 2")
            {
            }
            column(cust_no; "Sales Invoice Header"."Sell-to Customer No.")
            {
            }
            column(E_way; "Sales Invoice Header"."E-Way Bill No.")
            {
            }
            column(PMT; "Sales Invoice Header"."PMT Code")
            {
            }
            column(ship_add1; ShipToAdd[2])
            {
            }
            column(ship_add2; ShipToAdd[3])
            {
            }
            column(ship_city_post; ShipToAdd[4])
            {
            }
            column(Ship_to_pin; ShipToAdd[5])
            {
            }
            column(ship_state; ShipToAdd[9])
            {
            }
            column(ship_add8; "Sales Invoice Header"."Ship-to Name 2")
            {
            }
            column(BILL_name; BillToAdd[1])
            {
            }
            column(BILL_ADD1; BillToAdd[2])
            {
            }

            column(BILL_ADD2; BillToAdd[3])
            {
            }
            column(BILL_CITY_POST; BillToAdd[4] + '- ' + BillToAdd[5])
            {
            }
            column(BILL_STATE; BillToAdd[9])
            {
            }

            column(cust_gstno_billto; "Sales Invoice Header"."Customer GST Reg. No.")
            {
            }
            column(cust_statecode_billto; BillToAdd[10])
            {
            }
            column(Virtual_ID; BillToAdd[11])
            {
            }
            column(cust_gstno_shipto; ShipToAdd[7])
            {
            }
            column(cust_statecode_shipto; ShipToAdd[10])
            {
            }
            column(custState_code; custState."State Code (GST Reg. No.)")
            {
            }
            column(Company_GST_No; Location."GST Registration No.")
            {
            }
            column(Company_PAN_No; CompanyInfo."P.A.N. No.")
            {
            }
            column(PostingDate_SalesInvoiceHeader; "Sales Invoice Header"."Posting Date")
            {
            }
            column(No_SalesInvoiceHeader; "Sales Invoice Header"."No.")
            {
            }
            column(StateCode; StateCode)
            {
            }

            column(Location_Address; Location.Address + ',' + Location."Address 2" + ', ' + Location.City + ',' + State_Rec.Description + ', ' + 'Phone No.' + Location."Phone No.")
            {
            }
            column(Stname; Stname)
            {
            }
            column(CompanyInfo_Name; CompanyInfo.Name)
            {
            }
            column(JudText1; JudText[1])
            {
            }
            column(JudText2; JudText[2])
            {
            }
            column(PerJud1; FORMAT(PerJud[1]))
            {
            }
            column(PerJud2; FORMAT(PerJud[2]))
            {
            }
            column(FormText; FormText)
            {
            }
            column(CusPan; Cust1."P.A.N. No.")
            {
            }
            column(CusT_GSTNo; Cust1."GST Registration No.")
            {
            }
            column(NewPolicy; NewPolicy)
            {
            }
            column(CurCaption; CurCaption)
            {
            }
            column(Text13705; Text13705)
            {
            }
            column(Text13706; Text13706)
            {
            }
            column(HeaderTextLatest; HeaderTextLatest)
            {
            }
            column(DocnO; CONVERTSTR("Sales Invoice Line"."Document No.", '\', '/'))
            {
            }
            column(PostingDate; FORMAT("Sales Invoice Header"."Posting Date"))
            {
            }
            column(CINNo; 'CETSH-6908 9090')
            {
            }
            column(Authorisigna; 'AUTHORIZED SIGNATORY')
            {
            }
            column(CustomerOrderN; "Sales Invoice Header"."Order No.")
            {
            }
            column(SelltoCustNo; "Sales Invoice Header"."Sell-to Customer No.")
            {
            }
            column(CustName; "Sales Invoice Header"."Sell-to Customer Name")
            {
            }
            column(SelltoAdd; "Sales Invoice Header"."Sell-to Address")
            {
            }
            column(SelltoAdd2; "Sales Invoice Header"."Sell-to Address 2")
            {
            }
            column(SelltoCity; "Sales Invoice Header"."Sell-to City")
            {
            }
            column(StateName; "Sales Invoice Header"."State name")
            {
            }
            column(Stnameloc; Stname)
            {
            }
            column(ShiptoName; "Sales Invoice Header"."Ship-to Name")
            {
            }
            column(ShiptoName2; "Sales Invoice Header"."Ship-to Name 2")
            {
            }
            column(ShipttoAdd; "Sales Invoice Header"."Ship-to Address")
            {
            }
            column(s; "Sales Invoice Header"."Ship-to Address 2")
            {
            }
            column(ShiptoCity; "Sales Invoice Header"."Ship-to City")
            {
            }
            column(CustLST; "Cust LST")
            {
            }
            column(CustCST; "Cust CST")
            {
            }
            column(TINNo; SaleInvHeader."Tin No.")
            {
            }
            column(OrderNo; CONVERTSTR("Sales Invoice Header"."Order No.", '\', '/'))
            {
            }
            column(OrderDate; FORMAT("Sales Invoice Header"."Order Date"))
            {
            }
            column(TruckNo; "Sales Invoice Header"."Truck No.")
            {
            }
            column(VendorName; "Sales Invoice Header"."Transporter Name")
            {
            }
            column(GrNo; "Sales Invoice Header"."GR No.")
            {
            }
            column(GrDate; FORMAT("Sales Invoice Header"."GR Date"))
            {
            }
            column(PONo; "Sales Invoice Header"."PO No.")
            {
            }
            column(OutStand; 'Rs' + ' ' + FORMAT(Outstand) + ' ' + '(' + 'Including this Invoice' + ')')
            {
            }
            column(pay; "Sales Invoice Header".Pay)
            {
            }
            column(FRT; "Sales Invoice Header"."Freight Amt")
            {
            }
            column(inv_name; invoicename)
            {
            }
            column(pl_suppl; pos)
            {
            }
            column(rem_lubo; REM)
            {
            }
            column(OthClm; OthClm)
            {
            }
            column(InsuranceClm; InsuranceClm)
            {
            }
            column(Container; "Sales Invoice Header"."Vehicle No.")
            {
            }
            column(TotalValue; Round(TotalValue, 0.01, '='))
            {

            }
            column(TradeDiscount; TradeDiscount)
            {

            }
            column(StructureDiscAmnt; Round(StructureDiscAmnt, 0.01, '='))
            {

            }
            column("FreightAmt"; Round("Sales Invoice Header"."Freight Amt", 0.01, '='))
            {

            }
            column(InsuranceAmount; Round("Sales Invoice Header"."Insurance Amount", 0.01, '='))
            {

            }
            column(TaxableValue; Round(TaxableValue, 0.01, '='))
            {

            }
            column(TotalGSTAmount; Round(TotalGSTAmount, 0.01, '='))
            {

            }
            column(TOtalTCSInclcesAmt; Round(TOtalTCSInclcesAmt, 0.01, '='))
            {

            }
            column(GrossTotalValue; Round(GrossTotalValue, 0.01, '='))
            {

            }

            column(GLRoundingOFF; GLRoundingOFF)
            {
            }
            column(NetAmountNew; Round(GLRoundingOFF + GrossTotalValue, 0.01, '='))
            {
            }
            column(NetInWord; NetInWord[1])
            {
            }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                column(OuputNos; OuputNos)
                {
                }
                column(copyText1; copyText1)
                {
                }
                column(NoOfLoops; NoOfLoops)
                {
                }
                column(TotalCopies; NoOfCopies)
                {
                }
                dataitem("Sales Invoice Line"; "Sales Invoice Line")
                {
                    DataItemLink = "Document No." = FIELD("No.");
                    DataItemLinkReference = "Sales Invoice Header";
                    DataItemTableView = SORTING("Document No.", "Line No.")
                                        ORDER(Ascending)
                                        WHERE(Type = FILTER(Item),
                                              Quantity = FILTER(<> 0));
                    RequestFilterFields = "No.";
                    column(TotalNoOfInvoiceLines; TotalNoOfInvoiceLines)
                    {
                    }
                    column(HideCarriedForward; HideCarriedForward)
                    {
                    }
                    column(OtherTaxes; OtherTaxes)
                    {
                    }
                    column(HSNSACCode_SalesInvoiceLine; "Sales Invoice Line"."HSN/SAC Code")
                    {
                    }
                    column(CRate; CRate)
                    {
                    }
                    column(CAmount; TotalCGSTAmtLine("Document No."))
                    {
                    }
                    column(SRate; SRate)
                    {
                    }
                    column(SAmount; TotalCGSTAmtLine("Document No."))
                    {
                    }
                    column(URate; URate)
                    {
                    }
                    column(UAmount; UAmount)
                    {
                    }
                    column(IRate; IRate)
                    {
                    }
                    column(IAmount; TotalIGSTAmtLine("Document No."))
                    {
                    }
                    column(TotalVATAMT; TotalVATAMT)
                    {

                    }
                    column(TotalGSTAmt; TotalGSTAmt)
                    {
                    }
                    column(GSTTotal; GSTTotal)
                    {
                    }

                    column(TDSTCS_SalesInvoiceLine; TCSper)
                    {
                    }

                    column(PageBreak1; PageBreak1)
                    {
                    }
                    column(PageCont; PageCont)
                    {
                    }
                    column(Sno; "S.No.")
                    {
                    }
                    column(body; body)
                    {
                    }
                    column(Description2; Description + ' ' + "Description 2")
                    {
                    }
                    column(QtySIL; "Sales Invoice Line".Quantity)
                    {
                    }
                    column(UOM; "Sales Invoice Line"."Unit of Measure Code")
                    {
                    }
                    column(QtySqMtr; "Sales Invoice Line"."Quantity in Sq. Mt.")
                    {
                    }
                    column(MRP; "Sales Invoice Line"."MRP Price")
                    {
                    }
                    column(AssesableVal; AssesableVal)
                    {
                    }
                    column(DiscPerCart; DiscPerCart)
                    {
                    }
                    column(BuyersRatePerSqMtr; BuyersRatePerSqMtr)
                    {
                    }
                    column(BuyerPriceNew; BuyerPriceNew)
                    {

                    }
                    column(Value; Value)
                    {
                    }
                    column(GrossWeight; "Sales Invoice Line"."Gross Weight")
                    {
                    }
                    column(QD; QD)
                    {
                    }
                    column(QdText; QdText)
                    {
                    }
                    column(AqdText; AqdText)
                    {
                    }
                    column(AQD; AQD)
                    {
                    }
                    column(Disamt; "Sales Invoice Line"."Structure Discount Amount")
                    {
                    }
                    //column(TradeDiscount_SalesInvoiceHeader; Round("Sales Invoice Line"."Trade Discount Amount", 0.01, '='))
                    column(TradeDiscount_SalesInvoiceHeader; "Sales Invoice Header"."Trade Discount")  //17699
                    {
                    }
                    column(LineDisAmt; 0)
                    {
                    }
                    column(GrossTotal; Value + (Discount) - ("Sales Invoice Line"."Line Discount Amount") - AQD - QD)
                    {
                    }
                    column(Charge; Charge)
                    {
                    }

                    column(VATAmount; ABS(VATAmount))
                    {
                    }
                    column(AddVATAmount; ABS(AddVATAmount))
                    {
                    }
                    column(AmtToCust; ROUND(Amt + CAmount + SAmount + IAmount, 1, '='))
                    {
                    }
                    column(BEDAmt; 0)
                    {
                    }
                    column(EcessAmt; eCessAmt)
                    {
                    }
                    column(ScessAmt; sheCessAmt)
                    {
                    }
                    column(ExciseAmt; '')
                    {
                    }

                    column(HideCol; HideCol)
                    {
                    }
                    column(InvoiceDiscountAmount; "Sales Invoice Line"."Inv. Discount Amount")
                    {

                    }
                    column(FrightChargeAmt; "Sales Invoice Header"."Freight Amt")
                    {
                    }
                    column(InsurnaceCharge; "Sales Invoice Header"."Insurance Amount")
                    {
                    }
                    column(TotalTDSTCSInclSHECESS_SalesInvoiceLine; TOtalTCSInclcesAmt)
                    {
                    }

                    trigger OnAfterGetRecord()
                    var


                    begin

                        Clear(eCessAmt);
                        Clear(sheCessAmt);
                        BuyerPriceNew := 0;



                        CRate := 0;
                        SRate := 0;
                        IRate := 0;
                        CAmount := 0;
                        SAmount := 0;
                        IAmount := 0;

                        TotalNoOfInvoiceLines := "Sales Invoice Line".COUNT();

                        DetailedGSTLedgerEntry.RESET;
                        DetailedGSTLedgerEntry.SETRANGE("Document No.", "Document No.");
                        DetailedGSTLedgerEntry.SETRANGE("No.", "No.");
                        DetailedGSTLedgerEntry.SETRANGE("Document Line No.", "Line No.");
                        IF DetailedGSTLedgerEntry.FINDFIRST THEN
                            REPEAT
                                IF DetailedGSTLedgerEntry."GST Component Code" = 'CGST' THEN
                                    CRate := DetailedGSTLedgerEntry."GST %";

                                IF DetailedGSTLedgerEntry."GST Component Code" = 'SGST' THEN
                                    SRate := DetailedGSTLedgerEntry."GST %";


                                IF DetailedGSTLedgerEntry."GST Component Code" = 'IGST' THEN
                                    IRate := DetailedGSTLedgerEntry."GST %";


                                IF DetailedGSTLedgerEntry."GST Component Code" = 'UTGST' THEN
                                    URate := DetailedGSTLedgerEntry."GST %";
                            UNTIL DetailedGSTLedgerEntry.NEXT = 0;

                        GrandTotal1 := GrandTotal + TotalGSTAmount + "Sales Invoice Header"."Insurance Amount" + "Sales Invoice Header"."Freight Amt" - "Sales Invoice Header"."Trade Discount" - "Sales Invoice Header"."Discount Amount" - TOtalTCSInclcesAmt;



                        Sno += 1;
                        IF (Sno - 1) MOD 41 = 0 THEN
                            PageBreak1 := (Sno - 1) / 41;

                        PageCont := ROUND(COUNT / 41, 1, '<');

                        if Customer1.get("Sales Invoice Line"."Sell-to Customer No.") then begin
                            if State1.Get(Customer1."state code") then
                                Stname := State1.Description;
                        end;


                        IF (TotalNoOfInvoiceLines > 41) AND (Sno < TotalNoOfInvoiceLines) THEN
                            HideCarriedForward := FALSE
                        ELSE
                            HideCarriedForward := TRUE;

                        ItemPartNo[1] := GetPartNo("Sales Invoice Line");
                        "S.No." := "S.No." + 1;

                        TotalLineAmount += "Sales Invoice Line".Quantity * "Sales Invoice Line"."Unit Price";

                        IF Item.GET("No.") THEN BEGIN
                            DimensionValue.RESET;
                            DimensionValue.SETRANGE(Code, Item."Size Code");
                            IF DimensionValue.FINDFIRST THEN;
                        END;
                        IF "Tax Area Code" <> '' THEN BEGIN
                            StrLength := STRLEN("Tax Area Code") - 2;
                            StrText := COPYSTR("Tax Area Code", StrLength, 3);
                            IF StrText = 'CST' THEN
                                HeaderText := Text13702

                        END ELSE
                            HeaderText := Text13702;

                        Item.RESET;
                        Item.SETRANGE(Item."No.", "Sales Invoice Line"."No.");
                        IF Item.FIND('-') THEN
                            LotNo := Item."Lot Nos.";
                        PostedShipmentDate := 0D;
                        IF Quantity <> 0 THEN
                            PostedShipmentDate := FindPostedShipmentDate;

                        SalesInvoiceLine1.RESET;
                        SalesInvoiceLine1.SETRANGE(SalesInvoiceLine1."Document No.", "Document No.");
                        SalesInvoiceLine1.SETRANGE(SalesInvoiceLine1.Type, SalesInvoiceLine1.Type::"G/L Account");
                        IF SalesInvoiceLine1.FIND('-') THEN BEGIN
                            REPEAT
                                Roundoff := SalesInvoiceLine1."Line Amount";
                            UNTIL SalesInvoiceLine1.NEXT = 0;

                        END;
                        IF (Type = Type::"G/L Account") THEN BEGIN
                        END;
                        VATAmountLine.INIT;
                        VATAmountLine."VAT Identifier" := "VAT Identifier";
                        VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                        VATAmountLine."Tax Group Code" := "Tax Group Code";
                        VATAmountLine."VAT %" := "VAT %";
                        VATAmountLine."VAT Base" := Amount;
                        VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                        VATAmountLine."Line Amount" := "Line Amount";
                        IF "Allow Invoice Disc." THEN
                            VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                        VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                        VATAmountLine.InsertLine;

                        SalesInvoiceLine1.RESET;
                        SalesInvoiceLine1.SETRANGE(SalesInvoiceLine1."Document No.", "Sales Invoice Line"."Document No.");
                        SalesInvoiceLine1.SETRANGE(SalesInvoiceLine1."Line No.", "Sales Invoice Line"."Line No.");
                        IF SalesInvoiceLine1.FIND('-') THEN BEGIN
                            TotalCashDic := TotalCashDic + SalesInvoiceLine1."Line Discount Amount";
                            TotalTradeDisc := TotalTradeDisc + SalesInvoiceLine1."Inv. Discount Amount";
                        END;
                        Amt := Amt + ROUND("Sales Invoice Line"."Line Amount", 1);

                        Location2.RESET;
                        Location2.SETRANGE(Location2.Code, "Sales Invoice Line"."Location Code");
                        IF Location2.FIND('-') THEN BEGIN

                        END;

                        SalesInvoiceHeader2.RESET;
                        SalesInvoiceHeader2.SETRANGE(SalesInvoiceHeader2."No.", "Sales Invoice Line"."Document No.");
                        IF SalesInvoiceHeader2.FIND('-') THEN BEGIN
                            BEGIN
                                DueDate := SalesInvoiceHeader2."Due Date";
                            END;
                            PaymentTerms.RESET;
                            PaymentTerms.SETRANGE(PaymentTerms.Code, SalesInvoiceHeader2."Payment Terms Code");
                            IF PaymentTerms.FIND('-') THEN BEGIN
                                PaymentTerm := PaymentTerms.Description;
                            END;
                            ShipmentMethod.RESET;
                            ShipmentMethod.SETRANGE(ShipmentMethod.Code, SalesInvoiceHeader2."Shipment Method Code");
                            IF ShipmentMethod.FIND('-') THEN BEGIN
                                ShipmentDes := ShipmentMethod.Description;
                            END;
                            SalesPurchPerson.RESET;
                            SalesPurchPerson.SETRANGE(SalesPurchPerson.Code, SalesInvoiceHeader2."Salesperson Code");
                            IF SalesPurchPerson.FIND('-') THEN BEGIN
                                AgentName := SalesPurchPerson.Name
                            END;

                        END;


                        Value := 0;
                        Cart := 0;
                        SqMt := 0;
                        Wt := 0;
                        LineDiscount := 0;
                        DiscPerCart := 0;
                        RateperCart := 0;

                        Cart := ROUND(Item.UomToCart("No.", "Unit of Measure Code", Quantity), 1, '<');
                        SqMt := Item.UomToSqm("No.", "Unit of Measure Code", Quantity);

                        Wt := "Sales Invoice Line"."Gross Weight";
                        Pcs := ROUND(Item.UomToPcs("No.", "Unit of Measure Code", Quantity), 1, '<');

                        IF Cart <> 0 THEN
                            RateperCart := "Unit Price" * Quantity / Cart;

                        IF SqMt <> 0 THEN
                            DiscPerCart := "Sales Invoice Line"."Line Discount Amount" / SqMt;

                        LineDiscount := "Line Discount Amount";
                        IF Quantity <> 0 THEN
                            BuyersPrice := "Sales Invoice Line"."Buyer's Price";

                        IF "Quantity in Sq. Mt." <> 0 THEN BEGIN
                            DecRate := ("Quantity Discount Amount" / "Quantity in Sq. Mt.");
                            LineDis := ("Line Discount Amount" / "Quantity in Sq. Mt.");
                        END;

                        IF SqMt <> 0 THEN BEGIN
                            BuyersRatePerSqMtr := (BuyersPrice * "Sales Invoice Line".Quantity / SqMt) + DecRate + LineDis;
                            DiscPerSqmt := "Line Discount Amount" / SqMt;
                        END;

                        BuyerPriceNew := (BuyersRatePerSqMtr - DiscPerCart); //17699

                        Value := (BuyersRatePerSqMtr - DiscPerCart) * "Quantity in Sq. Mt.";
                        Cart := Item.UomToCart("No.", "Unit of Measure Code", Quantity);
                        SqMt := Item.UomToSqm("No.", "Unit of Measure Code", Quantity);
                        Pcsqty := ROUND(Item.UomToPcs("No.", "Unit of Measure Code", Quantity), 1, '<');
                        Wt := "Sales Invoice Line"."Gross Weight";

                        Discount := 0;

                        LineStop := LineStop + 1;

                        QD := "Quantity Discount Amount" - "Accrued Discount";
                        IF QD <> 0 THEN
                            QdText := 'QD DISCOUNT';
                        AQD := "Accrued Discount";
                        IF AQD <> 0 THEN
                            AqdText := 'AQD DISCOUNT';

                        AssesableVal := "Sales Invoice Line"."GST Assessable Value (LCY)" * "Sales Invoice Line".Quantity;

                        IF "Sales Invoice Line"."Line Discount Amount" <> 0 THEN
                            IF "Sales Invoice Line"."Quantity in Cartons" <> 0 THEN
                                DisamtN := "Sales Invoice Line"."Line Discount Amount" / "Sales Invoice Line"."Quantity in Cartons";
                        IF ("Type Catogery Code" = '54') OR ("Type Catogery Code" = '60') OR ("Type Catogery Code" = '61')
                           OR ("Type Catogery Code" = '62') OR ("Type Catogery Code" = '70') OR ("Type Catogery Code" = '71')
                           OR ("Type Catogery Code" = '46') THEN
                            body := 'Vitreous';

                        rowCount := "Sales Invoice Line".COUNT;

                        IF CustRec."Customer Type" = 'DEALER' THEN
                            HideCol := FALSE
                        ELSE
                            HideCol := TRUE;


                        //>>17699
                        IF (DocNo <> "Sales Invoice Header"."No.") then begin
                            DocNo := "Sales Invoice Header"."No.";

                            Clear(TradeDiscount);
                            Clear(TOtalTCSInclcesAmt);

                            //TradeDiscount := Round("Sales Invoice Header"."Trade Discount", 0.01, '=');
                            TCSentry.Reset();
                            TCSentry.SetRange("Document No.", "No.");
                            if TCSentry.FindSet() then begin
                                repeat
                                    TCSper := TCSentry."TCS %";
                                    TOtalTCSInclcesAmt += TCSentry."Total TCS Including SHE CESS";
                                    eCessAmt += TCSentry."eCESS Amount";
                                    sheCessAmt += TCSentry."SHE Cess Amount";
                                until TCSentry.Next() = 0;
                            end;

                            Clear(GLRoundingOFF);
                            Cust.Get("Sales Invoice Header"."Sell-to Customer No.");
                            CustPostgroup.Get(Cust."Customer Posting Group");
                            CustPostgroup.TestField("Invoice Rounding Account");
                            SIL.Reset();
                            SIL.SetRange("Document No.", "Sales Invoice Header"."No.");
                            SIL.SetRange(Type, SIL.Type::"G/L Account");
                            SIL.SetRange("No.", CustPostgroup."Invoice Rounding Account");
                            IF SIL.FindFirst() then
                                GLRoundingOFF := SIL."Line Amount";

                            TotalGSTAmount := TotalGSTAmtLine(DocNo);
                            // TaxableValue := "Sales Invoice Header"."Insurance Amount" + "Sales Invoice Header"."Freight Amt" - "Sales Invoice Header"."Trade Discount"; //17699
                            TaxableValue := "Sales Invoice Header"."Insurance Amount" + "Sales Invoice Header"."Freight Amt"; //17699
                            GrossTotalValue := TaxableValue + TOtalTCSInclcesAmt + TotalGSTAmount;
                        end;

                        TotalValue += Value;

                        Clear(StructureDiscAmntOnce);
                        if ("Sales Invoice Line"."Trade Discount Amount" <> 0) then
                            StructureDiscAmntOnce := ABS(Round("Sales Invoice Line"."Inv. Discount Amount", 0.01, '=') - Round("Sales Invoice Line"."Trade Discount Amount", 0.01, '='))
                        else
                            StructureDiscAmntOnce := Round("Sales Invoice Line"."Inv. Discount Amount", 0.01, '=');

                        TradeDiscount += Round("Sales Invoice Line"."Trade Discount Amount", 0.01, '=');
                        StructureDiscAmnt += StructureDiscAmntOnce;
                        TaxableValue += Value - (StructureDiscAmntOnce + Round("Sales Invoice Line"."Trade Discount Amount", 0.01, '='));
                        GrossTotalValue += Value - (StructureDiscAmntOnce + Round("Sales Invoice Line"."Trade Discount Amount", 0.01, '='));
                        check.InitTextVariable;
                        check.FormatNoText(NetInWord, Round(GLRoundingOFF + GrossTotalValue, 1.0), "Sales Invoice Header"."Currency Code");
                    end;

                    trigger OnPostDataItem()
                    var
                        testtextVar: Text;
                    begin

                        // testtextVar := 'Total Value = %1 \n Trade Disc = %2 \n Cash Disc = %3 \n' +
                        // 'Freight Charges = %4 \n Insurance Charges = %5 \n taxable value = %6 \n' +
                        // 'Total GSt Amnt = %7 \n TCS = %8 \n GrossTotal = %9 \n Roundoff = %10 \n NetAmnt = %11 \n inv line %12 \n InvHeader %13';

                        // Message(StrSubstNo(testtextVar, TotalValue, "Sales Invoice Header"."Trade Discount", StructureDiscAmnt,
                        // "Sales Invoice Header"."Freight Amt", "Sales Invoice Header"."Insurance Amount", TaxableValue,
                        // TotalGSTAmount, TOtalTCSInclcesAmt, GrossTotalValue, GLRoundingOFF, Round(GLRoundingOFF + GrossTotalValue, 0.01, '='),
                        // "Sales Invoice Line"."Inv. Discount Amount",
                        // "Sales Invoice Header"."Invoice Discount Amount"));
                    end;

                    trigger OnPreDataItem()
                    begin
                        "S.No." := 0;
                        CLEAR(Sno);
                        Sno := 0;
                        CLEAR(PageCont);


                        CLEAR(TotalValue);
                        Clear(StructureDiscAmnt);
                        CLEAR(TaxableValue);
                        Clear(TotalGSTAmount);
                        Clear(TOtalTCSInclcesAmt);
                        Clear(GrossTotalValue);
                        Clear(GLRoundingOFF);
                        Clear(GrossTotalValue);


                    end;
                }
                dataitem(RowIns; Integer)
                {
                    column(IncRowas; IncRowas)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        IncRowas += 1;
                    end;

                    trigger OnPreDataItem()
                    begin

                        SETRANGE(Number, 1, 25 - rowCount);

                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    OuputNos += 1;
                    IF OuputNos = 1 THEN
                        copyText1 := 'Original For Buyer';
                    IF OuputNos = 2 THEN
                        copyText1 := 'Duplicate For Transporter';
                    IF OuputNos = 3 THEN
                        copyText1 := 'Triplicate For Assessee';
                    DocNo := '';

                end;

                trigger OnPostDataItem()
                begin

                    IF NOT CurrReport.PREVIEW THEN
                        SalesInvCountPrinted.RUN(SalesInvoiceHeader);
                end;

                trigger OnPreDataItem()
                begin

                    NoOfLoops := ABS(NoOfCopies);
                    IF NoOfLoops <= 0 THEN
                        NoOfLoops := 1;
                    copyText1 := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    LineStop := 0;

                    OuputNos := 0;
                end;
            }

            trigger OnAfterGetRecord()
            var
                CompanyInformation: Record "Company Information";
                amttocustomer: Decimal;
                DynamicsPAYID: Text;


            begin
                OthClm := 0;
                Clear(TOtalTCSInclcesAmt);
                InsuranceClm := 0;
                //FrightChargeAmt := 0; //17699
                TaxableValue := 0; //17699
                DocNo := ''; //17699
                TotalValue := 0; //17699
                StructureDiscAmnt := 0; //17699

                SalesInvoiceHeader.COPY("Sales Invoice Header");

                CustRec.RESET;
                CustRec.SETRANGE("No.", "Sell-to Customer No.");
                IF CustRec.FINDFIRST THEN BEGIN
                    BillToAdd[1] := CustRec.Name;
                    BillToAdd[2] := CustRec.Address;
                    BillToAdd[3] := CustRec."Address 2";
                    BillToAdd[4] := CustRec.City;
                    BillToAdd[5] := CustRec."Pin Code";
                    BillToAdd[6] := CustRec."State Code";
                    BillToAdd[7] := CustRec."GST Registration No.";
                    BillToAdd[8] := CustRec."P.A.N. No.";
                    BillToAdd[11] := CustRec."Virtual ID";

                    RecState.RESET;
                    IF RecState.GET(CustRec."State Code") THEN
                        BillToAdd[10] := RecState."State Code (GST Reg. No.)";
                    BillToAdd[9] := RecState.Description;
                END;

                IF "Ship-to Code" <> '' THEN BEGIN
                    RecShipToAdd.RESET;
                    RecShipToAdd.SETRANGE(Code, "Ship-to Code");
                    IF RecShipToAdd.FINDFIRST THEN BEGIN
                        ShipToAdd[1] := SaleInvHeader."Ship-to Name";
                        ShipToAdd[2] := RecShipToAdd.Address;
                        ShipToAdd[3] := RecShipToAdd."Address 2";
                        ShipToAdd[4] := RecShipToAdd.City;
                        ShipToAdd[5] := "Sales Invoice Header"."Ship to Pin";

                        ShipToAdd[6] := RecShipToAdd.State;
                        ShipToAdd[7] := RecShipToAdd."GST Registration No.";
                        ShipToAdd[8] := SaleInvHeader."Ship-to Name 2";

                        RecState.RESET;
                        IF State_Rec.GET("GST Ship-to State Code") THEN
                            ShipToAdd[9] := State_Rec.Description;
                    END;
                END ELSE BEGIN
                    ShipToAdd[1] := CustRec.Name;
                    ShipToAdd[2] := CustRec.Address;
                    ShipToAdd[3] := CustRec."Address 2";
                    ShipToAdd[4] := CustRec.City;
                    ShipToAdd[5] := "Sales Invoice Header"."Ship to Pin";
                    ShipToAdd[6] := CustRec."State Code";
                    ShipToAdd[7] := Cust."GST Registration No.";
                    ShipToAdd[8] := SaleInvHeader."Ship-to Name 2";

                    RecState.RESET;
                    IF State_Rec.GET("GST Ship-to State Code") THEN
                        ShipToAdd[9] := State_Rec.Description;
                END;



                sate_ship_state.RESET;

                RecState.RESET;
                IF RecState.Code = '' THEN
                    RecState.Code := CustRec."Customer Price Group";

                RecState.SETRANGE(Code, State);
                IF RecState.FINDFIRST THEN
                    REPEAT
                        StateCode := RecState."State Code (GST Reg. No.)";
                        StateName := RecState.Description;
                    UNTIL
                RecState.NEXT = 0;

                IF "Sales Invoice Header"."Currency Code" <> '' THEN
                    CurCaption := "Sales Invoice Header"."Currency Code" + ' and Zero Paisa Only'
                ELSE
                    CurCaption := 'Rupees and Zero Paisa Only';

                if Customer2.get("Sales Invoice Line"."Sell-to Customer No.") then begin
                    if State1.Get(Customer2."state code") then
                        Stname := State1.Description;
                end;

                j := 0;
                SalesInvLine5.RESET;
                SalesInvLine5.SETFILTER(SalesInvLine5."Document No.", '%1', "Sales Invoice Header"."No.");
                SalesInvLine5.SETFILTER(SalesInvLine5."Tax Liable", '%1', TRUE);
                IF SalesInvLine5.FIND('-') THEN BEGIN
                    TaxAreaLine.RESET;
                    TaxAreaLine.SETFILTER(TaxAreaLine."Tax Area", '%1', SalesInvLine5."Tax Area Code");
                    IF TaxAreaLine.FIND('-') THEN
                        REPEAT
                            j := j + 1;
                            TaxDetails.RESET;
                            TaxDetails.SETFILTER(TaxDetails."Tax Jurisdiction Code", '%1', TaxAreaLine."Tax Jurisdiction Code");
                            TaxDetails.SETFILTER(TaxDetails."Tax Group Code", '%1', SalesInvLine5."Tax Group Code");
                            TaxDetails.SETFILTER(TaxDetails."Effective Date", '..%1', "Sales Invoice Header"."Posting Date");
                            IF TaxDetails.FIND('+') THEN
                                IF TaxDetails."Tax Jurisdiction Code" <> '' THEN BEGIN
                                    JudText[j] := TaxDetails."Tax Jurisdiction Code";
                                    PerJud[j] := TaxDetails."Tax Below Maximum";
                                END;
                        UNTIL TaxAreaLine.NEXT = 0;
                END;

                Location2.RESET;
                Location2.SETRANGE(Code, "Location Code");
                IF Location2.FINDFIRST THEN BEGIN
                    SaleInvHeader.RESET;
                    SaleInvHeader.SETRANGE("No.", "No.");

                END;

                Location.RESET;
                IF Location.GET("Location Code") THEN;
                State_Rec.RESET;
                IF State_Rec.GET(Location."State Code") THEN;

                QD := 0;
                AQD := 0;
                QdText := '';
                AqdText := '';

                salesinvi7.RESET;
                salesinvi7.SETRANGE("Document No.", "Sales Invoice Header"."No.");
                salesinvi7.SETRANGE(Type, salesinvi7.Type::Item);
                IF salesinvi7.FIND('-') THEN
                    co := salesinvi7.COUNT;

                IF Recvendor.GET("Sales Invoice Header"."Transporter's Name") THEN
                    Respcent.RESET;
                IF Respcent.GET("Sales Invoice Header"."Responsibility Center") THEN
                    RespCntrAddr[1] := Respcent.Address;
                RespCntrAddr[2] := Respcent."Address 2";

                COMPRESSARRAY(RespCntrAddr);

                CompanyInfo.CALCFIELDS(CompanyInfo.Picture);
                FormatAddr.SalesInvBillTo(BillToAddr, "Sales Invoice Header");
                FormatAddr.SalesInvShipTo(ShipToAddr, CustAddr, "Sales Invoice Header");

                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE BEGIN
                    FormatAddr.Company(CompanyAddr, CompanyInfo);
                END;

                IF "Order No." = '' THEN
                    OrderNoText := ''
                ELSE
                    OrderNoText := FIELDCAPTION("Order No.");
                IF "Salesperson Code" = '' THEN BEGIN
                    SalesPurchPerson.INIT;
                    SalesPersonText := '';
                END ELSE BEGIN
                    SalesPurchPerson.GET("Salesperson Code");
                    SalesPersonText := Text000;
                END;
                IF "Your Reference" = '' THEN
                    ReferenceText := ''
                ELSE
                    ReferenceText := FIELDCAPTION("Your Reference");
                IF "VAT Registration No." = '' THEN
                    VATNoText := ''
                ELSE
                    VATNoText := FIELDCAPTION("VAT Registration No.");
                IF "Currency Code" = '' THEN BEGIN
                    GLSetup.GET();
                    GLSetup.TESTFIELD("LCY Code");
                    TotalText := STRSUBSTNO(Text001, GLSetup."LCY Code");
                    TotalInclVATText := STRSUBSTNO(Text13700, GLSetup."LCY Code");
                    TotalExclVATText := STRSUBSTNO(Text13701, GLSetup."LCY Code");
                END ELSE BEGIN
                    TotalText := STRSUBSTNO(Text001, "Currency Code");
                    TotalInclVATText := STRSUBSTNO(Text13700, "Currency Code");
                    TotalExclVATText := STRSUBSTNO(Text13701, "Currency Code");
                END;
                FormatAddr.SalesInvBillTo(CustAddr, "Sales Invoice Header");
                IF NOT Cust.GET("Bill-to Customer No.") THEN
                    CLEAR(Cust);

                IF "Payment Terms Code" = '' THEN
                    PaymentTerms.INIT
                ELSE
                    PaymentTerms.GET("Payment Terms Code");
                IF "Shipment Method Code" = '' THEN
                    ShipmentMethod.INIT
                ELSE
                    ShipmentMethod.GET("Shipment Method Code");

                FormatAddr.SalesInvShipTo(ShipToAddr, CustAddr, "Sales Invoice Header");
                ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                FOR i := 1 TO ARRAYLEN(ShipToAddr) DO
                    IF ShipToAddr[i] <> CustAddr[i] THEN
                        ShowShippingAddr := TRUE;

                IF LogInteraction THEN
                    IF NOT CurrReport.PREVIEW THEN BEGIN
                        IF "Bill-to Contact No." <> '' THEN
                            SegManagement.LogDocument(
                              4, "No.", 0, 0, DATABASE::Contact, "Bill-to Contact No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '')
                        ELSE
                            SegManagement.LogDocument(
                              4, "No.", 0, 0, DATABASE::Customer, "Bill-to Customer No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '');
                    END;
                Cust1.RESET;
                Cust1.SETRANGE(Cust1."No.", "Bill-to Customer No.");
                IF Cust1.FINDFIRST THEN BEGIN

                    custState.RESET;
                    IF custState.GET(Cust1."State Code") THEN;
                END;

                Cust1.Reset();
                Cust1.SetRange(Cust1."No.", "Bill-to Customer No.");
                if Cust1.FindSet() then
                    Cust1.CALCFIELDS(Balance);
                Outstand := ROUND((Cust1.Balance), 1, '=');


                DimensionValue.RESET;
                DimensionValue.SETRANGE(DimensionValue.Code, "Sales Invoice Header"."Shortcut Dimension 2 Code");
                IF DimensionValue.FIND('-') THEN BEGIN
                    Unit := DimensionValue.Name
                END;
                Customer.RESET;
                Customer.SETRANGE(Customer."No.", "Sales Invoice Header"."Bill-to Customer No.");
                IF Customer.FIND('-') THEN BEGIN
                    CustPANNo := Customer."P.A.N. No.";
                END;

                GrandTotal := 0;
                SIL.RESET;
                SIL.SETRANGE(SIL."Document No.", "No.");
                IF SIL.FindSet() THEN BEGIN
                    REPEAT
                        if SIL.Type = SIL.Type::Item then
                            GrandTotal += SIL."Line Amount";
                    // IF SIL."No." = '51157000' THEN
                    //     GLRoundingOFF := SIL."Line Amount";
                    UNTIL SIL.NEXT = 0;
                END;

                Exessiblegoods := 0;
                salesinvoiceline.SETRANGE("Document No.", "No.");
                IF salesinvoiceline.FIND('-') THEN BEGIN
                    REPEAT
                        Exessiblegoods := Exessiblegoods + salesinvoiceline.Amount;
                    UNTIL salesinvoiceline.NEXT = 0;
                END;

                CLE.RESET;
                CLE.SETRANGE(CLE."Document No.", "Sales Invoice Header"."No.");
                IF CLE.FINDFIRST THEN;
                Cust.RESET;
                Cust.SETRANGE(Cust."No.", "Sales Invoice Header"."Bill-to Customer No.");
                IF Cust.FINDFIRST THEN
                    VendorCode := Cust."Customer Type";

                IF "Sales Invoice Header".State = '19' THEN BEGIN
                    invoicename := 'Tax Invoice - Export'
                END ELSE
                    invoicename := 'Tax Invoice';

                IF "Sales Invoice Header".State = '19' THEN BEGIN
                    pos := 'Country of Desti.:'
                END ELSE
                    pos := 'Place of Supply:';

                IF ("Sales Invoice Header".State = '19') AND ("Sales Invoice Header"."Location Code" = 'SKD-SAMPLE') THEN
                    REM := Text3705;

                IF ("Sales Invoice Header".State = '19') AND ("Sales Invoice Header"."Location Code" = 'SKD-WH-MFG') THEN
                    REM := Text3705;


                IF ("Sales Invoice Header".State = '19') AND ("Sales Invoice Header"."Location Code" = 'DRA-WH-MFG') THEN
                    REM := Text3706;

                IF ("Sales Invoice Header".State = '19') AND ("Sales Invoice Header"."Location Code" = 'DP-MORBI') THEN
                    REM := Text3706;

                IF Cust."GST Registration No." = '' THEN BEGIN
                    "Sales Invoice Header".CALCFIELDS("QR Code");
                    IF NOT "Sales Invoice Header"."QR Code".HASVALUE THEN BEGIN
                        Clear(InstreamVar);
                        Clear(OutstreamVar);
                        Clear(QRGenerator);
                        Clear(TempBlob2);
                        CLEAR(APIManagement);
                        PaymentText := APIManagement.CreateB2CQRPaymentURL("Sales Invoice Header", FALSE);
                        TempBlob2.CreateInStream(InstreamVar);
                        QRGenerator.GenerateQRCodeImage(PaymentText, TempBlob2);
                        "Sales Invoice Header"."QR Code".CreateOutStream(OutstreamVar);
                        CopyStream(OutstreamVar, InstreamVar);
                        "Sales Invoice Header".MODIFY;
                        "Sales Invoice Header".CALCFIELDS("QR Code");
                    END ELSE BEGIN

                    END;
                END;
            end;

            trigger OnPreDataItem()
            var
                SIH: Record "Sales Invoice Header";
                DateVar: Date;
            begin

                DateVar := 20230603D;
                SIH.Get(GetFilter("Sales Invoice Header"."No."));
                IF (SIH."Posting Date" < DateVar) then
                    Error(StrSubstNo('Report can display data that posted after %1 and Posting date is %2', DateVar, SIH."Posting Date"));

                HideCol := FALSE;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field("No of Copies"; NoOfCopies)
                {
                    ApplicationArea = All;
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        CompanyInfo.GET;
        CompanyInfo.CALCFIELDS(Picture);
    end;

    var

        sate_ship_state: Record State;
        Rec1: Record "Sales Invoice Line";
        TotalVATAMT: Decimal;
        StructureDiscAmnt: Decimal; //17699
        StructureDiscAmntOnce: Decimal; //17699
        TotalValue: Decimal; //17699
        TCSentry: Record "TCS Entry"; //17699
        DocNo: Code[20];  //17699
        BuyerPriceNew: Decimal; //17699
        CustPostgroup: Record "Customer Posting Group"; //17699
        TaxableValue: Decimal; //17699
        NetAmountNew: Decimal; //17699
        GrossTotalValue: Decimal; //17699
        CashDiscount: Decimal;
        TradeDiscount: Decimal;
        FreightCharges: Decimal;
        InsuranceCharges: Decimal;
        eCessAmt: Decimal;
        sheCessAmt: Decimal;
        TCSper: Decimal;
        Customer2: Record Customer;
        TOtalTCSInclcesAmt: Decimal;
        State_Rec: Record State;
        rowCount: Integer;
        copyText1: Text[50];
        NetInWord: array[3] of Text[200];
        check: Report "Check Report";
        GLRoundingOFF: Decimal;
        RecShipToAdd: Record "Ship-to Address";
        ShipToAdd: array[20] of Text;
        BillToAdd: array[20] of Text;
        CustRec: Record Customer;
        custState: Record State;
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record Customer;
        VATAmountLine: Record "VAT Amount Line" temporary;
        RespCenter: Record "Responsibility Center";
        CurrExchRate: Record "Currency Exchange Rate";
        Currency: Record Currency;
        SalesInvCountPrinted: Codeunit "Sales Inv.-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit SegManagement;
        SalesShipmentBuffer: Record "Sales Shipment Buffer" temporary;
        PostedShipmentDate: Date;
        CustAddr: array[8] of Text[100];
        ShipToAddr: array[8] of Text[100];
        CompanyAddr: array[8] of Text[100];
        OrderNoText: Text[100];
        SalesPersonText: Text[30];
        VATNoText: Text[30];
        ReferenceText: Text[30];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[100];
        ShowShippingAddr: Boolean;
        i: Integer;
        NextEntryNo: Integer;
        FirstValueEntryNo: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        CalculatedExchRate: Decimal;
        ChargesAmount: Decimal;
        OtherTaxesAmount: Decimal;
        "Corp-Addition------------": Integer;
        TccChargeAmount: Decimal;
        ChargePercentTCC: Decimal;
        BEDChargeAmount: Decimal;
        ChargePercentBED: Decimal;
        EcessChargeAmount: Decimal;
        ChargePercentEcess: Decimal;
        InsurenceChargeAmount: Decimal;
        ChargePercentIns: Decimal;
        CSTchargeAmount: Decimal;
        ChargePercentCST: Decimal;
        //FrightChargeAmt: Decimal;
        SalesHeader: Record "Sales Header";
        BillToAddr: array[8] of Text[80];
        TempSalesLine: Record "Sales Line" temporary;
        AgentName: Text[40];
        SalesPersonRec: Record "Salesperson/Purchaser";
        CheckReport: Report "Check Report";
        NumberText: array[2] of Text[80];
        NumberText1: array[2] of Text[80];
        NumberText2: array[2] of Text[80];
        NumberText3: array[2] of Text[80];
        NumberText5: array[2] of Text[80];
        NumberText4: array[2] of Text[80];
        GenJnlLine: Record "Gen. Journal Line";
        TotalAmount: Decimal;
        Amt: Decimal;
        GTotal: Decimal;
        StateTable: Record State;
        StateDescription: Text[50];
        Location: Record Location;
        LocName: Text[50];
        LocAddress: Text[50];
        LocAddress2: Text[50];
        LocCity: Text[50];
        LocPhone: Text[30];
        "LocE-mail": Text[80];
        LocRst: Code[30];
        LocCst: Code[30];
        LocTin: Code[20];
        LocState: Text[30];
        "Cust TIN": Code[20];
        "Cust LST": Code[20];
        "Cust CST": Code[20];
        CompInfo: Record "Company Information";
        DimensionValue: Record "Dimension Value";
        Unit: Text[30];
        Hecess: Decimal;
        Hecesspercent: Decimal;
        Excisetotal: Decimal;
        Disctotal: Decimal;
        Item: Record Item;
        LotNo: Code[20];
        Bagtotal: Integer;
        salesinvoiceline: Record "Sales Invoice Line";
        Kgtotal: Decimal;
        Locpin: Code[10];
        ShippingAgent: Record "Shipping Agent";
        Shipingdes: Text[50];
        Cust1: Record Customer;
        challanno: Code[20];
        Salesshipment: Record "Sales Shipment Header";
        SalesInvoiceLine1: Record "Sales Invoice Line";
        TotalBed: Decimal;
        TotalEcess: Decimal;
        TotalShcess: Decimal;
        TotalTradeDisc: Decimal;
        TotalCashDic: Decimal;
        "AddCst/Vat": Option " ",VAT,CST;
        TaxArea: Record "Tax Area";
        TaxLineArea: Record "Tax Area Line";
        TaxJurisdiction: Record "Tax Jurisdiction";
        Location2: Record Location;
        IntRate: Decimal;
        Intdays: Text[50];
        Complaindays: Text[30];
        Juridiction: Text[30];
        InvoiceNotification: Text[200];
        Insurance: Text[100];
        SalesInvoiceHeader2: Record "Sales Invoice Header";
        PaymentTerm: Text[50];
        ShipmentDes: Text[50];
        DueDate: Date;
        VatChargeAmount: Decimal;
        SalesInvoiceLine3: Record "Sales Invoice Line";
        A: Code[10];
        VatPercentAmount: Decimal;
        InvoiceDicount: Decimal;
        Customer: Record Customer;
        CustECCNo: Code[20];
        CustRange: Code[200];
        CustCommissionerate: Code[200];
        CustPANNo: Code[20];
        "CST%": Text[30];
        "VAT%": Text[30];
        "InvoiceDisc%": Text[30];
        "Insurance%": Text[30];
        "Cust.InvoiceDisc.": Record "Cust. Invoice Disc.";
        "TradeDic%": Text[30];
        TradePercente: Decimal;
        SalesInvoiceHeader4: Record "Sales Invoice Header";
        ShiptoAddress: Record "Ship-to Address";
        ShipEccNo: Code[20];
        ShipregNo: Code[20];
        ShipRange: Code[20];
        ShipCommissionerate: Code[20];
        ShipPanNo: Code[20];
        Customer1: Record Customer;
        BaleCharges: Decimal;
        LabourCharges: Decimal;
        OtherCharges: Decimal;
        "S.No.": Integer;
        TotalLineAmount: Decimal;
        CopyNo: Integer;
        PageTitle: Text[30];
        VAT: Code[20];
        "BED%": Decimal;
        "eCess%": Decimal;
        "SHECess%": Decimal;
        SIL: Record "Sales Invoice Line";
        TraiffNo: Code[20];
        SalesOrderNo: Code[20];
        AmountinWord: array[2] of Text[100];
        GrandTotal: Decimal;
        GrandTotal1: Decimal;
        Respcent: Record "Responsibility Center";
        RespCntrAddr: array[15] of Text[250];
        NoInText: array[10] of Text[250];
        ExInText: array[10] of Text[50];
        BarCodeRequired: Boolean;
        SIH: Record "Sales Invoice Header";
        txt: Text[100];
        Range: Text[100];
        Division: Text[100];
        LineStop: Integer;
        Exessiblegoods: Decimal;
        Desc: Text[60];
        NOOFPKG: Decimal;
        QTYPERPKG: Decimal;
        CLE: Record "Cust. Ledger Entry";
        VendorCode: Code[20];
        SINC: Record "Sales Invoice Line";
        Type1: Code[20];
        ItemPartNo: array[600] of Code[20];
        MSFNo: Code[20];
        SIHeader: Record "Sales Invoice Header";
        Roundoff: Decimal;
        Value: Decimal;
        Cart: Decimal;
        SqMt: Decimal;
        Wt: Decimal;
        LineDiscount: Decimal;
        DiscPerCart: Decimal;
        RateperCart: Decimal;
        Pcs: Decimal;
        BEDAmt: Decimal;
        ECess: Decimal;
        Pcsqty: Decimal;
        BuyersPrice: Decimal;
        BuyersRatePerSqMtr: Decimal;
        DiscPerSqmt: Decimal;
        Outstand: Decimal;
        QD: Decimal;
        QuantityDiscountEntry: Record "Quantity Discount Entry";
        AQD: Decimal;
        AmountinWord1: array[2] of Text[100];
        Recvendor: Record Vendor;
        DeleveryAdd: array[4] of Text[30];
        TextContinue: Text[30];
        AqdText: Text[30];
        QdText: Text[30];
        StrLength: Integer;
        StrText: Text[30];
        HeaderText: Text[30];
        Charge: Decimal;
        Charge1: Decimal;
        AssesableVal: Decimal;
        //Disamt: Decimal;
        DisamtN: Decimal;
        SalesInvLine5: Record "Sales Invoice Line";
        TaxAreaLine: Record "Tax Area Line";
        TaxDetails: Record "Tax Detail";
        j: Integer;
        JudText: array[4] of Code[50];
        PerJud: array[3] of Decimal;
        salesinvi7: Record "Sales Invoice Line";
        co: Integer;
        State1: Record State;
        Stname: Text[50];
        Discount: Decimal;
        //InsurnaceCharge: Decimal;
        VATAmount: Decimal;
        AddVATAmount: Decimal;
        FormText: Text[30];
        Text13705: Text[100];
        DecRate: Decimal;
        LineDis: Decimal;
        DocumentPrint: Codeunit "Document-Print";
        HeaderTextLatest: Text[100];
        SaleInvHeader: Record "Sales Invoice Header";
        body: Text[10];
        policy: Text[200];
        RepAuditMgt: Codeunit "Auto PDF Generate";
        Text000: Label 'Salesperson';
        Text001: Label 'Total %1';
        Text002: Label 'Total %1 Incl. VAT';
        Text003: Label 'COPY';
        Text004: Label 'Sales - Invoice %1';
        Text005: Label 'Page %1';
        Text006: Label 'Total %1 Excl. VAT';
        Text007: Label 'VAT Amount Specification in ';
        Text008: Label 'Local Currency';
        Text009: Label 'Exchange rate: %1/%2';
        Text13700: Label 'Total %1 Incl. Taxes';
        Text13701: Label 'Total %1 Excl. Taxes';
        Text13702: Label 'SALES INVOICE';
        Text13703: Label 'TAX INVOICE';
        Text13706: Label 'Assesable Value is calculated @ 55% of MRP';
        Text13704: Label '"Goods insured under policy 111200/21/13/02/00000012 w.e.f. 01/07/13 with United India Ins.Co.Ltd. and upto 30/06/13 under policy 354900/21/ 12/4200000153 with National Insurance Co."';
        NewPolicy: Label 'Since 01st May,2017 the Goods in transit are insured under Marine insurance with The New India Assurance Co. Limited, LCBO, New Delhi';
        CurCaption: Text[30];
        OuputNos: Integer;
        Sno: Integer;
        rowstogen: Integer;
        PageBreak1: Integer;
        IncRowas: Integer;
        PageCont: Integer;
        StateCode: Code[50];
        StateName: Text[50];
        RecState: Record State;
        DetailedGSTLedgerEntry: Record "Detailed GST Ledger Entry";
        CRate: Decimal;
        CAmount: Decimal;
        SRate: Decimal;
        SAmount: Decimal;
        IRate: Decimal;
        IAmount: Decimal;
        URate: Decimal;
        UAmount: Decimal;
        TotalGSTAmt: Decimal;
        GSTTotal: Decimal;
        CAmount1: Decimal;
        SAmount1: Decimal;
        IAmount1: Decimal;
        TotalGSTAmount: Decimal;
        OtherTaxes: Decimal;
        shipstate: Text[30];
        invoicename: Text[50];
        pos: Text[18];
        Text3705: Label 'Supply Meant For Export Under Bond Or Letter Of Undertaking Without Payment Of Integrated Tax | Application No. ARN AA090418042693Y dt. 12/04/2018.';
        Text3706: Label 'Supply Meant For Export Under Bond Or Letter Of Undertaking Without Payment Of Integrated Tax | Application No. ARN no AA240418016494A Dt.07.04.2018'''' ';
        REM: Text[170];
        OthClm: Decimal;
        InsuranceClm: Decimal;
        "--MSVRN--": Integer;
        HideCol: Boolean;
        SalesInvoiceHeader: Record "Sales Invoice Header";
        GST05: Text;
        TotalAmt123: Decimal;
        TotalAmt456: Decimal;
        TotalCopies: Integer;
        APIManagement: Codeunit "API Management -EY 2.6";
        TempBlob2: Codeunit "Temp Blob";
        OutstreamVar: OutStream;
        InstreamVar: InStream;
        QRGenerator: Codeunit "QR Generator";
        PaymentText: Text;
        CarriedForLbl: Label 'Carried Forward :';
        BroughtForLbl: Label 'Brought Forward :';
        TotalNoOfInvoiceLines: Integer;
        HideCarriedForward: Boolean;
        IGSTPERCENT: Decimal;
        CGSTPERCENT: Decimal;
        SGSTPERCENT: Decimal;

    procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
    end;

    procedure FindPostedShipmentDate(): Date
    var
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentBuffer2: Record "Sales Shipment Buffer" temporary;
    begin
        NextEntryNo := 1;
        IF "Sales Invoice Line"."Shipment No." <> '' THEN
            IF SalesShipmentHeader.GET("Sales Invoice Line"."Shipment No.") THEN
                EXIT(SalesShipmentHeader."Posting Date");

        IF "Sales Invoice Header"."Order No." = '' THEN
            EXIT("Sales Invoice Header"."Posting Date");

        CASE "Sales Invoice Line".Type OF
            "Sales Invoice Line".Type::Item:
                GenerateBufferFromValueEntry("Sales Invoice Line");
            "Sales Invoice Line".Type::"G/L Account", "Sales Invoice Line".Type::Resource,
          "Sales Invoice Line".Type::"Charge (Item)", "Sales Invoice Line".Type::"Fixed Asset":
                GenerateBufferFromShipment("Sales Invoice Line");
            "Sales Invoice Line".Type::" ":
                EXIT(0D);
        END;

        SalesShipmentBuffer.RESET;
        SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer2 := SalesShipmentBuffer;
            IF SalesShipmentBuffer.NEXT = 0 THEN BEGIN
                SalesShipmentBuffer.GET(
                  SalesShipmentBuffer2."Document No.", SalesShipmentBuffer2."Line No.", SalesShipmentBuffer2."Entry No.");
                SalesShipmentBuffer.DELETE;
                EXIT(SalesShipmentBuffer2."Posting Date");
                ;
            END;
            SalesShipmentBuffer.CALCSUMS(Quantity);
            IF SalesShipmentBuffer.Quantity <> "Sales Invoice Line".Quantity THEN BEGIN
                SalesShipmentBuffer.DELETEALL;
                EXIT("Sales Invoice Header"."Posting Date");
            END;
        END ELSE
            EXIT("Sales Invoice Header"."Posting Date");
    end;

    procedure GenerateBufferFromValueEntry(SalesInvoiceLine2: Record "Sales Invoice Line")
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := SalesInvoiceLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.", "Posting Date");
        ValueEntry.SETRANGE("Document No.", SalesInvoiceLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date", "Sales Invoice Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.", '');
        ValueEntry.SETFILTER("Entry No.", '%1..', FirstValueEntryNo);
        IF ValueEntry.FIND('-') THEN
            REPEAT
                IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
                    IF SalesInvoiceLine2."Qty. per Unit of Measure" <> 0 THEN
                        Quantity := ValueEntry."Invoiced Quantity" / SalesInvoiceLine2."Qty. per Unit of Measure"
                    ELSE
                        Quantity := ValueEntry."Invoiced Quantity";
                    AddBufferEntry(
                      SalesInvoiceLine2,
                      -Quantity,
                      ItemLedgerEntry."Posting Date");
                    TotalQuantity := TotalQuantity + ValueEntry."Invoiced Quantity";
                END;
                FirstValueEntryNo := ValueEntry."Entry No." + 1;
            UNTIL (ValueEntry.NEXT = 0) OR (TotalQuantity = 0);
    end;

    procedure GenerateBufferFromShipment(SalesInvoiceLine: Record "Sales Invoice Line")
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceLine2: Record "Sales Invoice Line";
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentLine: Record "Sales Shipment Line";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := 0;
        SalesInvoiceHeader.SETCURRENTKEY("Order No.");
        SalesInvoiceHeader.SETFILTER("No.", '..%1', "Sales Invoice Header"."No.");
        SalesInvoiceHeader.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        IF SalesInvoiceHeader.FIND('-') THEN
            REPEAT
                SalesInvoiceLine2.SETRANGE("Document No.", SalesInvoiceHeader."No.");
                SalesInvoiceLine2.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
                SalesInvoiceLine2.SETRANGE(Type, SalesInvoiceLine.Type);
                SalesInvoiceLine2.SETRANGE("No.", SalesInvoiceLine."No.");
                SalesInvoiceLine2.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
                IF SalesInvoiceLine2.FIND('-') THEN
                    REPEAT
                        TotalQuantity := TotalQuantity + SalesInvoiceLine2.Quantity;
                    UNTIL SalesInvoiceLine2.NEXT = 0;
            UNTIL SalesInvoiceHeader.NEXT = 0;

        SalesShipmentLine.SETCURRENTKEY("Order No.", "Order Line No.");
        SalesShipmentLine.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        SalesShipmentLine.SETRANGE("Order Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE(Type, SalesInvoiceLine.Type);
        SalesShipmentLine.SETRANGE("No.", SalesInvoiceLine."No.");
        SalesShipmentLine.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
        SalesShipmentLine.SETFILTER(Quantity, '<>%1', 0);

        IF SalesShipmentLine.FIND('-') THEN
            REPEAT
                IF "Sales Invoice Header"."Get Shipment Used" THEN
                    CorrectShipment(SalesShipmentLine);
                IF ABS(SalesShipmentLine.Quantity) <= ABS(TotalQuantity - SalesInvoiceLine.Quantity) THEN
                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity
                ELSE BEGIN
                    IF ABS(SalesShipmentLine.Quantity) > ABS(TotalQuantity) THEN
                        SalesShipmentLine.Quantity := TotalQuantity;
                    Quantity :=
                      SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);

                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity;
                    SalesInvoiceLine.Quantity := SalesInvoiceLine.Quantity - Quantity;

                    IF SalesShipmentHeader.GET(SalesShipmentLine."Document No.") THEN BEGIN
                        AddBufferEntry(
                          SalesInvoiceLine,
                          Quantity,
                          SalesShipmentHeader."Posting Date");
                    END;
                END;
            UNTIL (SalesShipmentLine.NEXT = 0) OR (TotalQuantity = 0);
    end;

    procedure CorrectShipment(var SalesShipmentLine: Record "Sales Shipment Line")
    var
        SalesInvoiceLine: Record "Sales Invoice Line";
    begin
        SalesInvoiceLine.SETCURRENTKEY("Shipment No.", "Shipment Line No.");
        SalesInvoiceLine.SETRANGE("Shipment No.", SalesShipmentLine."Document No.");
        SalesInvoiceLine.SETRANGE("Shipment Line No.", SalesShipmentLine."Line No.");
        IF SalesInvoiceLine.FIND('-') THEN
            REPEAT
                SalesShipmentLine.Quantity := SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
            UNTIL SalesInvoiceLine.NEXT = 0;
    end;

    procedure AddBufferEntry(SalesInvoiceLine: Record "Sales Invoice Line"; QtyOnShipment: Decimal; PostingDate: Date)
    begin
        SalesShipmentBuffer.SETRANGE("Document No.", SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date", PostingDate);
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity + QtyOnShipment;
            SalesShipmentBuffer.MODIFY;
            EXIT;
        END;

        WITH SalesShipmentBuffer DO BEGIN
            "Document No." := SalesInvoiceLine."Document No.";
            "Line No." := SalesInvoiceLine."Line No.";
            "Entry No." := NextEntryNo;
            Type := SalesInvoiceLine.Type;
            "No." := SalesInvoiceLine."No.";
            Quantity := QtyOnShipment;
            "Posting Date" := PostingDate;
            INSERT;
            NextEntryNo := NextEntryNo + 1
        END;
    end;

    procedure GetDate()
    begin
    end;

    procedure GetPartNo(SalesInvLine: Record "Sales Invoice Line"): Code[20]
    var
        Item: Record Item;
    begin

    end;

    procedure TotalGSTAmtLine(DocNo: Code[20]): Decimal
    var
        PstdSalesInv: Record 113;
        TotalAmt: Decimal;
        DetGstLedEntry: Record "Detailed GST Ledger Entry";
        IGSTAmt: Decimal;
        GSTBaseAmt: Decimal;
        SGSTAmt: Decimal;
        CGSTAmt: Decimal;
    begin
        Clear(IGSTAmt);
        Clear(GSTBaseAmt);
        Clear(SGSTAmt);
        Clear(CGSTAmt);

        DetGstLedEntry.RESET();
        DetGstLedEntry.SETRANGE("Document No.", DocNo);
        DetGstLedEntry.SETRANGE("GST Component Code", 'IGST');
        IF DetGstLedEntry.FINDFIRST THEN begin
            DetGstLedEntry.CalcSums("GST Amount");
            IGSTAmt += abs(DetGstLedEntry."GST Amount");
        end;



        DetGstLedEntry.RESET();
        DetGstLedEntry.SETRANGE("Document No.", DocNo);
        DetGstLedEntry.SETRANGE("GST Component Code", 'CGST');
        IF DetGstLedEntry.FINDFIRST THEN begin
            DetGstLedEntry.CalcSums("GST Amount");
            SGSTAmt += abs(DetGstLedEntry."GST Amount");
        end;


        DetGstLedEntry.RESET();
        DetGstLedEntry.SETRANGE("Document No.", DocNo);
        DetGstLedEntry.SETRANGE("GST Component Code", 'CGST');
        IF DetGstLedEntry.FINDFIRST THEN begin
            DetGstLedEntry.CalcSums("GST Amount");
            CGSTAmt += abs(DetGstLedEntry."GST Amount");
        end;

        Clear(TotalAmt);
        TotalAmt := IGSTAmt + SGSTAmt + CGSTAmt;
        EXIT(ABS(TotalAmt));
    end;

    procedure TotalIGSTAmtLine(DocNo: Code[20]): Decimal
    var
        PstdSalesInv: Record 113;
        IGSTTotalAmt: Decimal;
        DetGstLedEntry: Record "Detailed GST Ledger Entry";
        IGSTAmt: Decimal;
    begin
        Clear(IGSTAmt);

        DetGstLedEntry.RESET();
        DetGstLedEntry.SETRANGE("Document No.", DocNo);
        DetGstLedEntry.SETRANGE("GST Component Code", 'IGST');
        if DetGstLedEntry.FindSet() then
            repeat
                IGSTAmt += abs(DetGstLedEntry."GST Amount");
            until DetGstLedEntry.Next() = 0;

        Clear(IGSTTotalAmt);
        IGSTTotalAmt := IGSTAmt;
        EXIT(ABS(IGSTTotalAmt));
    end;

    procedure TotalCGSTAmtLine(DocNo: Code[20]): Decimal
    var
        PstdSalesInv: Record 113;
        CGSTTotalAmt: Decimal;
        DetGstLedEntry: Record "Detailed GST Ledger Entry";
        CGSTAmt: Decimal;
        CGSTPer: Decimal;
    begin
        Clear(CGSTAmt);

        DetGstLedEntry.RESET();
        DetGstLedEntry.SETRANGE("Document No.", DocNo);
        DetGstLedEntry.SETRANGE("GST Component Code", 'CGST');
        if DetGstLedEntry.FindSet() then
            repeat
                CGSTAmt += abs(DetGstLedEntry."GST Amount");
            until DetGstLedEntry.Next() = 0;

        Clear(CGSTTotalAmt);
        CGSTTotalAmt := CGSTAmt;
        EXIT(ABS(CGSTTotalAmt));
    end;
}

