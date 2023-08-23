page 50294 "SO Credit Planning"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Worksheet;
    SourceTable = "Customer Amount";
    ApplicationArea = all;
    UsageCategory = Tasks;
    layout
    {
        area(content)
        {
            group(Filters)
            {
                field("State Filter"; StateFilter)
                {
                    TableRelation = State;

                    trigger OnValidate()
                    begin
                        ApplyFilters;
                    end;
                }
                field("Zone Filter"; ZoneFilter)
                {
                    TableRelation = "Dimension Value".Code where("Dimension Code" = const('ZONE'));

                    trigger OnValidate()
                    begin
                        ApplyFilters;
                    end;
                }
                field("Dispatch Filter"; DispatchFilter)
                {
                    ShowMandatory = true;
                    TableRelation = Location.Code;

                    trigger OnValidate()
                    begin
                        GetSalesData();
                        ApplyFilters;
                    end;
                }
                field("Area Filter"; AreaFilter)
                {

                    trigger OnValidate()
                    begin
                        ApplyFilters;
                    end;
                }
                field("Customer Type Filter"; CustTypeFilter)
                {
                    TableRelation = "Customer Type".Code;

                    trigger OnValidate()
                    begin
                        ApplyFilters;
                    end;
                }
                field("Payment Term Filter"; PaymentFilter)
                {
                    ShowMandatory = true;
                    TableRelation = "Payment Terms".Code;

                    trigger OnValidate()
                    begin
                        GetSalesData();
                        ApplyFilters;
                    end;
                }

                field("Bipass Filter"; BIPassFilter)
                {
                    ShowMandatory = true;
                    trigger OnValidate()
                    begin
                        GetSalesData();
                        ApplyFilters;
                    end;
                }
                group(MakeOrderDate)
                {
                    Caption = 'Make Order Date';
                    field("Order Date Start"; OrderDateFrom)
                    {
                        Caption = 'Start';
                        ShowMandatory = true;

                        trigger OnValidate()
                        begin
                            GetSalesData();
                            ApplyFilters;
                        end;
                    }
                    field("Order Date To"; OrderDateTo)
                    {
                        Caption = 'End';
                        ShowMandatory = true;

                        trigger OnValidate()
                        begin
                            GetSalesData();
                            ApplyFilters;
                        end;
                    }

                }

            }
            repeater(Group)
            {
                Editable = false;
                field("Customer No."; Rec."Customer No.")
                {
                }
                field(Name; Rec.Name)
                {
                }
                field(Zone; Rec.Zone)
                {
                }
                field("Sales Teritory"; Rec."Area Code")
                {
                    Caption = 'Sales Teritory';
                }
                field("Customer Type"; Rec."Customer Type")
                {
                }
                field(City; Rec.City)
                {
                }
                field("City Name"; Rec."City Name")
                {
                    Editable = false;
                }
                field(State; Rec.State)
                {
                }
                field("State Name"; Rec."State Name")
                {
                }
                field("CF Limit"; Rec."CF Limit")
                {
                    Editable = false;
                }
                field("Credit Limit"; Rec."Credit Limit")
                {
                    Editable = false;
                }
                field("Total Outstanding"; Rec."Total Outstanding")
                {
                    Editable = false;
                }
                field("Total Overdue amount"; Rec."Total Overdue amount")
                {
                    Editable = false;
                }

                field("MTD Billing"; Rec."MTD Billing")
                {
                    Editable = false;
                }
                field("MTD Collection"; Rec."MTD Collection")
                {
                    Editable = false;
                }
                field("Open Order Value"; Rec."Open Order Value")
                {
                    Editable = false;
                }
                field("Open Order Value Credit"; Rec."Open Order Value Credit")
                {
                    Editable = false;
                }
                field("Release Order Value"; Rec."Release Order Value")
                {
                    Editable = false;
                }
                field("Available Credit Limit"; Rec."Available Credit Limit")
                {
                    Editable = false;
                }

            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        OrderDateFrom := CreateDateTime(20230401D, 000000T);
        OrderDateto := CreateDateTime(20240331D, 235959T);

        GetSalesData;
    end;

    var
        StateFilter, ZoneFilter, DispatchFilter, CustTypeFilter, PaymentFilter, AreaFilter : Text;
        OrderDateFrom, OrderDateTo : DateTime;
        BIPassFilter: Boolean;

    local procedure GetSalesData()
    var
        SalesHeader: Record 36;
        SalesLine: Record 37;
        recCust: Record 18;
        TotOpenAmt: Decimal;
        TotReleaseAmt: Decimal;
        CustomerAmount: Record 266;
    begin
        IF Rec.FINDFIRST THEN Rec.DELETEALL;
        SalesHeader.RESET;
        SalesHeader.SETRANGE("Document Type", SalesHeader."Document Type"::Order);

        if (OrderDateFrom <> 0DT) OR (OrderDateTo <> 0DT) then
            SalesHeader.SETFILTER("Make Order Date", '%1..%2', OrderDateFrom, OrderDateTo);

        if DispatchFilter <> '' then
            SalesHeader.SETFILTER("Location code", DispatchFilter)
        ELSE
            SalesHeader.SETRANGE("Location code");

        if PaymentFilter <> '' then
            SalesHeader.SETFILTER("Payment Terms Code", PaymentFilter)
        ELSE
            SalesHeader.SETRANGE("Payment Terms Code");

        if BIPassFilter then
            SalesHeader.SETFILTER(SalesHeader."Bypass Auto Order Process", '%1', BIPassFilter);

        SalesHeader.SetFilter("Credit Approved", '%1', false);
        REPEAT
            TotOpenAmt := 0;
            TotReleaseAmt := 0;
            IF NOT CustomerAmount.GET(0, 0, SalesHeader."Sell-to Customer No.") THEN BEGIN
                IF recCust.GET(SalesHeader."Sell-to Customer No.") THEN BEGIN
                    recCust.CalcFields("Balance (LCY)");
                    CustomerAmount."Customer No." := SalesHeader."Sell-to Customer No.";
                    CustomerAmount.Name := recCust.Name;
                    CustomerAmount.City := recCust."Post Code";
                    CustomerAmount.State := recCust."State Code";
                    CustomerAmount."Customer Type" := recCust."Customer Type";
                    CustomerAmount.Zone := recCust.Zone;
                    CustomerAmount."Sales Teritory" := recCust."Salesperson Code";
                    CustomerAmount."Area Code" := recCust."Area Code";
                    CustomerAmount."State Name" := recCust."State Desc.";
                    CustomerAmount."City Name" := recCust.City;
                    CustomerAmount."Credit Limit" := recCust."Credit Limit (LCY)";
                    CustomerAmount."CF Limit" := recCust."CF Limit";
                    CustomerAmount."Total Outstanding" := recCust."Balance (LCY)";
                    CustomerAmount."Total Overdue amount" := recCust.CalcOverdueBalance();
                    if CustomerAmount."Customer No." <> '' then
                        CustomerAmount.INSERT;
                END;
            END;
            IF CustomerAmount.GET(0, 0, SalesHeader."Sell-to Customer No.") THEN BEGIN
                SalesLine.SETRANGE("Document Type", SalesHeader."Document Type");
                SalesLine.SETRANGE("Document No.", SalesHeader."No.");
                IF SalesLine.FINDFIRST THEN
                    REPEAT
                        if SalesHeader.Status = SalesHeader.Status::Released then
                            TotReleaseAmt += SalesLine.CalcAmountToCustomer()
                        Else
                            TotOpenAmt += SalesLine.CalcAmountToCustomer();
                    UNTIL SalesLine.NEXT = 0;
                CustomerAmount."Open Order Value" += TotOpenAmt;
                CustomerAmount."Release Order Value" += TotReleaseAmt;
                CustomerAmount.UpdateAvailableCreditLimit();
                CustomerAmount.MODIFY;
            END;
        UNTIL SalesHeader.NEXT = 0;
    end;

    local procedure ApplyFilters()
    begin
        IF StateFilter <> '' THEN
            Rec.SETFILTER(State, StateFilter)
        ELSE
            rec.SetRange(State);

        IF AreaFilter <> '' THEN
            Rec.SETFILTER("Area Code", areaFilter)
        ELSE
            rec.SetRange("Area Code");

        IF CustTypeFilter <> '' THEN
            Rec.SETFILTER(Rec."Customer Type", CustTypeFilter)
        Else
            Rec.Setrange(Rec."Customer Type");


        IF ZoneFilter <> '' THEN
            Rec.SETFILTER(Rec.Zone, ZoneFilter)
        Else
            Rec.Setrange(Rec.Zone);

        CurrPage.UPDATE(True);
    end;
}