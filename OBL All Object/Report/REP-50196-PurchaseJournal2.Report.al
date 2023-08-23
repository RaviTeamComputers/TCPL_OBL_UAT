report 50196 "Purchase Journal-2"
{
    // 
    // //report 55 - S3 ravi
    // 
    // 1. TRI C.A. 01.11.07  Report modified,variables added (tgShowDetail,tgShowSummary,tgGrandDiscount,tgGrandVat,tgGrandTax).
    //                       Section Purch. Inv. Header,Header(3) added. Section Purch. Inv. Header Footer(5) added.
    // s
    // 
    // 2. TRI S.B. 03.03.08  CHANGE DONE IN EX AMOUNT AND OLD CODE COMMENTED
    DefaultLayout = RDLC;
    RDLCLayout = '.\ReportLayouts\PurchaseJournal2.rdl';

    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;

    dataset
    {
        dataitem("Purch. Inv. Header"; "Purch. Inv. Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "Posting Date", "No.", "Sell-to Customer No.";
            column(tgShowDetail; tgShowDetail)
            {
            }
            column(tgShowSummary; tgShowSummary)
            {
            }
            column(CompanyName1; CompanyName1)
            {
            }
            column(CompanyName2; CompanyName2)
            {
            }
            column(PurchInvHeader_GETFILTERS; "Purch. Inv. Header".GETFILTERS)
            {
            }
            column(GateentryNo; "Purch. Inv. Header"."GE No.")
            {
            }
            column(FilterString; FilterString)
            {
            }
            column(PurchInvHeader_PostingDate; "Purch. Inv. Header"."Posting Date")
            {
            }
            column(PurchInvHeader_VendorInvoiceNo; "Purch. Inv. Header"."Vendor Invoice No.")
            {
            }
            column(PurchInvHeader_BuyfromVendorName; "Purch. Inv. Header"."Buy-from Vendor Name")
            {
            }
            column(cTinNo; cTinNo)
            {
            }
            column(PurchInvHeader_FormCode; '')   //"Purch. Inv. Header"."Form Code" Depreciated 17141-confirmed with Kailash Sir
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(PurchInvHeader_No; "Purch. Inv. Header"."No.")
            {
            }
            column(gst_vend_type; "Purch. Inv. Header"."GST Vendor Type")
            {
            }
            column(gstn_no; gstn)
            {
            }
            column(loca_branch; "Purch. Inv. Header"."Shortcut Dimension 1 Code")
            {
            }
            column(location_gst; lgstn)
            {
            }
            dataitem("Purch. Inv. Line"; 123)
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING(Type, "No.", "Variant Code");
                // RequestFilterFields = "Document No.", state, "Item Category Code", "Excise Bus. Posting Group", "Excise Prod. Posting Group";  
                RequestFilterFields = "Document No.", "Location Code", "Item Category Code";    //17141
                column(FirstItemDes; FirstItemDes)
                {
                }
                column(ItemNo; "Purch. Inv. Line"."No.")
                {
                }
                column(Form38; Form38)
                {
                }
                column(Import; Import)
                {
                }
                column(DocumentNo; "Purch. Inv. Line"."Document No.")
                {
                }
                column(PurchInvLine_StateCode; State1)    //17141 state1 instead state
                {
                }
                column(Description; "Purch. Inv. Line".Description)
                {
                }
                column(Description2; "Purch. Inv. Line"."Description 2")
                {
                }
                column(Quantity; "Purch. Inv. Line".Quantity)
                {
                }
                column(PurchInvLine_UnitofMeasureCode; "Purch. Inv. Line"."Unit of Measure Code")
                {
                }
                column(SqrMtr; SqrMtr)
                {
                }
                column(AdditionalTot; AdditionalTot)
                {
                }
                column(ExAmount; ExAmount)
                {
                }
                column(LineDiscountAmount; "Line Discount Amount")
                {
                }
                column(Value; Value)
                {
                }
                column(ExciseAmount; '')     //"Purch. Inv. Line"."Excise Amount" Depreciated 17141-confirmed with Kailash Sir
                {
                }
                column(SalesValue; SalesValue)
                {
                }
                column(CST; CST)
                {
                }
                column(VatAmt; VatAmt)
                {
                }
                column(Insurance1; Insurance1)
                {
                }
                column(ChargesToVendor; 0) //17141 "Charges to Vendor".  get in  touch rinku, Guide by Kailash sir to please "chargesToVendor"
                {
                }
                column(TotalValue; TotalValue)
                {
                }
                column(Roundoff; Roundoff)
                {
                }
                column(TDSAmt; TDSAmt)      //17141
                {
                }
                column(PurchInvLine_AmountToVendor; (chargesToVendor + Roundoff))  //17141 -"Amount To Vendor"      confirmed with Kailash Sir
                {
                }
                column(CHARGES; CHARGES)
                {
                }
                column(tgGrandDiscount; tgGrandDiscount)
                {
                }
                column(tgGrandTax; tgGrandTax)
                {
                }
                column(tgGrandVat; tgGrandVat)
                {
                }
                column(VendorInvoiceDate; "Purch. Inv. Header"."Vendor Invoice Date")
                {
                }
                column(FormCNo; "Purch. Inv. Header"."Form C No.")
                {
                }
                column(FormCAmt; "Purch. Inv. Header"."Form C Amt")
                {
                }
                column(LocationCode; "Purch. Inv. Line"."Location Code")    //
                {
                }
                column(SQMT; "Purch. Inv. Line"."Quantity (Base)")
                {
                }
                column("var"; "var")
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
                column(gst_group; "Purch. Inv. Line"."GST Group Code")
                {
                }
                column(gst_type; "Purch. Inv. Line"."GST Group Type")
                {
                }
                column(gst_hsn; "Purch. Inv. Line"."HSN/SAC Code")
                {
                }
                column(hsn; "Purch. Inv. Line"."HSN/SAC Code")
                {
                }
                column(gl_name; glname.Name)        //17141 doubt
                {
                }
                column(gpp; "Purch. Inv. Line"."Gen. Prod. Posting Group")
                {
                }
                column(GPPG; "Purch. Inv. Line"."Gen. Prod. Posting Group")
                {
                }


                trigger OnAfterGetRecord()
                var
                    PuchINvLine: Record "Purch. Inv. Line";
                begin
                    if "No." = '51157000' then
                        CurrReport.Skip();

                    if "No." = '' then
                        CurrReport.Skip();



                    //17141
                    Clear(chargesToVendor);
                    chargesToVendor := CalcAmttoVendor.GetAmttoVendorPostedDoc("Purch. Inv. Line"."Document No.");
                    //17141
                    /*
                    IF "Item Category Code"='T001' THEN
                    CurrReport.SKIP;
                     */
                    CLEAR(Form38);
                    PurchRcptHeader.RESET;
                    PurchRcptHeader.SETRANGE(PurchRcptHeader."No.", "Purch. Inv. Line"."Receipt No.");  //17141
                    IF PurchRcptHeader.FINDFIRST THEN //BEGIN
                                                      //RecieptDate:=PurchRcptHeader."Posting Date";
                        Form38 := PurchRcptHeader."Form 38 No.";
                    //END ELSE
                    //RecieptDate:=0D;

                    PurchInvLine.RESET;
                    PurchInvLine.SETRANGE("Document No.", "Document No.");
                    PurchInvLine.SETRANGE(Type, PurchInvLine.Type::Item);
                    IF PurchInvLine.FINDFIRST THEN
                        FirstItemDes := PurchInvLine.Description;

                    /*//sash
                      cTinNo:='';
                    IF cVendor.GET("Purch. Inv. Line"."Buy-from Vendor No.") THEN BEGIN
                    cVendor.GET("Purch. Inv. Line"."Buy-from Vendor No.");
                    cTinNo := cVendor."T.I.N. No.";
                    END; //sash ends
                    */
                    IF "Source Order No." <> '' THEN BEGIN
                        PONo := "Source Order No.";
                        CALCFIELDS("PO Date");
                        PODate := "Purch. Inv. Line"."PO Date";
                        ItemDesc := "Purch. Inv. Line".Description;
                    END;
                    Insurance1 := 0;
                    InventorySetup.GET;
                    ItemUnitofMeasure.RESET;
                    ItemUnitofMeasure.SETFILTER(ItemUnitofMeasure."Item No.", "Purch. Inv. Line"."No.");
                    ItemUnitofMeasure.SETFILTER(ItemUnitofMeasure.Code, InventorySetup."Unit of Measure for Sq. Mt.");
                    IF ItemUnitofMeasure.FIND('-') THEN BEGIN
                        QtyPerC := ItemUnitofMeasure."Qty. per Unit of Measure";
                        ItemUnitofMeasure1.RESET;
                        ItemUnitofMeasure1.SETFILTER(ItemUnitofMeasure1."Item No.", "Purch. Inv. Line"."No.");
                        ItemUnitofMeasure1.SETFILTER(ItemUnitofMeasure1.Code, "Purch. Inv. Line"."Unit of Measure");
                        QtyPerU := ItemUnitofMeasure1."Qty. per Unit of Measure";
                        SqrMtr := ("Purch. Inv. Line".Quantity * QtyPerU) / QtyPerC;
                    END;
                    SqrMtr := ("Purch. Inv. Line".Quantity * "Purch. Inv. Line"."Qty. per Unit of Measure");
                    // PostedStrOrderLineDetails.RESET;          //Depreciated 17141- Confirmed with Kailash Sir
                    // PostedStrOrderLineDetails.SETRANGE(Type, PostedStrOrderLineDetails.Type::Purchase);
                    // PostedStrOrderLineDetails.SETRANGE("Document Type", PostedStrOrderLineDetails."Document Type"::Invoice);
                    // PostedStrOrderLineDetails.SETRANGE("Invoice No.", "Purch. Inv. Line"."Document No.");
                    // PostedStrOrderLineDetails.SETRANGE("Line No.", "Purch. Inv. Line"."Line No.");
                    // IF PostedStrOrderLineDetails.FIND('-') THEN
                    //     REPEAT
                    //         CASE PostedStrOrderLineDetails."Tax/Charge Type" OF
                    //             PostedStrOrderLineDetails."Tax/Charge Type"::Charges:
                    //                 CASE PostedStrOrderLineDetails."Charge Type" OF
                    //                     PostedStrOrderLineDetails."Charge Type"::Insurance:
                    // Insurance1 := Insurance1 + PostedStrOrderLineDetails.Amount;
                    //                 END;
                    //         END;

                    //     UNTIL PostedStrOrderLineDetails.NEXT = 0;
                    Quantity := "Purch. Inv. Line".Quantity;
                    // TRI SC 25.05.2010 Start
                    VatAmt := 0;
                    AdditionalTot := 0;
                    CST := 0;
                    IF LastDocNo <> "Document No." THEN
                        CLEAR(LastItemNo);

                    // IF LastItemNo <> "No." THEN BEGIN    //Depreciated 17141-Confirmed with Kailash Sir
                    //     DetailedTaxEntryBuffer.RESET;
                    //     DetailedTaxEntryBuffer.SETRANGE("Document No.", "Purch. Inv. Line"."Document No.");
                    //     DetailedTaxEntryBuffer.SETRANGE("No.", "Purch. Inv. Line"."No.");
                    //     IF DetailedTaxEntryBuffer.FINDFIRST THEN        //end
                    //         REPEAT
                    //             DetailedTaxEntryBuffer.CALCFIELDS("Additional Tax");
                    //             IF DetailedTaxEntryBuffer."Tax Type" = DetailedTaxEntryBuffer."Tax Type"::CST THEN BEGIN
                    //                 //IF NOT DetailedTaxEntryBuffer."Additional Tax" THEN
                    //                 CST := CST + (DetailedTaxEntryBuffer."Tax Amount")
                    //                 //ELSE
                    //                 //AdditionalTot := AdditionalTot + (DetailedTaxEntryBuffer."Tax Amount");
                    //             END;

                    //             IF DetailedTaxEntryBuffer."Tax Type" = DetailedTaxEntryBuffer."Tax Type"::VAT THEN BEGIN
                    //                 //IF NOT DetailedTaxEntryBuffer."Additional Tax" THEN
                    //                 VatAmt := VatAmt + (DetailedTaxEntryBuffer."Tax Amount")
                    //                 //ELSE
                    //                 //AdditionalTot := AdditionalTot + (DetailedTaxEntryBuffer."Tax Amount");

                    //             END;
                    //         UNTIL DetailedTaxEntryBuffer.NEXT = 0;
                    // END;
                    // TRI SC 25.05.2010 End

                    LastDocNo := "Document No.";
                    LastItemNo := "No.";
                    //TRI S.B. 03.03.08 CODE COMMENTED START
                    ExAmount := "Purch. Inv. Line".Amount;
                    CHARGES := chargesToVendor;
                    // EXCISEAMOUNT := "Purch. Inv. Line"."Excise Amount"; //Depreciated 17141
                    //TRI S.B. 03.03.08 CODE COMMENTED STOP
                    //17141 added
                    begin
                        Clear(TDSAmt);
                        TDSSetup.Get();
                        PstdPurchInv.Reset();
                        PstdPurchInv.SetRange("Document No.", "Document No.");
                        PstdPurchInv.SetRange("Line No.", "Line No.");
                        PstdPurchInv.SetFilter(Type, '<>%1', PstdPurchInv.Type::" ");
                        if PstdPurchInv.FindSet() then
                            repeat
                                // LineAmt += PstdPurchInv."Line Amount";
                                TaxTransactionValue.Reset();
                                TaxTransactionValue.SetRange("Tax Record ID", PstdPurchInv.RecordId);
                                TaxTransactionValue.SetRange("Tax Type", TDSSetup."Tax Type");
                                TaxTransactionValue.SetRange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
                                TaxTransactionValue.SetRange("Value ID", 7);
                                //TaxTransactionValue.SetFilter(Percent, '<>%1', 0);
                                if TaxTransactionValue.FindFirst() then
                                    TDSAmt := TaxTransactionValue.Amount;
                            until PstdPurchInv.Next() = 0;
                    end;

                    //17141 added





                    //TRI S.B. 03.03.08 START
                    ExAmount := "Purch. Inv. Line"."Line Amount" + "Purch. Inv. Line"."Line Discount Amount";
                    //TRI S.B. 03.03.08 STOP

                    //ExAmount := "Purch. Inv. Line".Amount - "Purch. Inv. Line"."Excise Amount" - "Purch. Inv. Line"."Tax Amount";
                    Value := ExAmount - "Purch. Inv. Line"."Line Discount Amount";
                    // SalesValue := Value + "Purch. Inv. Line"."Excise Amount";   //Depreciated 17141
                    SalesValue := Value;   // 17141 added
                    Clear(TotalValue);
                    // TotalValue := SalesValue + "Purch. Inv. Line"."Tax Amount" + Insurance1 + CHARGES;  //17141 depreciated
                    TotalValue := Insurance1 + SalesValue;  //17141 added
                    NetValue := ROUND(TotalValue, 1, '=');
                    Roundoff := NetValue - TotalValue;
                    //Quantity := "Purch. Inv. Line".Quantity;

                    //TRI CA 01.11.07 Code added for Grand Total
                    tgGrandDiscount := tgGrandDiscount + "Purch. Inv. Line"."Line Discount Amount";
                    // tgGrandTax := tgGrandTax + "Purch. Inv. Line"."Tax Amount"; //17141 Depreciated
                    tgGrandVat := tgGrandVat;
                    //TRI CA 01.11.07 Stop

                    //TRI NM 160308 - Add Start
                    // IF NetValue = 0 THEN
                    //     CurrReport.SKIP;
                    //TRI NM 160308 - Add Stop
                    Clear(gstn);    //17141 added
                    Clear(lgstn);   //17141 added
                    IF cVendor.GET("Buy-from Vendor No.") THEN
                        gstn := cVendor."GST Registration No.";

                    IF loca.GET("Location Code") THEN begin
                        lgstn := loca."GST Registration No.";
                        State1 := loca."State Code";    //17141 added
                    end;


                    CAmount := 0;
                    sAmount := 0;
                    IAmount := 0;
                    UAmount := 0;
                    CAmount1 := 0;
                    sAmount1 := 0;
                    IAmount1 := 0;
                    UAmount1 := 0;


                    DetailedGSTLedgerEntry.RESET;
                    DetailedGSTLedgerEntry.SETRANGE("Document No.", "Document No.");
                    //DetailedGSTLedgerEntry.SETRANGE("No.","No.");
                    DetailedGSTLedgerEntry.SETRANGE("Document Line No.", "Line No.");
                    IF DetailedGSTLedgerEntry.FINDFIRST THEN
                        REPEAT
                            IF DetailedGSTLedgerEntry."GST Component Code" = 'CGST' THEN BEGIN
                                //CRate := DetailedGSTLedgerEntry."GST %";
                                //17141
                                if "Purch. Inv. Line"."No." = 'UD999030453' then
                                    CAmount := DetailedGSTLedgerEntry."GST Amount"
                                else
                                    //17141
                                    CAmount := ABS(DetailedGSTLedgerEntry."GST Amount");
                                CAmount1 += CAmount;
                            END;

                            IF DetailedGSTLedgerEntry."GST Component Code" = 'SGST' THEN BEGIN
                                //SRate := DetailedGSTLedgerEntry."GST %";
                                //17141
                                if "Purch. Inv. Line"."No." = 'UD999030453' then
                                    sAmount := DetailedGSTLedgerEntry."GST Amount"
                                else
                                    //17141
                                    sAmount := ABS(DetailedGSTLedgerEntry."GST Amount");
                                sAmount1 += sAmount
                            END;

                            IF DetailedGSTLedgerEntry."GST Component Code" = 'IGST' THEN BEGIN
                                //IRate := DetailedGSTLedgerEntry."GST %";
                                //17141
                                if "Purch. Inv. Line"."No." = 'UD999030453' then
                                    IAmount := DetailedGSTLedgerEntry."GST Amount"
                                else
                                    //17141
                                    IAmount := ABS(DetailedGSTLedgerEntry."GST Amount");
                                IAmount1 += IAmount;
                            END;

                            IF DetailedGSTLedgerEntry."GST Component Code" = 'UTGST' THEN BEGIN
                                //URate := DetailedGSTLedgerEntry."GST %";
                                //17141
                                if "Purch. Inv. Line"."No." = 'UD999030453' then
                                    UAmount := DetailedGSTLedgerEntry."GST Amount"
                                else
                                    //17141
                                    UAmount := ABS(DetailedGSTLedgerEntry."GST Amount");
                                UAmount1 += UAmount;
                            END;

                        UNTIL
DetailedGSTLedgerEntry.NEXT = 0;

                end;

            }

            trigger OnAfterGetRecord()
            begin

                PONo := '';
                PODate := 0D;
                ItemDesc := '';
                //sash
                cTinNo := '';
                IF NOT cVendor.GET("Purch. Inv. Header"."Buy-from Vendor No.") THEN BEGIN
                    cTinNo := '';
                END
                ELSE BEGIN
                    cVendor.GET("Purch. Inv. Header"."Buy-from Vendor No.");
                    cTinNo := cVendor."GST Registration No.";   //"T.I.N. No."; //17141
                END; //sash en
            end;

            trigger OnPreDataItem()
            begin

                //CurrReport.CREATETOTALS(Quantity,ExAmount,"Line Discount Amount",Value,"Excise Amount",SalesValue,TotalValue,NetValue);
                //17141
                // CurrReport.CREATETOTALS(Quantity, ExAmount, Value, SalesValue, TotalValue, ExciseAmt, CHARGES);//TRI C.A. 01.11.07 Add
                // CurrReport.CREATETOTALS("Purch. Inv. Line"."Amount To Vendor", "Purch. Inv. Line".Quantity);
                // CurrReport.CREATETOTALS(EXCISEAMOUNT);
                //17141
                //CurrReport.CREATETOTALS("Purch. Inv. Line"."VAT Amount")  
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group("Group name") //17141
                {
                    field("Show Detail"; tgShowDetail)
                    {
                    }
                    field("Show Summary"; tgShowSummary)
                    {
                    }
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
        "var" := 1;
        ExcelBuf.DELETEALL;
        //FilterString := "Purch. Inv. Header".GETFILTERS;
        FilterString := "Purch. Inv. Line".GETFILTERS;
    end;

    var
        // PostedStrOrderLineDetails: Record 13798;   //17141  Depreciated- Kailash sir
        Insurance1: Decimal;
        ExAmount: Decimal;
        Value: Decimal;
        SalesValue: Decimal;
        TotalValue: Decimal;
        NetValue: Decimal;
        Roundoff: Decimal;
        SqrMtr: Decimal;
        InventorySetup: Record 313;
        ItemUnitofMeasure: Record 5404;
        QtyPerC: Decimal;
        QtyPerU: Decimal;
        ItemUnitofMeasure1: Record 5404;
        DateFrom: Text[30];
        DateTo: Text[30];
        FilterString: Text[100];
        Import: Text[30];
        CompanyInfo: Record 79;
        CompanyName1: Text[100];
        "Line Discount Amount": Decimal;
        "Tax Amount": Decimal;
        Quantity: Decimal;
        tgShowDetail: Boolean;
        tgShowSummary: Boolean;
        tgGrandDiscount: Decimal;
        tgGrandVat: Decimal;
        tgGrandTax: Decimal;
        "-----TRI": Integer;
        ExcelBuf: Record 370;
        PrintToExcel: Boolean;
        ReportTitle: Text[30];
        CustNo: Text[30];
        CHARGES: Decimal;
        EXCISEAMOUNT: Decimal;
        // DetailedTaxEntryBuffer: Record 16522;   //17141  old-16522- "Detailed Tax Entry"
        VatAmt: Decimal;
        CST: Decimal;
        AdditionalTot: Decimal;
        PurchInvLine: Record 123;
        CompanyName2: Text[100];
        cVendor: Record 23;
        cVendNo: Code[20];
        cTinNo: Text[30];
        RepAuditMgt: Codeunit 50028;
        PONo: Code[20];
        PODate: Date;
        ItemDesc: Text[100];
        "------TRI": Label 'a';
        Text001: Label 'As of %1';
        Text005: Label 'Company Name';
        Text006: Label 'Report No.';
        Text007: Label 'Report Name';
        Text008: Label 'User ID';
        Text009: Label 'Print Date';
        Text011: Label 'Filters';
        Text012: Label 'Filters 2';
        Text01: Label 'Purchase Journal 123';
        Text002: Label 'Data';

        "var": Integer; //17141

        Form38: Code[30];
        PurchRcptHeader: Record 120;
        FirstItemDes: Text[100];
        LastItemNo: Code[30];
        LastDocNo: Code[30];
        CAmount: Decimal;
        sAmount: Decimal;
        IAmount: Decimal;
        UAmount: Decimal;
        CAmount1: Decimal;
        sAmount1: Decimal;
        IAmount1: Decimal;
        UAmount1: Decimal;
        DetailedGSTLedgerEntry: Record "Detailed GST Ledger Entry";   //17141
        gstn: Code[15];
        loca: Record 14;
        lgstn: Code[15];
        glname: Record 15;
        State1: Code[10];
        CalcAmttoVendor: Codeunit CalcAmttoVendor;
        chargesToVendor: Decimal;
        PstdPurchInv: Record "Purch. Inv. Line";
        TaxTransactionValue: Record "Tax Transaction Value";
        TDSAmt: Decimal;
        TDSSetup: Record "TDS Setup";
}

