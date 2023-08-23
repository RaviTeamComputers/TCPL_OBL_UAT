report 50068 "Consumption Report1"
{
    // SSD36133017149

    DefaultLayout = RDLC;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;
    RDLCLayout = '.\ReportLayouts\ConsumptionReport1.rdl';


    dataset
    {
        dataitem(Item; 27)
        {
            DataItemTableView = SORTING("Inventory Posting Group");
            PrintOnlyIfDetail = true;
            RequestFilterFields = "Inventory Posting Group", "Gen. Prod. Posting Group", "No.";
            column(FromDate; FORMAT(FromDate))
            {
            }
            column(ToDate; FORMAT(ToDate))
            {
            }
            column(CompName1; CompanyInfo.Name)
            {
            }
            column(CompName2; CompanyInfo."Name 2")
            {
            }
            column(InventoryPostingGroup_Item; Item."Inventory Posting Group")
            {
            }
            column(Filters; Filters)
            {
            }
            column(InventoryPGName; InventoryPGName)
            {
            }
            dataitem("Item Ledger Entry"; 32)
            {
                CalcFields = "Cost Amount (Actual)", "Item Base Unit of Measure";
                DataItemLink = "Item No." = FIELD("No."),
                               "Location Code" = FIELD("Location Filter");
                DataItemTableView = SORTING("Item No.", "Entry Type", "Variant Code", "Drop Shipment", "Location Code", "Posting Date");
                RequestFilterFields = "Production Plant Code", "Global Dimension 2 Code", Quantity;
                column(GlobalDimension2Code_ItemLedgerEntry; "Item Ledger Entry"."Global Dimension 2 Code")
                {
                }
                column(ItemNo_ItemLedgerEntry; "Item Ledger Entry"."Item No.")
                {
                }
                column(PostingDate_ItemLedgerEntry; "Item Ledger Entry"."Posting Date")
                {
                }
                column(DocumentNo_ItemLedgerEntry; "Item Ledger Entry"."Document No.")
                {
                }
                column(Desc1; Item.Description)
                {
                }
                column(Desc2; Item."Description 2")
                {
                }
                column(ItemBaseUnitofMeasure_ItemLedgerEntry; "Item Ledger Entry"."Item Base Unit of Measure")
                {
                }
                column(GPPG; Item."Gen. Prod. Posting Group")
                {
                }
                column(ItemCategoryCode_ItemLedgerEntry; "Item Ledger Entry"."Item Category Code")
                {
                }
                column(GlobalDimension1Code_ItemLedgerEntry; "Item Ledger Entry"."Global Dimension 1 Code")
                {
                }
                column(Quantity_ItemLedgerEntry; ABS("Item Ledger Entry".Quantity))
                {
                }
                column(Quantity; ("Item Ledger Entry".Quantity))
                {
                }
                column(IssueRate; "Item Ledger Entry"."Cost Amount (Actual)" / "Item Ledger Entry".Quantity)
                {
                }
                column(CostAmtActual; ABS("Item Ledger Entry"."Cost Amount (Actual)"))
                {
                }
                column(DimName; DimName)
                {
                }
                column(CatDes; ItemCat.Description)
                {
                }
                column(ProdGrp; '')  //17141  Item Ledger Entry"."Product Group Code"
                {
                }
                column(ProdGrpDes; ProductGrp.Description)
                {
                }
                column(BranchCode; "Item Ledger Entry"."Global Dimension 1 Code")
                {
                }
                column(DepartCode; "Item Ledger Entry"."Global Dimension 2 Code")
                {
                }
                column(EntryNo; "Item Ledger Entry"."Entry No.")
                {
                }
                column(LocCode; "Item Ledger Entry"."Location Code")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    IF ItemCat.GET("Item Ledger Entry"."Item Category Code") THEN;
                    // IF ProductGrp.GET("Item Ledger Entry"."Product Group Code") THEN;  //17141
                    IF NOT (("Entry Type" = "Entry Type"::Consumption) OR
                      (("Entry Type" = "Entry Type"::"Negative Adjmt.") AND ("Direct Consumption Entries" = TRUE))) THEN
                        CurrReport.SKIP;

                    DimensionValue.RESET;
                    DimensionValue.SETFILTER("Dimension Code", '%1', 'MACHINE');
                    DimensionValue.SETRANGE(Code, "Machine Code");
                    IF DimensionValue.FIND('-') THEN
                        DimName := DimensionValue.Name
                    ELSE
                        DimName := '';
                    /* //TMC::6823


                    IF PrintToExcel THEN BEGIN
                    //  ExcelBuf.AddColumn(InventoryPGName,FALSE,'',TRUE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn(Item."No.",FALSE,'',TRUE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn("Item Ledger Entry"."Posting Date",FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn("Item Ledger Entry"."Document No.",FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn("Item Ledger Entry"."Item No.",FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn(Item.Description + Item."Description 2",FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn("Item Ledger Entry"."Unit of Measure Code",FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn("Item Ledger Entry"."Global Dimension 2 Code",FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn(Item."Gen. Prod. Posting Group",FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn("Item Ledger Entry"."Item Category Code",FALSE,'',FALSE,FALSE,FALSE,'');
                      IF ItemCat.GET(Item."Item Category Code")  THEN
                        CatDesc:=ItemCat.Description;
                      ExcelBuf.AddColumn(CatDesc,FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn(Item."Product Group Code",FALSE,'',FALSE,FALSE,FALSE,'');
                      IF ProductGrp.GET(Item."Item Category Code",Item."Product Group Code") THEN
                        ProdDesc:=ProductGrp.Description;
                      ExcelBuf.AddColumn(ProdDesc,FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn("Item Ledger Entry"."Production Plant Code",FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn(ABS("Item Ledger Entry".Quantity),FALSE,'',FALSE,FALSE,FALSE,'');
                      //TRI S.B. 030308 START
                      //ExcelBuf.AddColumn(ABS("Item Ledger Entry"."Cost Amount (Actual)"),FALSE,'',FALSE,FALSE,FALSE,'');
                      //TRI S.B. 030308 STOP
                      ExcelBuf.AddColumn("Item Ledger Entry".Quantity,FALSE,'',FALSE,FALSE,FALSE,'');
                      //ExcelBuf.AddColumn(ConQty,FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn("Item Ledger Entry"."Cost Amount (Actual)",FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn("Item Ledger Entry"."Cost Amount (Actual)"/"Item Ledger Entry".Quantity,FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn(USERID,FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn("Item Ledger Entry"."Global Dimension 1 Code",FALSE,'',FALSE,FALSE,FALSE,'');
                      IF "Item Ledger Entry"."Entry Type" = "Item Ledger Entry"."Entry Type" :: Consumption THEN
                      ExcelBuf.AddColumn("Item Ledger Entry"."Global Dimension 1 Code",FALSE,'',FALSE,FALSE,FALSE,'')
                      ELSE
                        ExcelBuf.AddColumn("Item Ledger Entry"."Global Dimension 2 Code",FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn("Item Ledger Entry"."Entry No.",FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn("Item Ledger Entry"."Location Code",FALSE,'',FALSE,FALSE,FALSE,'');
                      ExcelBuf.AddColumn(DimName,FALSE,'',FALSE,FALSE,FALSE,'');

                      ExcelBuf.NewRow;
                    END;
                    */

                    /*
                     //TMC::6823

                    IF PrintToExcel  THEN
                    BEGIN
                        ExcelBuf.AddColumn(InventoryPGName,FALSE,'',TRUE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn('Group Total Value',FALSE,'',TRUE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(ABS("Item Ledger Entry".Quantity),FALSE,'',TRUE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(ABS("Item Ledger Entry"."Cost Amount (Actual)"),FALSE,'',TRUE,FALSE,FALSE,'');
                        ExcelBuf.NewRow;
                    END;

                    */

                    /*
                    //TMC::6823

                    IF PrintToExcel THEN
                    BEGIN
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(' ',FALSE,'',FALSE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn('Total Value',FALSE,'',TRUE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(ABS("Item Ledger Entry".Quantity),FALSE,'',TRUE,FALSE,FALSE,'');
                        ExcelBuf.AddColumn(ABS("Item Ledger Entry"."Cost Amount (Actual)"),FALSE,'',TRUE,FALSE,FALSE,'');
                        ExcelBuf.NewRow;
                    END;

                    */

                end;

                trigger OnPreDataItem()
                begin
                    SETRANGE("Posting Date", FromDate, ToDate);
                end;
            }

            trigger OnAfterGetRecord()
            begin

                /*ConQty := 0;
                ile.RESET;
                ile.SETCURRENTKEY("Item No.", "Posting Date");
                ile.SETRANGE("Item No.",Item."No.");
                ile.SETRANGE("Posting Date",FromDate,ToDate);
                IF Item.GETFILTER(Item."Location Filter") <> '' THEN
                  ile.SETFILTER("Location Code",Item.GETFILTER(Item."Location Filter"));
                IF ile.FIND('-') THEN REPEAT
                  IF ile."Entry Type" = ile."Entry Type"::Consumption THEN BEGIN
                    ConQty += ile.Quantity;
                  END;
                  IF (ile."Entry Type" = ile."Entry Type"::"Negative Adjmt.") AND (ile."Direct Consumption Entries") THEN BEGIN
                    ConQty += ile.Quantity;
                  END;
                UNTIL ile.NEXT = 0;
                */

                InventoryPGName := '';
                IF InventoryPG.GET(Item."Inventory Posting Group") THEN
                    InventoryPGName := InventoryPG.Description;

            end;

            trigger OnPreDataItem()
            begin
                CompanyInfo.GET;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group("group name")
                {
                    field("From Date"; FromDate)
                    {
                    }
                    field("To Date"; ToDate)
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

    trigger OnPostReport()
    begin

        IF PrintToExcel THEN
            CreateExcelbook;
        //RepAuditMgt.CreateAudit(50068)
    end;

    trigger OnPreReport()
    begin

        IF (FromDate = 0D) OR (ToDate = 0D) THEN
            ERROR(Text1014);

        Filters := Filters + 'From Date :' + FORMAT(FromDate) + ' To Date :' + FORMAT(ToDate) + Item.GETFILTERS;
        Filters := "Item Ledger Entry".GETFILTERS;

        IF PrintToExcel THEN
            MakeExcelInfo;
    end;

    var
        CompanyInfo: Record 79;
        FromDate: Date;
        ToDate: Date;
        InventorySetup: Record 313;
        DimensionValue: Record 349;
        Plant: Code[1];
        Filters: Text[250];
        IssueValue: Decimal;
        Summary: Boolean;
        InventoryPG: Record 94;
        InventoryPGName: Text[100];
        GeneralPG: Text[100];
        PrintToExcel: Boolean;
        ExcelBuf: Record 370 temporary;
        PlantDesc: Text[50];
        ItemCat: Record 5722;
        CatDesc: Text[50];
        ProductGrp: Record "Product Group New";
        ProdDesc: Text[50];
        ConQty: Decimal;
        ile: Record 32;
        item1: Record 27;
        DimName: Text[100];
        // RepAuditMgt: Codeunit 50028;
        Text1000: Label 'Period: %1';
        Text1001: Label 'Consumption Report';
        Text1002: Label 'Data';
        Text1005: Label 'Company Name';
        Text1006: Label 'Report No.';
        Text1007: Label 'Report Name';
        Text1008: Label 'User ID';
        Text1009: Label 'Print Date';
        Text1011: Label 'Period Filter';
        Text1012: Label 'Branch Filter';
        Text1014: Label 'From Date and To Date is mandatory.';


    procedure MakeExcelInfo()
    begin
        /*    //TMC::6823
        ExcelBuf.SetUseInfoSheed;
        ExcelBuf.AddInfoColumn(FORMAT(Text1005),FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn(COMPANYNAME,FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text1007),FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn(FORMAT(Text1001),FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text1006),FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn(REPORT::"Freight Report SKD",FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text1008),FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn(USERID,FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text1009),FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn(TODAY,FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text1011),FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn(FORMAT(FromDate) + '..' + FORMAT(ToDate),FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn('Filters',FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn(Item.GETFILTERS,FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn("Item Ledger Entry".GETFILTERS,FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;

        ExcelBuf.ClearNewRow;
        MakeExcelDataHeader;
         */

    end;

    local procedure MakeExcelDataHeader()
    begin
        /* //TMC::6823
        ExcelBuf.AddColumn('Inventory Posting Grp',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Date',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Issue Slip No.',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Item Code',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Description',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('UOM',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Dept Code',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('General Posting Grp',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Cat Code',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Cat Description',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Prod GrpCode',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Product Decription',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Plant Dimension',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('ConQty',FALSE,'',TRUE,FALSE,TRUE,'');
        // TRI S.B. 030308 START
        //ExcelBuf.AddColumn('Issue Value',FALSE,'',TRUE,FALSE,TRUE,'');
        // TRI S.B. 030308 STOP
        ExcelBuf.AddColumn('ConQty',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('A_Issue Value',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Unit Ratee',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('User ID',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Branch Code',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Department Code',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Entry No.',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Location Code',FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn('Machine Code',FALSE,'',TRUE,FALSE,TRUE,'');

        ExcelBuf.NewRow;
        */

    end;

    procedure CreateExcelbook()
    begin
        /*
         //TMC::6823
        ExcelBuf.CreateBook;
        ExcelBuf.CreateSheet(Text1002,Text1001,COMPANYNAME,USERID);
        ExcelBuf.GiveUserControl;
        ERROR('');
        */

    end;
}

