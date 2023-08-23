report 50015 "Sales Journal"
{

    DefaultLayout = RDLC;
    RDLCLayout = '.\ReportLayouts\SalesJournal.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;
    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("Posting Date")
                                ORDER(Ascending);
            RequestFilterFields = "Posting Date", "No.", "Sell-to Customer No.", "Bill-to City", "Location Code";

            column(Name_CompInfo; CompInfo.Name)
            {
            }
            column(TINNo; TINNo)
            {
            }
            column(CompName2; CompInfo."Name 2")
            {
            }
            column(DateFrom; DateFrom)
            {
            }
            column(FrieghtCharge; FrieghtCharge)
            {
            }
            column(DateTo; DateTo)
            {
            }
            column(Filters; GETFILTERS)
            {
            }
            column(PostingDate_SalesInvoiceHeader; "Sales Invoice Header"."Posting Date")
            {
            }
            column(SelltoCustomerName_SalesInvoiceHeader; "Sales Invoice Header"."Sell-to Customer Name")
            {
            }
            column(uom; uom)
            {
            }
            column(Code_State; StateCodeNum)
            {
            }
            column(DealerCode_SalesInvoiceHeader; "Sales Invoice Header"."Dealer Code")
            {
            }
            column(SqrMtr; SqrMtr)
            {
            }
            // column(ExAmount; ExAmount)
            // {
            // }
            column(ExAmount; ExAmount)
            {
            }
            column(FormCode_SalesInvoiceHeader; '') //
            {
            }
            column(DiscountCharges_SalesInvoiceHeader; "Sales Invoice Header"."Discount Charges %")
            {
            }
            // column(Trad_discount; Trad_discount)
            // {
            // }
            column(gst_type; "Sales Invoice Header"."GST Customer Type")
            {
            }
            // column(gstnr; gstn)  
            // {
            // }
            column(gstnr; CustTINNO) //17141
            {
            }
            column(TotalQty; TotalQty)
            {
            }
            column(Tax_base; "Sales Invoice Header"."Tax Base")
            {
            }
            column(DocNo; "No.")
            {
            }
            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document No.", "Line No.")
                                    ORDER(Ascending)
                                    WHERE("No." = FILTER(<> ''),
                                          Type = FILTER(Item | "Fixed Asset" | Resource),
                                          Quantity = FILTER(<> 0));
                // Supplementary=FILTER(No));
                RequestFilterFields = "Unit of Measure Code", Type, "Item Category Code", "Quantity Discount Amount", "Accrued Discount";
                column(DocumentNo_SalesInvoiceLine; "Sales Invoice Line"."Document No.")
                {
                }
                column(Trad_discount; Round("Sales Invoice Line"."Trade Discount Amount", 0.01, '='))
                {
                }  //17141
                column(Quantity_SalesInvoiceLine; "Sales Invoice Line".Quantity)
                {
                }
                column(AccruedDiscount_SalesInvoiceLine; "Sales Invoice Line"."Accrued Discount")
                {
                }
                column(QuantityDiscountAmount_SalesInvoiceLine; "Sales Invoice Line"."Quantity Discount Amount")
                {
                }
                column(Value; Value)
                {
                }
                column(ExciseAmount_SalesInvoiceLine; 0)
                {
                }



                column(SalesValue; Value)
                {
                }
                column(TotalValue; TotalValue)
                {
                }
                column(NetValue; NetValue)
                {
                }
                column(PerJud_2; PerJud[2])
                {
                }
                column(ET1; ET1)
                {
                }
                column(VATAmount; VATAmount)
                {
                }
                column(tgVATCess; tgVATCess)
                {
                }
                column(TaxAmount_SalesInvoiceLine; 0)
                {
                }
                column(Insurance1; "Sales Invoice Header"."Insurance Amount")
                {
                }
                // column(Insurance1; Insurance)    //17141
                // {
                // }

                column(gstBaseAmount; gstBaseAmount)
                {
                }

                column(Export; Export)
                {
                }
                column(StateCode; StateCodeNum)
                {
                }
                column(Roundoff; Roundoff)
                {
                }
                column(ADD1; "Sales Invoice Line"."Discount Amt 1")
                {
                }
                column(ADD2; "Sales Invoice Line"."Discount Amt 2")
                {
                }
                column(ADD3; "Sales Invoice Line"."Discount Amt 3")
                {
                }
                column(ADD4; "Sales Invoice Line"."Discount Amt 4")
                {
                }
                column(VATAmountMinustgVATCess; VATAmount - tgVATCess)
                {
                }
                column(TotalValueMinusInvDisc; TotalValue - ABS(InvDisc))
                {
                }
                column(NetValueMinusInvDisc; NetValue - ABS(InvDisc))
                {
                }
                // column(CustTINNo; '')
                // {
                // }
                column(CustTINNo; L_TINNo)  //17141
                {
                }
                column(ExceptionType; "Sales Invoice Header"."CR Exception Type")
                {
                }
                column(CRApprovedQty; "Sales Invoice Header"."CR Approved By")
                {
                }
                column(SelltoCustNo; 'C' + "Sales Invoice Header"."Sell-to Customer No.")
                {
                }
                column(ShiptoAdd; "Sales Invoice Header"."Ship-to Address")
                {
                }
                column(ShiptoAdd2; "Sales Invoice Header"."Ship-to Address 2")
                {
                }
                column(ShiptoCity; "Sales Invoice Header"."Ship-to City")
                {
                }
                column(GRNo; "Sales Invoice Header"."GR No.")
                {
                }
                column(TruckNo; "Sales Invoice Header"."Truck No.")
                {
                }
                column(TransNAME; "Sales Invoice Header"."Transporter's Name")
                {
                }
                // column(TaxBaseAmt; '')
                column(TaxBaseAmt; TaxBaseAmt)  //17141
                {
                }
                column(Dim1; Cust."Global Dimension 1 Code")
                {
                }
                column(SIHSalesType; "Sales Invoice Header"."Sales Type")
                {
                }
                column(PchCode; PchCode)
                {
                }
                column(GPchCode; GPchCode)
                {
                }
                column(PriPchCode; PriPchCode)
                {
                }
                column(InvDisNew; InvDisNew)
                {
                }
                column(InvDisc; InvDisc)
                {
                }
                column(TaxPer_SalesInvoiceLine; '')
                {
                }
                column(cgst; CAmount1)
                {
                }
                column(sgst; sAmount1)
                {
                }
                column(igst; IAmount1)
                {
                }
                column(ugst; UAmount1)
                {
                }

                column(OthClm; OthClm)
                {
                }
                column(FrightChargeAmt; FrightChargeAmt)
                {
                }
                column(InsuranceClm; InsuranceClm)
                {
                }
                column(TotalCDAmt; TotalCDAmt)
                {
                }
                column(GSTBAmt; GSTBAmt)
                {

                }
                column(TotalDis1; TotalDis1) { }

                trigger OnPreDataItem()
                begin
                    //17141
                    Clear(Insurance);
                    SIL.Reset();
                    SIL.SetRange("Document No.", "Sales Invoice Header"."No.");
                    SIL.SetRange(Type, SIL.Type::"Charge (Item)");
                    SIL.SetFilter("No.", '%1', 'INSURANCE');
                    IF SIL.FindFirst() then
                        Insurance := SIL."Line Amount";
                    //17141

                end;

                trigger OnAfterGetRecord()
                var
                    DetGSTLedger: Record "Detailed GST Ledger Entry";
                begin
                    //17141




                    Value := 0;
                    SqMt := 0;
                    DiscPerCart := 0;
                    Clear(ExAmount);
                    Clear(SqMt);
                    Clear(BuyersPrice);
                    Clear(DecRate);
                    Clear(LineDis);
                    Clear(BuyersRatePerSqMtr);
                    Clear(TotalDis1);

                    TotalDis1 += "Sales Invoice Line"."Structure Discount Amount" + "Sales Invoice Line"."Trade Discount Amount";



                    SqMt := Item.UomToSqm("No.", "Unit of Measure Code", Quantity);

                    IF Quantity <> 0 THEN
                        BuyersPrice := "Sales Invoice Line"."Buyer's Price";

                    IF "Quantity in Sq. Mt." <> 0 THEN BEGIN
                        DecRate := ("Quantity Discount Amount" / "Quantity in Sq. Mt.");
                        LineDis := ("Line Discount Amount" / "Quantity in Sq. Mt.");
                    END;

                    IF SqMt <> 0 THEN
                        DiscPerCart := "Line Discount Amount" / SqMt;
                    IF SqMt <> 0 THEN BEGIN
                        BuyersRatePerSqMtr := (BuyersPrice * Quantity / SqMt) + DecRate + LineDis;
                    END;

                    ExAmount := (BuyersRatePerSqMtr - DiscPerCart) * "Quantity in Sq. Mt.";
                    // ExAmount += ("Sales Invoice Line"."Quantity in Sq. Mt." * "Sales Invoice Line"."Buyer's Price");
                    //17141

                    DetGSTLedger.Reset();
                    Clear(IAmount1);
                    Clear(sAmount1);
                    Clear(CAmount1);
                    Clear(UAmount1);

                    DetGSTLedger.SETRANGE("Document No.", "Document No.");
                    // DetGSTLedger.SetRange("Document Line No.", "Line No.");
                    DetGSTLedger.SETRANGE("GST Component Code", 'IGST');
                    IF DetGSTLedger.FindFirst() THEN
                        repeat
                            IAmount1 += abs(DetGSTLedger."GST Amount");
                        until DetGSTLedger.Next() = 0;

                    DetGSTLedger.SETRANGE("Document No.", "Document No.");
                    // DetGSTLedger.SetRange("Document Line No.", "Line No.");
                    DetGSTLedger.SETRANGE("GST Component Code", 'SGST');
                    IF DetGSTLedger.FindFirst() THEN
                        repeat
                            sAmount1 += abs(DetGSTLedger."GST Amount");
                        until DetGSTLedger.Next() = 0;

                    DetGSTLedger.SETRANGE("Document No.", "Document No.");
                    // DetGSTLedger.SetRange("Document Line No.", "Line No.");
                    DetGSTLedger.SETRANGE("GST Component Code", 'CGST');
                    IF DetGSTLedger.FindFirst() THEN
                        repeat
                            CAmount1 += abs(DetGSTLedger."GST Amount");
                        until DetGSTLedger.Next() = 0;

                    DetGSTLedger.SETRANGE("Document No.", "Document No.");
                    // DetGSTLedger.SetRange("Document Line No.", "Line No.");
                    DetGSTLedger.SETRANGE("GST Component Code", 'UTGST');
                    IF DetGSTLedger.FindFirst() THEN
                        repeat
                            UAmount1 += abs(DetGSTLedger."GST Amount");
                        until DetGSTLedger.Next() = 0;


                    //17141

                    SqrMtr := 0;
                    SqrMtr := Item.UomToSqm("No.", "Unit of Measure Code", Quantity);

                    GSTBAmt := GSTbaseAmtSIL("Document No.", "Line No.");

                    VATAmount := 0;
                    Cust.GET("Sales Invoice Line"."Sell-to Customer No.");
                    IF Location.GET("Location Code") THEN BEGIN
                        IF Location."State Code" = Cust."State Code" THEN begin
                            VATAmount := "Sales Invoice Line"."Amount Including VAT";
                            //17141
                            TINNo := Location."GST Registration No.";

                            L_TINNo := Location."GST Registration No.";


                            CustTINNo := Cust."GST Registration No.";
                            //17141
                        end;
                    END;

                    Clear(InvDisc);
                    Clear(Trad_discount);
                    IF "Sales Invoice Line"."Line Discount %" <> 100 THEN begin
                        // ExAmount := ROUND(("Sales Invoice Line"."Unit Price" * "Sales Invoice Line".Quantity) + "Sales Invoice Line".Amount, 0.01, '=');
                        //SalesValue := Value + "Excise Amount";
                        // ExAmount += "Amount Including VAT";  //17141
                        // InvDisc := ((ExAmount * "Sales Invoice Header"."Discount Charges %") / 100); //17141

                        InvDisc += "Sales Invoice Line"."Structure Discount Amount";
                        // Trad_discount += "Sales Invoice Line"."Line Discount Amount";    //17141
                        //17141
                        Trad_discount += "Sales Invoice Line"."Line Discount Amount";
                        //17141





                        Clear(TotalAmt);
                        Clear(TotalGST);
                        TotalGST := IGSTper + SGSTper + CGSTper + UGSTper;
                        TotalAmt := IGSTAmt + SGSTAmt + CGSTAmt + UGSTAmt;


                    END;

                    // CLEAR(InvDisc);
                    // recSalesInvLn.Reset();
                    // recSalesInvLn.SetRange("Document No.", "Sales Invoice Header"."No.");
                    // recSalesInvLn.SetFilter(Description, '@*%1*', 'Discount');
                    // IF recSalesInvLn.FindSet() then begin
                    //     repeat
                    //         InvDisc := (ExAmount * "Sales Invoice Header"."Discount Charges %") / 100;
                    //     until recSalesInvLn.Next() = 0;
                    // end;



                end;
            }

            trigger OnPreDataItem()
            begin
                CompInfo.GET;
                GLSetup.GET;
                GenLegSetup.GET;

            end;

            trigger OnAfterGetRecord()
            begin
                Clear(TotalDis1);
                TotalQty := 0;
                recSalesInvLn.RESET;
                recSalesInvLn.SETRANGE("Document No.", "No.");
                // recSalesInvLn.SETRANGE(Type, recSalesInvLn.Type::Item);
                recSalesInvLn.SETRANGE(Type, Type::Item);   //17141
                IF recSalesInvLn.FINDFIRST THEN
                    REPEAT
                        TotalQty += recSalesInvLn.Quantity;
                    UNTIL recSalesInvLn.NEXT = 0;    //17141

                TotalCDAmt += "Sales Invoice Header"."CD Availed from Utilisation";

                PchCode := '';
                GPchCode := '';
                PriPchCode := '';
                IF Customer2.GET("Sales Invoice Header"."Sell-to Customer No.") THEN BEGIN
                    PchCode := Customer2."PCH Code";
                    GPchCode := Customer2."Govt. SP Resp.";
                    PriPchCode := Customer2."Private SP Resp.";
                END;




                CLEAR(FrieghtCharge);
                recSalesInvLn.Reset();
                recSalesInvLn.SetRange("Document No.", "Sales Invoice Header"."No.");
                recSalesInvLn.SetFilter(Description, '@*%1*', 'FREIGHT');
                IF recSalesInvLn.FindFirst() then begin
                    // repeat   //17141
                    // FrieghtCharge += recSalesInvLn.Amount;
                    FrieghtCharge := recSalesInvLn.Amount;  //17141
                    // until recSalesInvLn.Next() = 0;  //17141
                end;





                CLEAR(OthClm);
                recSalesInvLn.Reset();
                recSalesInvLn.SetRange("Document No.", "Sales Invoice Header"."No.");
                recSalesInvLn.SetFilter(Description, '@*%1*', 'OTH_CLAIM');
                IF recSalesInvLn.FindSet() then begin
                    // repeat
                    // OthClm += recSalesInvLn.Amount; //17141
                    OthClm := recSalesInvLn.Amount;
                    // until recSalesInvLn.Next() = 0;  //17141
                end;

                //17141
                CLEAR(InsuranceClm);
                recSalesInvLn.Reset();
                recSalesInvLn.SetRange("Document No.", "Sales Invoice Header"."No.");
                recSalesInvLn.SetFilter(Description, '@*%1*', 'INS_CLAIM');
                IF recSalesInvLn.FindFirst() then begin
                    InsuranceClm := recSalesInvLn.Amount;
                end;
                //17141

                InvDisNew := InvDisc;

                CLEAR(Roundoff);
                RecSalesInvLine.RESET;
                RecSalesInvLine.SETRANGE("Document No.", "Sales Invoice Header"."No.");
                RecSalesInvLine.SETRANGE(RecSalesInvLine."System-Created Entry", TRUE);
                IF RecSalesInvLine.FINDFIRST THEN
                    Roundoff := RecSalesInvLine.Amount;

                IF InvDisNew > 0 THEN
                    Value := ExAmount - ABS(InvDisNew)
                ELSE
                    Value := ExAmount - ABS(InvDisNew);

                //>>
                Clear(TotalValue);
                RecSalesInvLine.RESET;
                RecSalesInvLine.SETRANGE("Document No.", "Sales Invoice Header"."No.");
                IF RecSalesInvLine.FindSet() then begin
                    repeat
                        SILDocNoNew := RecSalesInvLine."Document No.";


                        i := 0;
                        FOR i := 1 TO 3 DO BEGIN
                            JudText[i] := '';
                            PerJud[i] := 0;
                        END;







                        i := 0;
                        IF "Tax Liable" = TRUE THEN BEGIN
                            IF TaxPerc <> 0 THEN
                                TaxBaseAmt := (RecSalesInvLine."VAT Base Amount" / TaxPerc) * 100;
                        end;
                        IF TaxPerc <> 0 THEN BEGIN
                            TaxAreaLine.RESET;
                            TaxAreaLine.SETFILTER(TaxAreaLine."Tax Area", '%1', RecSalesInvLine."Tax Area Code");
                            IF TaxAreaLine.FIND('-') THEN
                                REPEAT
                                    IF TaxJurisdiction.GET(TaxAreaLine."Tax Jurisdiction Code") THEN BEGIN
                                        IF TaxJurisdiction."Additional Tax" THEN BEGIN
                                            TaxDetails.RESET;
                                            //TaxDetails.SETCURRENTKEY("Tax Jurisdiction Code","Tax Group Code","Form Code","Effective Date");//Rahul 060706
                                            TaxDetails.SETFILTER(TaxDetails."Tax Jurisdiction Code", '%1', TaxAreaLine."Tax Jurisdiction Code");
                                            TaxDetails.SETFILTER(TaxDetails."Tax Group Code", '%1', RecSalesInvLine."Tax Group Code");
                                            //TaxDetails.SETFILTER(TaxDetails."Form Code",'%1',"Sales Invoice Header"."Form Code");
                                            TaxDetails.SETFILTER(TaxDetails."Effective Date", '..%1', "Sales Invoice Header"."Posting Date");
                                            IF TaxDetails.FIND('+') THEN;
                                            tgVATCess := (RecSalesInvLine."VAT Base Amount" * TaxDetails."Tax Below Maximum") / 100;
                                        END;
                                    END;
                                UNTIL TaxAreaLine.NEXT = 0;
                        END;
                        IF VATAmount = 0 THEN
                            tgVATCess := 0;


                        IF RecState.GET("Sales Invoice Header".State) THEN;
                        CLEAR(StateCodeNum);
                        IF EVALUATE(StateCodeNum, RecState.Code) THEN;
                    until RecSalesInvLine.Next() = 0;
                end;
                //<<






            end;


            trigger OnPostDataItem()
            begin


            end;


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

    labels
    {
    }

    trigger OnInitReport()
    begin

    end;

    trigger OnPostReport()
    begin


    end;

    trigger OnPreReport()
    begin

        IF "Sales Invoice Line".GETFILTER("Sales Invoice Line"."Unit of Measure Code") = '' THEN
            ERROR('Please enter the Unit of Measure')
        ELSE
            uom := "Sales Invoice Line".GETFILTER("Sales Invoice Line"."Unit of Measure Code");

        IF STRPOS(FORMAT("Sales Invoice Header".GETFILTER("Sales Invoice Header"."Posting Date")), '.') <> 1 THEN
            DateFrom := FORMAT("Sales Invoice Header".GETRANGEMIN("Sales Invoice Header"."Posting Date"));

        IF STRPOS(FORMAT("Sales Invoice Header".GETFILTER("Sales Invoice Header"."Posting Date")), '.')
          <> STRLEN(FORMAT("Sales Invoice Header".GETFILTER("Sales Invoice Header"."Posting Date"))) - 1 THEN
            DateTo := FORMAT("Sales Invoice Header".GETRANGEMAX("Sales Invoice Header"."Posting Date"));

        Filters := "Sales Invoice Header".GETFILTERS + ' ' + "Sales Invoice Line".GETFILTERS;
    end;

    var
        TotalDis1: Decimal;
        CompInfo: Record "Company Information";
        //PostedStrOrderLineDetails: Record "13798";
        Insurance: Decimal;

        ExAmount: Decimal;
        Value: Decimal;
        SalesValue: Decimal;
        TotalValue: Decimal;
        NetValue: Decimal;
        Roundoff: Decimal;
        SqrMtr: Decimal;
        DateFrom: Text[30];
        DateTo: Text[30];
        Item: Record Item;
        Export: Text[30];
        uom: Code[10];
        gstBaseAmount: Decimal;
        UnitofMeasure: Record "Unit of Measure";
        JudText: array[3] of Code[50];
        PerJud: array[3] of Decimal;
        TaxAreaLine: Record "Tax Area Line";
        TaxDetails: Record "Tax Detail";
        i: Integer;
        Trad_discount: Decimal;
        SalesInvLine1: Record "Sales Invoice Line";
        TaxBaseAmt: Decimal;
        InvDisc: Decimal;
        GenLegSetup: Record "General Ledger Setup";
        GLSetup: Record "General Ledger Setup";
        VATAmount: Decimal;
        ET1: Decimal;
        tgVATCess: Decimal;
        RecState: Record "State";
        Location: Record "Location";
        TaxJurisdiction: Record "Tax Jurisdiction";
        GSTBAmt: Decimal;
        Cust: Record "Customer";
        CompanyName2: Text[100];
        RowNo: Text[50];
        //PostedStrOrderLDetails: Record "13798";
        "Tin No.": Code[10];
        RepAuditMgt: Codeunit "Auto PDF Generate";
        PchCode: Code[20];
        GPchCode: Code[20];
        PriPchCode: Code[20];
        Customer2: Record "Customer";
        SIL: Record "Sales Invoice Line";
        RecSalesInvLine: Record "Sales Invoice Line";
        Text001: Label 'As of %1';
        Text005: Label 'Company Name';
        Text006: Label 'Report No.';
        Text007: Label 'Report Name';
        Text008: Label 'User ID';
        Text009: Label 'Print Date';
        Text011: Label 'Filters';
        Text012: Label 'Filters 2';
        Text01: Label 'Sales Journal';
        Text002: Label 'Sales Data';
        Filters: Text[250];
        SILDocNoNew: Code[30];
        InvDisNew: Decimal;
        StateCodeNum: Integer;
        TINNo: Code[30];
        //PostedStructureOrderDetails: Record "13760";
        FrieghtCharge: Decimal;
        DetailedGSTLedgerEntry: Record "Detailed GST Ledger Entry";
        CAmount: Decimal;
        sAmount: Decimal;
        IAmount: Decimal;
        UAmount: Decimal;
        CAmount1: Decimal;
        sAmount1: Decimal;
        IAmount1: Decimal;
        UAmount1: Decimal;
        gstn: Code[15];
        gsttyp: Option;
        FrightChargeAmt: Decimal;
        OthClm: Decimal;
        InsuranceClm: Decimal;
        //PostedStrOrderLineDetails1: Record "13798";
        TotalQty: Decimal;
        recSalesInvLn: Record "Sales Invoice Line";
        TotalCDAmt: Decimal;
        TaxPerc: Decimal;

        IGSTper: Decimal;
        UGSTper: Decimal;

        SGSTper: Decimal;
        CGSTper: Decimal;
        TotalGST: Decimal;
        DetGstLedEntry: Record "Detailed GST Entry Buffer";
        TotalAmt: Decimal;
        IGSTAmt: Decimal;
        SGSTAmt: Decimal;
        CGSTAmt: Decimal;
        UGSTAmt: Decimal;
        CustTINNo: Code[20];
        L_TINNo: Code[20];

        ///................17141g
        DiscPerCart: Decimal;
        DiscPerSqmt: Decimal;
        SqMt: Decimal;
        LineDis: Decimal;
        DecRate: Decimal;
        BuyersRatePerSqMtr: Decimal;
        BuyersPrice: Decimal;

    procedure GSTbaseAmtSIL(DocumentNo: Code[20]; DocLineNo: Integer): Decimal
    var
        PstdSalesInv: Record 113;
        TotalAmt: Decimal;
        DetGstLedEntry: Record "Detailed GST Ledger Entry";
        IGSTAmt: Decimal;
        GSTBaseAmt: Decimal;
        SGSTAmt: Decimal;
        CGSTAmt: Decimal;
        LineAmt: Decimal;
        TDSAmt: Decimal;
    begin
        Clear(IGSTAmt);
        Clear(LineAmt);
        Clear(SGSTAmt);
        Clear(CGSTAmt);
        DetGstLedEntry.RESET();
        DetGstLedEntry.SETRANGE("Document No.", DocumentNo);
        DetGstLedEntry.SetRange("Document Line No.", DocLineNo);
        DetGstLedEntry.SETRANGE("GST Component Code", 'IGST');
        IF DetGstLedEntry.FINDFIRST THEN
            // IGSTAmt := abs(DetGstLedEntry."GST Amount"); 
            // CAmount := abs(DetGstLedEntry."GST Amount");    //17141
        GSTBaseAmt := abs(DetGstLedEntry."GST Base Amount");



        DetGstLedEntry.RESET();
        DetGstLedEntry.SETRANGE("Document No.", DocumentNo);
        DetGstLedEntry.SetRange("Document Line No.", DocLineNo);
        DetGstLedEntry.SETRANGE("GST Component Code", 'SGST');
        IF DetGstLedEntry.FINDFIRST THEN
            // SGSTAmt := abs(DetGstLedEntry."GST Amount");
            // SGSTAmt := abs(DetGstLedEntry."GST Amount");    //17141
        GSTBaseAmt := abs(DetGstLedEntry."GST Base Amount");

        DetGstLedEntry.RESET();
        DetGstLedEntry.SETRANGE("Document No.", DocumentNo);
        DetGstLedEntry.SetRange("Document Line No.", DocLineNo);
        DetGstLedEntry.SETRANGE("GST Component Code", 'CGST');
        IF DetGstLedEntry.FINDFIRST THEN
            // CGSTAmt := abs(DetGstLedEntry."GST Amount"); 
            // CGSTAmt := abs(DetGstLedEntry."GST Amount");    //17141
        GSTBaseAmt := abs(DetGstLedEntry."GST Base Amount");



        Clear(TotalAmt);
        TotalAmt := GSTBaseAmt;
        EXIT(ABS(TotalAmt));
    end;



    //igstper,sgstper,cgstper,totalgst,totalamt,igstamt,sgstamt,cgstamt
}

