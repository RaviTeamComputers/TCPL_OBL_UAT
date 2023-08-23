pageextension 50409 pageextension50409 extends "Purchase Statistics"
{
    layout
    {
        moveafter("TDS Amount"; "TotalPurchLineLCY.Amount")

        addafter(Quantity)
        {
            field(TCSAmt; TCSAmt)
            {
                Caption = 'TCS Amt';
                Editable = false;
                ApplicationArea = All;
            }
            /* field("Purchase Value"; TotalAmount1 + ABS(ABS(TotalGSTInvoiced) - TotalAdvGSTInvoiced) + TotalPurchLine."Charges To Vendor" - TCSAmt + TCSAmt)
             {
             }*/
        }
        addafter("TotalPurchLineLCY.Amount")
        {
            field(TotalAMTInclTDS; TotalInclTaxAmount + TDSAmt)
            {
                Caption = 'Total Amount Incl TDS';
                Editable = false;
                ApplicationArea = all;
            }
            /* field(TotalPurchLine."Line Amount"+ABS(ABS(TotalGSTInvoiced) - TotalAdvGSTInvoiced);
                 TotalPurchLine."Line Amount"+ABS(ABS(TotalGSTInvoiced) - TotalAdvGSTInvoiced))
             {
                 AutoFormatExpression = "Currency Code";
                 // AutoFormatType = 1;
                 Caption = 'Total';
                 Editable = false;
                 Importance = Promoted;
             }*/
        }
    }

    trigger OnOpenPage()
    var
        purchLine: Record "Purchase Line";
        CalcStatistics: Codeunit "Calculate Statistics";

    begin
        TDSAmt := 0;
        purchLine.SetRange("Document Type", rec."Document Type");
        purchLine.SetRange("Document No.", rec."No.");
        if purchLine.FindFirst() then
            REPEAT
                TDSAmt += TDSCodeunit.GetLineTDSAmt(purchLine);
            until purchLine.Next() = 0;

        CalcStatistics.GetPurchaseStatisticsAmount(Rec, TotalInclTaxAmount);
    end;

    var
        TotalInclTaxAmount, TCSAmt, TDSAmt : Decimal;
        TotalPurchLine: Record "Purchase Line";
        TDSCodeunit: Codeunit CalcAmttoVendor;


    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    PurchSetup.GET;
    AllowInvDisc :=
      NOT (PurchSetup."Calc. Inv. Discount" AND VendInvDiscRecExists("Invoice Disc. Code"));
    AllowVATDifference :=
      PurchSetup."Allow VAT Difference" AND
      NOT ("Document Type" IN ["Document Type"::Quote,"Document Type"::"Blanket Order"]);
    CurrPage.EDITABLE := AllowVATDifference OR AllowInvDisc;
    SetVATSpecification;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..8
    TCSAmt:=0;
    TCSAmt := CalculateTCSAmt;
    */
    //end;
}

