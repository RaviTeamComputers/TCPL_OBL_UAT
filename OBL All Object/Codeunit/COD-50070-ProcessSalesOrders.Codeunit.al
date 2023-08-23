codeunit 50070 "Process Sales Orders"
{

    trigger OnRun()
    var
        SalesHeader: Record 36;
        SalesOrderStatusLog: Record 50060;
        AutoReserve: Codeunit 50072;
    begin
        CLEAR(AutoReserve);

        if SalesOrderNo = '' then
            AutoReserve.RUN;

        ReportRunDateTime := CURRENTDATETIME;

        SalesHeader.RESET;
        SalesHeader.SetAutoCalcFields();
        SalesHeader.SETRANGE("Document Type", SalesHeader."Document Type"::Order);
        if SalesOrderNo <> '' then
            SalesHeader.SETRANGE("No.", SalesOrderNo);
        //SalesHeader.SetFilter("Sell-to Customer No.", 'C101364000813321');
        SalesHeader.SETRANGE("Order Date", 20230410D, TODAY);
        SalesHeader.SETFILTER("Bypass Auto Order Process", '%1', FALSE);
        SalesHeader.SETFILTER(Quantity, '>%1', 0);
        //SalesHeader.SETFILTER("No.", '%1', 'SOSKD/2223/028154');
        SalesHeader.SETFILTER(Status, '<>%1&<>%2', SalesHeader.Status::Approved, SalesHeader.Status::Released);
        //SalesHeader.SETFILTER(Status,'<>%1&<>%2&<>%3',SalesHeader.Status::Approved,SalesHeader.Status::Released,SalesHeader.Status::"Pending Approval");
        IF SalesHeader.FINDFIRST THEN
            REPEAT
                IF NOT BiPassOrder(SalesHeader) THEN
                    //IF (NOT SalesHeader."Price Approved") OR (NOT SalesHeader."Inventory Approved") OR (NOT SalesHeader."Credit Approved") THEN
                    ProcessApproval(SalesHeader);
            UNTIL SalesHeader.NEXT = 0;

        UpdateOtherFields;
    end;

    var
        ReportRunDateTime: DateTime;


    procedure CreateSalesOrderLog(SalesOrderNo: Code[20]; Status: Option " ","Credit Approved","Price Approved","Inventory Approved",Approved; DirectApprove: Boolean; ManualApproval: Boolean)
    var
        SalesOrderStatusLog: Record 50060;
        SalesOrderHistoryMgt: Codeunit 50061;
    begin
        IF ReportRunDateTime = 0DT THEN
            ReportRunDateTime := CURRENTDATETIME;
        SalesOrderStatusLog.INIT;
        SalesOrderStatusLog."Sales Order No." := SalesOrderNo;
        SalesOrderStatusLog."Entry No." := GetNextEntryNo;
        SalesOrderStatusLog.Status := Status;
        SalesOrderStatusLog."Users ID" := USERID;
        SalesOrderStatusLog."Change Datetime" := ReportRunDateTime;
        SalesOrderStatusLog."Clear Release" := DirectApprove;
        SalesOrderStatusLog.Manual := ManualApproval;
        SalesOrderStatusLog.INSERT(TRUE);
    end;

    local procedure GetNextEntryNo(): Integer
    var
        SalesOrderStatusLog: Record 50060;
    begin
        IF SalesOrderStatusLog.FINDLAST THEN
            EXIT(SalesOrderStatusLog."Entry No." + 1)
        ELSE
            EXIT(1);
    end;

    local procedure UpdateStatus(var SalesHeader: Record 36)
    var
        I: Integer;
    begin
        FOR I := 1 TO 3 DO BEGIN


        END;
    end;


    procedure ProcessApproval(var CrSalesHeader: Record 36)
    var
        SalesLines: Record 37;
        RecCustomer: Record 18;
        SmsMgt: Codeunit 50003;
        SalespersonPurchaser: Record 13;
        SalespersonPurchaser1: Record 13;
        RequiredCreditApprovalAmt: Decimal;
        AvailableCrLimit: Decimal;
        SPApprovalLimit: Decimal;
        I: Integer;
        SPCode: Code[20];
        Customer: Record 18;
        SalesSetup: Record 311;
        DirectPrice: Boolean;
        DirectInventory: Boolean;
        DirectCredit: Boolean;
        StatusChanged: Boolean;
        OldSalesHeader: Record 36;
        AmounttoCustomer: Decimal;
    begin
        OldSalesHeader.COPY(CrSalesHeader);
        //CrSalesHeader.CALCFIELDS("Approval Required");

        // AmounttoCustomer := CrSalesHeader.CalcAmountToCustomer(); //MSKS
        //Group Code 05 Direct Approved
        IF (CrSalesHeader."Group Code" in ['05', '']) AND (CrSalesHeader.Status = CrSalesHeader.Status::Open) THEN BEGIN
            CrSalesHeader.Status := CrSalesHeader.Status::Approved;
            CrSalesHeader."Price Approved" := TRUE;
            CrSalesHeader."Credit Approved" := TRUE;
            CrSalesHeader."Inventory Approved" := TRUE;
            CreateSalesOrderLog(CrSalesHeader."No.", 4, TRUE, FALSE);
            CrSalesHeader.MODIFY;
            EXIT;
        END;

        IF CrSalesHeader.Status IN [CrSalesHeader.Status::Open] THEN BEGIN
            // IF (NOT CrSalesHeader."Credit Approved") AND (NOT BiPassCreditOrder(CrSalesHeader)) THEN BEGIN //MSKS1711
            //     AvailableCrLimit := CalculateAvailableCredit(CrSalesHeader);
            //     //MESSAGE('%1-%2',AvailableCrLimit,CrSalesHeader.AmounttoCustomer);
            //     IF (AvailableCrLimit - AmounttoCustomer) > 100 THEN BEGIN
            //         CrSalesHeader.Status := CrSalesHeader.Status::"Credit Approved";
            //         CrSalesHeader."Credit Approved" := TRUE;
            //         IF StatusUpdate(OldSalesHeader."Credit Approved", CrSalesHeader."Credit Approved") THEN BEgin
            //             CreateSalesOrderLog(CrSalesHeader."No.", 1, FALSE, FALSE);
            //             DirectCredit := TRUE;
            //         end;
            //     END ELSE begin
            //         IF NOT CrSalesHeader."Direct Not Approved" THEN BEGIN
            //             CrSalesHeader.Status := CrSalesHeader.Status::"Credit Approval Pending";
            //             CrSalesHeader."Credit Approved" := FALSE;
            //         END;
            //     end;
            // END ELSE BEGIN
            //     CrSalesHeader.Status := CrSalesHeader.Status::"Credit Approval Pending";
            //     CrSalesHeader."Credit Approved" := FALSE;
            // END;
            FuncCreditApprove(CrSalesHeader, OldSalesHeader);

            // IF ISReadytoDespatch(CrSalesHeader) THEN BEGIN
            //     //CrSalesHeader.Status := CrSalesHeader.Status::"Credit Approved";
            //     //  IF DirectCredit AND DirectInventory AND DirectPrice THEN
            //     //    CreateSalesOrderLog(CrSalesHeader."No.",4,TRUE,FALSE)
            //     //   ELSE
            //     CrSalesHeader."Inventory Approved" := TRUE;
            //     IF StatusUpdate(OldSalesHeader."Inventory Approved", CrSalesHeader."Inventory Approved") THEN
            //         CreateSalesOrderLog(CrSalesHeader."No.", 3, FALSE, FALSE);
            //     DirectInventory := TRUE;
            // END ELSE BEGIN
            //     CrSalesHeader.Status := CrSalesHeader.Status::"Not in Inventory";
            //     CrSalesHeader."Inventory Approved" := FALSE;
            // END;

            FuncInventoryApprove(CrSalesHeader, OldSalesHeader);


            // IF (NOT CrSalesHeader."Approval Required") THEN BEGIN
            //     //    CrSalesHeader.Status := CrSalesHeader.Status::Approved;
            //     CrSalesHeader."Price Approved" := TRUE;
            //     IF StatusUpdate(OldSalesHeader."Price Approved", CrSalesHeader."Price Approved") THEN
            //         CreateSalesOrderLog(CrSalesHeader."No.", 2, FALSE, FALSE);
            //     DirectPrice := TRUE;
            // END ELSE BEGIN
            //     IF NOT (CrSalesHeader.Status <> CrSalesHeader.Status::"Pending Approval") THEN BEGIN
            //         CrSalesHeader.SendForApproval;
            //         IF CrSalesHeader."InventoryNot Directly Approved" THEN BEGIN
            //             CrSalesHeader.Status := CrSalesHeader.Status::"Pending Approval";
            //             CrSalesHeader."Price Approved" := FALSE;
            //         END;
            //     END;
            //     IF (CrSalesHeader.Status = CrSalesHeader.Status::Open) THEN BEGIN
            //         CrSalesHeader.SendForApproval;
            //         // IF CrSalesHeader."InventoryNot Directly Approved" THEN BEGIN
            //         CrSalesHeader.Status := CrSalesHeader.Status::"Pending Approval";
            //         CrSalesHeader."Price Approved" := FALSE;
            //         // END;
            //     END;
            // END;

            FuncPriceApprove(CrSalesHeader, OldSalesHeader);

            IF CrSalesHeader."Credit Approved" AND CrSalesHeader."Inventory Approved" AND CrSalesHeader."Price Approved" THEN
                CrSalesHeader.Status := CrSalesHeader.Status::Approved;
            CrSalesHeader.MODIFY;
            EXIT;
        END;

        IF (NOT CrSalesHeader."Credit Approved") AND (NOT BiPassCreditOrder(CrSalesHeader)) THEN BEGIN //MSKS1711
            FuncCreditApprove(CrSalesHeader, OldSalesHeader);
            //     AvailableCrLimit := CalculateAvailableCredit(CrSalesHeader);
            //     IF (AvailableCrLimit - AmounttoCustomer) > 100 THEN BEGIN
            //         CrSalesHeader.Status := CrSalesHeader.Status::"Credit Approved";
            //         CrSalesHeader."Credit Approved" := TRUE;
            //         IF StatusUpdate(OldSalesHeader."Credit Approved", CrSalesHeader."Credit Approved") THEN
            //             CreateSalesOrderLog(CrSalesHeader."No.", 1, FALSE, FALSE);
            //     END ELSE BEGIN
            //         IF NOT CrSalesHeader."Direct Not Approved" THEN BEGIN
            //             CrSalesHeader.Status := CrSalesHeader.Status::"Credit Approval Pending";
            //             CrSalesHeader."Credit Approved" := FALSE;
            //         END;
            //     END;
            // END ELSE BEGIN
            //     IF NOT CrSalesHeader."Direct Not Approved" THEN BEGIN
            //         AvailableCrLimit := CalculateAvailableCredit(CrSalesHeader);
            //         IF (AvailableCrLimit - AmounttoCustomer) < 100 THEN BEGIN
            //             CrSalesHeader."Credit Approved" := FALSE;
            //             CrSalesHeader.Status := CrSalesHeader.Status::"Credit Approval Pending";
            //         END;
            //     END;
        END;

        IF NOT CrSalesHeader."Inventory Approved" THEN BEGIN
            // IF ISReadytoDespatch(CrSalesHeader) THEN BEGIN
            //     //CrSalesHeader.Status := CrSalesHeader.Status::Approved;
            //     CrSalesHeader."Inventory Approved" := TRUE;
            //     IF StatusUpdate(OldSalesHeader."Inventory Approved", CrSalesHeader."Inventory Approved") THEN
            //         CreateSalesOrderLog(CrSalesHeader."No.", 3, FALSE, FALSE);
            // END ELSE BEGIN
            //     CrSalesHeader.Status := CrSalesHeader.Status::"Not in Inventory";
            //     CrSalesHeader."Inventory Approved" := FALSE;
            // END;
            FuncInventoryApprove(CrSalesHeader, OldSalesHeader);
        END ELSE BEGIN
            // IF ISReadytoDespatch(CrSalesHeader) THEN BEGIN
            //     CrSalesHeader."Inventory Approved" := TRUE;
            //     IF StatusUpdate(OldSalesHeader."Inventory Approved", CrSalesHeader."Inventory Approved") THEN
            //         // CrSalesHeader.Status := CrSalesHeader.Status::Approved;
            //         CreateSalesOrderLog(CrSalesHeader."No.", 3, FALSE, FALSE);
            // END ELSE BEGIN
            //     CrSalesHeader."Inventory Approved" := FALSE;
            // END;
        END;

        IF NOT CrSalesHeader."Price Approved" THEN BEGIN
            FuncPriceApprove(CrSalesHeader, OldSalesHeader);
            // IF (NOT CrSalesHeader."Approval Required") THEN BEGIN
            //     CrSalesHeader."Price Approved" := TRUE;
            //     IF StatusUpdate(OldSalesHeader."Price Approved", CrSalesHeader."Price Approved") THEN
            //         //CrSalesHeader.Status := CrSalesHeader.Status::Approved;
            //         CreateSalesOrderLog(CrSalesHeader."No.", 2, FALSE, FALSE);
            // END ELSE BEGIN
            //     CrSalesHeader.SendForApproval;
            //     IF CrSalesHeader."InventoryNot Directly Approved" THEN BEGIN
            //         CrSalesHeader.Status := CrSalesHeader.Status::"Pending Approval";
            //         CrSalesHeader."Price Approved" := FALSE;
            //     END;
            // END;
        END ELSE BEGIN


        END;

        IF CrSalesHeader."Credit Approved" AND CrSalesHeader."Inventory Approved" AND CrSalesHeader."Price Approved" THEN
            CrSalesHeader.Status := CrSalesHeader.Status::Approved;

        CrSalesHeader.MODIFY;
    end;

    procedure CheckCreditLimit()
    begin
    end;


    local procedure FuncCreditApprove(Var CrSalesHeader: Record "Sales Header"; var OldSalesHeader: Record "Sales Header") DirectCredit: Boolean
    var
        AvailableCrLimit, AmounttoCustomer : Decimal;
    Begin
        DirectCredit := false;

        if CrSalesHeader."Direct Not Approved" THEN EXIT;

        AmounttoCustomer := CrSalesHeader.CalcAmountToCustomer(true); //MSKS

        IF (NOT CrSalesHeader."Credit Approved") AND (NOT BiPassCreditOrder(CrSalesHeader)) THEN BEGIN //MSKS1711
            AvailableCrLimit := CalculateAvailableCredit(CrSalesHeader);
            IF (AvailableCrLimit - AmounttoCustomer) > 100 THEN BEGIN
                CrSalesHeader.Status := CrSalesHeader.Status::"Credit Approved";
                CrSalesHeader."Credit Approved" := TRUE;
                IF StatusUpdate(OldSalesHeader, CrSalesHeader) THEN BEgin
                    CreateSalesOrderLog(CrSalesHeader."No.", 1, FALSE, FALSE);
                    DirectCredit := TRUE;
                end;
            END ELSE begin
                IF NOT CrSalesHeader."Direct Not Approved" THEN BEGIN
                    CrSalesHeader.Status := CrSalesHeader.Status::"Credit Approval Pending";
                    CrSalesHeader."Credit Approved" := FALSE;
                END;
            end;
        END ELSE BEGIN
            CrSalesHeader.Status := CrSalesHeader.Status::"Credit Approval Pending";
            CrSalesHeader."Credit Approved" := FALSE;
        END;
    End;

    local procedure FuncInventoryApprove(Var CrSalesHeader: Record "Sales Header"; var OldSalesHeader: Record "Sales Header") DirectInventory: Boolean
    var
    begin
        IF ISReadytoDespatch(CrSalesHeader) THEN Begin
            CrSalesHeader."Inventory Approved" := TRUE;
            IF StatusUpdate(OldSalesHeader, CrSalesHeader) THEN Begin
                CreateSalesOrderLog(CrSalesHeader."No.", 3, FALSE, FALSE);
                DirectInventory := TRUE;
            END;
        end ELSE BEGIN
            CrSalesHeader.Status := CrSalesHeader.Status::"Not in Inventory";
            CrSalesHeader."Inventory Approved" := FALSE;
        END;
    end;


    local procedure FuncPriceApprove(Var CrSalesHeader: Record "Sales Header"; var OldSalesHeader: Record "Sales Header") DirectPrice: Boolean
    var
    begin
        if CrSalesHeader."InventoryNot Directly Approved" then Exit;
        CrSalesHeader.CalcFields("Approval Required");
        IF (NOT CrSalesHeader."Approval Required") THEN BEGIN
            DirectPrice := TRUE;
            CrSalesHeader."Price Approved" := TRUE;

            IF StatusUpdate(OldSalesHeader, CrSalesHeader) THEN
                CreateSalesOrderLog(CrSalesHeader."No.", 2, FALSE, FALSE);
        END ELSE BEGIN
            // IF NOT (CrSalesHeader.Status <> CrSalesHeader.Status::"Pending Approval") THEN BEGIN
            //     CrSalesHeader.SendForApproval;
            //     IF CrSalesHeader."InventoryNot Directly Approved" THEN BEGIN
            //         CrSalesHeader.Status := CrSalesHeader.Status::"Pending Approval";
            //         CrSalesHeader."Price Approved" := FALSE;
            //     END;
            // END;
            IF (OldSalesHeader.Status = OldSalesHeader.Status::Open) THEN BEGIN
                CrSalesHeader.SendForApproval;
                CrSalesHeader.Status := CrSalesHeader.Status::"Pending Approval";
                CrSalesHeader."Price Approved" := FALSE;
            END;
        END;
    end;

    procedure CalculateAvailableCredit(ExistSalesOrder: Record 36): Decimal
    var
        SalesHeader: Record 36;
        SalesLine: Record 37;
        AlreadyCreditUtiised: Decimal;
        Customer: Record 18;
        AvailCrLimitAgainstCrOrder: Decimal;
    begin
        AlreadyCreditUtiised := 0;
        AvailCrLimitAgainstCrOrder := 0;
        IF ExistSalesOrder."Discount Charges %" <> 0 THEN BEGIN
            ExistSalesOrder.CALCFIELDS("Outstanding Amount");
            //CD Order Logic Starts
            IF Customer.GET(ExistSalesOrder."Sell-to Customer No.") THEN
                Customer.CALCFIELDS("Balance (LCY)");

            SalesHeader.RESET;
            SalesHeader.SetCurrentKey("Document Type", "Sell-to Customer No.");
            SalesHeader.SetFilter("Document Type", '%1', SalesHeader."Document Type"::Order);
            SalesHeader.SETFILTER("Sell-to Customer No.", '%1', ExistSalesOrder."Sell-to Customer No.");
            SalesHeader.SETFILTER("Discount Charges %", '<>%1', 0);
            //SalesHeader.SETFILTER(Status,'%1|%2|%3|%4',SalesHeader.Status::"Credit Approved",SalesHeader.Status::Released,SalesHeader.Status::"Pending Approval",SalesHeader.Status::"Price Approved");
            SalesHeader.SETFILTER("Credit Approved", '%1', TRUE);
            IF SalesHeader.FINDFIRST THEN
                REPEAT
                    // SalesLine.RESET;
                    // SalesLine.SETRANGE("Document Type", SalesHeader."Document Type"::Order);
                    // SalesLine.SETRANGE("Document No.", SalesHeader."No.");
                    // //Exclude Charge Item
                    // //SalesLine.SetRange(Type, SalesLine.Type::Item); //Code Commented as Insurance Charges need to add in Calculation of Credit Approval - KBS/KS
                    // //Exclude Charge Item End
                    // IF SalesLine.FINDFIRST THEN
                    //     REPEAT
                    //         AlreadyCreditUtiised += SalesLine.CalcAmountToCustomer();
                    //     UNTIL SalesLine.NEXT = 0;
                    AlreadyCreditUtiised += SalesHeader.CalcAmountToCustomer(True);
                UNTIL SalesHeader.NEXT = 0;

            IF (((-1 * Customer."Balance (LCY)") >= AlreadyCreditUtiised)) THEN begin  //MSKS2408
                AvailCrLimitAgainstCrOrder := (-1 * Customer."Balance (LCY)") - AlreadyCreditUtiised;
                if AvailCrLimitAgainstCrOrder > 0 then
                    EXIT(AvailCrLimitAgainstCrOrder)
                else
                    EXIT(0)
            end ELSE
                EXIT(0);

            //CD Order Logic Ends
        END ELSE BEGIN
            IF Customer.GET(ExistSalesOrder."Sell-to Customer No.") THEN BEGIN
                Customer.CALCFIELDS("Balance (LCY)");
                IF Customer."Credit Limit (LCY)" = 0 THEN EXIT(0);
            END;

            IF ISOverdueEntryExists(ExistSalesOrder."Sell-to Customer No.") THEN EXIT(0);

            SalesHeader.RESET;
            SalesHeader.SetCurrentKey("Document Type", "Sell-to Customer No.");
            SalesHeader.SETFILTER("Document Type", '%1', SalesHeader."Document Type"::Order);
            SalesHeader.SETFILTER("Sell-to Customer No.", '%1', ExistSalesOrder."Sell-to Customer No.");
            SalesHeader.SETFILTER(Status, '%1|%2|%3|%4', SalesHeader.Status::"Credit Approved", SalesHeader.Status::Released, SalesHeader.Status::"Pending Approval", SalesHeader.Status::"Price Approved");
            IF SalesHeader.FINDFIRST THEN
                REPEAT
                    // SalesLine.RESET;
                    // SalesLine.SETFILTER("Document Type", '%1', SalesHeader."Document Type"::Order);
                    // SalesLine.SETFILTER("Document No.", '%1', SalesHeader."No.");
                    // //Exclude Charge Item
                    // //SalesLine.SetRange(Type, SalesLine.Type::Item);
                    // //Exclude Charge Item End
                    // IF SalesLine.FINDFIRST THEN
                    //     REPEAT
                    //         AlreadyCreditUtiised += SalesLine.CalcAmountToCustomer();
                    //     UNTIL SalesLine.NEXT = 0;
                    AlreadyCreditUtiised += SalesHeader.CalcAmountToCustomer(true);
                UNTIL SalesHeader.NEXT = 0;
            IF (Customer."Credit Limit (LCY)" - (Customer."Balance (LCY)" + AlreadyCreditUtiised)) > 0 THEN //MSKS2408
                EXIT(Customer."Credit Limit (LCY)" - (Customer."Balance (LCY)" + AlreadyCreditUtiised)) ELSE
                EXIT(0);
        END;
    end;

    local procedure ISOverdueEntryExists(CustNo: Code[20]): Boolean
    var
        CustLedgerEntry: Record 21;
    begin
        CustLedgerEntry.RESET;
        CustLedgerEntry.SetCurrentKey("Customer No.", "Applies-to ID", Open, Positive, "Due Date");
        CustLedgerEntry.SETRANGE("Customer No.", CustNo);
        CustLedgerEntry.SETRANGE(Open, True);
        CustLedgerEntry.SETFILTER("Due Date", '..%1', TODAY);
        CustLedgerEntry.SETFILTER("Document Type", '%1', CustLedgerEntry."Document Type"::Invoice);
        IF CustLedgerEntry.FINDFIRST THEN
            EXIT(TRUE)
    end;


    procedure ISReadytoDespatch(var CrSalesHeader: Record 36): Boolean
    var
        SalesLine: Record 37;
        NotInInventory: Boolean;
    begin
        IF CrSalesHeader."Location Code" IN ['DP-MORBI', 'DP-BIKANER'] THEN
            EXIT(TRUE);

        SalesLine.RESET;
        SalesLine.SETRANGE("Document Type", SalesLine."Document Type"::Order);
        SalesLine.SETRANGE("Document No.", CrSalesHeader."No.");
        SalesLine.SETFILTER("Outstanding Quantity", '<>%1', 0);
        //Exclude Charge Item
        SalesLine.SetRange(Type, SalesLine.Type::Item);
        //Exclude Charge Item End
        IF SalesLine.FINDFIRST THEN BEGIN
            REPEAT
                NotInInventory := FALSE;
                SalesLine.CALCFIELDS("Reserved Quantity");
                IF SalesLine."Outstanding Quantity" <> SalesLine."Reserved Quantity" THEN
                    NotInInventory := TRUE;
            UNTIL (SalesLine.NEXT = 0) OR NotInInventory;
        END;
        EXIT(NOT NotInInventory);
    end;

    local procedure BiPassOrder(var SalesHeader: Record 36): Boolean
    var
        Bipass: Boolean;
        OLSSalesHEader: Record 36;
    begin
        //OLSSalesHEader.COPY(SalesHeader);
        //IF (SalesHeader.Status = SalesHeader.Status::"Credit Approved") AND (SalesHeader."Customer Type" IN ['GET','SET','PET']) THEN
        //EXIT(TRUE);

        //IF (SalesHeader.State = '19') AND(SalesHeader.Status = SalesHeader.Status::Open) THEN EXIT(TRUE);
        //  Bipass:= TRUE;

        //IF (SalesHeader."Discount Charges %" <>0) AND (SalesHeader.Status = SalesHeader.Status::Open) THEN EXIT(TRUE);
        //Bipass:= TRUE;
        //IF (SalesHeader."Group Code" = '05') AND (SalesHeader.Status = SalesHeader.Status::Approved) THEN EXIT(TRUE);
    end;

    local procedure StatusUpdate(OLDStatus: Boolean; NewStatus: Boolean): Boolean
    begin
        IF OLDStatus <> NewStatus THEN
            EXIT(TRUE);
    end;

    local procedure StatusUpdate(OldSalesHeader: Record "Sales Header"; NewSalesHeader: Record "Sales Header"): Boolean
    begin
        IF (OldSalesHeader."Credit Approved" <> NewSalesHeader."Credit Approved") OR
            (OldSalesHeader."Price Approved" <> NewSalesHeader."Price Approved") or
            (OldSalesHeader."Inventory Approved" <> NewSalesHeader."Inventory Approved") then
            EXIT(TRUE);
    end;

    local procedure UpdateOtherFields()
    var
        SalesORderStatusLog: Query 50062;
        RecSalesOrderStatusLog: Record 50060;
        Diff: DateTime;
        pDiff: DateTime;
        cDiff: DateTime;
        iDiff: DateTime;
        OrgRecSalesOrderStatusLog: Record 50060;
    begin
        CLEAR(SalesORderStatusLog);
        SalesORderStatusLog.SETFILTER(SalesORderStatusLog.OrderDateTimeFilter, '>=%1', CREATEDATETIME(TODAY - 5, 0T));
        SalesORderStatusLog.OPEN;
        WHILE SalesORderStatusLog.READ DO BEGIN
            Diff := 0DT;

            IF OrgRecSalesOrderStatusLog.GET(SalesORderStatusLog.Min_Entry_No) THEN BEGIN
                IF NOT OrgRecSalesOrderStatusLog.Processed THEN BEGIN
                    OrgRecSalesOrderStatusLog.CALCFIELDS("Credit Approved Time", "Inventory Approved Time", "Price Approved Time");
                    cDiff := OrgRecSalesOrderStatusLog."Credit Approved Time";
                    pDiff := OrgRecSalesOrderStatusLog."Price Approved Time";
                    iDiff := OrgRecSalesOrderStatusLog."Inventory Approved Time";

                    Diff := OrgRecSalesOrderStatusLog."Change Datetime";
                    OrgRecSalesOrderStatusLog."Credit Approved" := (Diff = cDiff);
                    OrgRecSalesOrderStatusLog."Price Approved" := (Diff = pDiff);
                    OrgRecSalesOrderStatusLog."Inventory Approved" := (Diff = iDiff);
                    IF OrgRecSalesOrderStatusLog.Status = OrgRecSalesOrderStatusLog.Status::"All Clear" THEN BEGIN
                        OrgRecSalesOrderStatusLog."Credit Approved" := TRUE;
                        OrgRecSalesOrderStatusLog."Price Approved" := TRUE;
                        OrgRecSalesOrderStatusLog."Inventory Approved" := TRUE;
                    END;
                    OrgRecSalesOrderStatusLog.Processed := TRUE;
                    OrgRecSalesOrderStatusLog.MODIFY;
                END;
            END;
        END;
    end;

    procedure SetSalesOrder(DocNo: code[20])
    var
        myInt: Integer;
    begin
        SalesOrderNo := DocNo;
    end;

    local procedure BiPassCreditOrder(var SalesHeader: Record 36): Boolean
    var
        Bipass: Boolean;
        OLSSalesHEader: Record 36;
    begin
        //IF (SalesHeader."Discount Charges %" <>0) AND (SalesHeader.Status = SalesHeader.Status::Open) THEN EXIT(TRUE);
        //IF (SalesHeader."Discount Charges %" <>0) THEN EXIT(TRUE);
        EXIT(FALSE);
    end;

    var
        SalesOrderNo: Code[20];
}
