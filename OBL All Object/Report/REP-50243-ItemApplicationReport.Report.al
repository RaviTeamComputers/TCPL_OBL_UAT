report 50243 "Item Application Report"
{
    DefaultLayout = RDLC;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;
    RDLCLayout = '.\ReportLayouts\ItemApplicationReport.rdl';

    dataset
    {
        dataitem("Item Application Entry"; "Item Application Entry")
        {
            DataItemTableView = SORTING("Entry No.")
                                WHERE("Item Code1" = FILTER('*W'),
                                      "Out Bond Entries" = FILTER('<>BRK*&<>SAM*&<>T*'));
            RequestFilterFields = "Posting Date";
            column(PostingDate; FORMAT("Posting Date"))
            {
            }
            column(LocationCode; Location)
            {
            }
            column(ItemNo; "Item Code1")
            {
            }
            column(Blank; '')
            {
            }
            column(InBondEntry; "In Bond Entries")
            {
            }
            column(PostedPurchInvoice; "Posted Purch Invoice")
            {
            }
            column(VendName; "Vend Name")
            {
            }
            column(VendInv; "Vend Inv")
            {
            }
            column(OutBondEntry; "Out Bond Entries")
            {
            }
            column(CustName; "Cust Name")
            {
            }
            column(Quantity; Quantity)
            {
            }
            column(itemdesc; desc)
            {
            }
            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "No." = FIELD("Item Code1"),
                               "Document No." = FIELD("Out Bond Entries");
                DataItemTableView = WHERE(Type = FILTER(Item));
                column(AmountToCustomer; "Sales Invoice Line"."Line Amount")
                {
                }
                column(RATE; RATE)
                {
                }

                trigger OnAfterGetRecord()
                var
                    //16225 Start
                    IGSTAmt: Decimal;
                    IGSTper: Decimal;
                    SGSTAmt: Decimal;
                    SGSTper: Decimal;
                    CGSTAmt: Decimal;
                    CGSTper: Decimal;
                    GSTBaseAmt: Decimal;
                    TotalAmount: Decimal;
                    RecDGLE: Record "Detailed GST Ledger Entry";
                    AmttoCustomer: Decimal;
                begin
                    IGSTAmt := 0;
                    IGSTper := 0;
                    SGSTAmt := 0;
                    SGSTper := 0;
                    CGSTAmt := 0;
                    CGSTper := 0;
                    GSTBaseAmt := 0;
                    TotalAmount := 0;

                    RecDGLE.RESET();
                    RecDGLE.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
                    RecDGLE.SetRange("Document Line No.", "Sales Invoice Line"."Line No.");
                    RecDGLE.SETRANGE("GST Component Code", 'IGST');
                    IF RecDGLE.FINDFIRST THEN BEGIN
                        REPEAT
                            IGSTAmt += abs(RecDGLE."GST Amount");
                        UNTIL RecDGLE.NEXT = 0;
                    END;
                    RecDGLE.RESET();
                    RecDGLE.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
                    RecDGLE.SetRange("Document Line No.", "Sales Invoice Line"."Line No.");
                    RecDGLE.SETRANGE("GST Component Code", 'SGST');
                    IF RecDGLE.FINDFIRST THEN BEGIN
                        REPEAT
                            SGSTAmt += abs(RecDGLE."GST Amount");
                        UNTIL RecDGLE.NEXT = 0;
                    END;
                    RecDGLE.RESET();
                    RecDGLE.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
                    RecDGLE.SetRange("Document Line No.", "Sales Invoice Line"."Line No.");
                    RecDGLE.SETRANGE("GST Component Code", 'CGST');
                    IF RecDGLE.FINDFIRST THEN BEGIN
                        REPEAT
                            CGSTAmt += abs(RecDGLE."GST Amount");
                        UNTIL RecDGLE.NEXT = 0;
                    END;
                    RecDGLE.RESET();
                    RecDGLE.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
                    RecDGLE.SetRange("Document Line No.", "Sales Invoice Line"."Line No.");
                    RecDGLE.SETRANGE("GST Component Code", 'CGST');
                    IF RecDGLE.FINDFIRST THEN BEGIN
                        repeat
                            GSTBaseAmt += abs(RecDGLE."GST Base Amount");
                        until RecDGLE.next = 0;
                    END;
                    RecDGLE.RESET();
                    RecDGLE.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
                    RecDGLE.SetRange("Document Line No.", "Sales Invoice Line"."Line No.");
                    RecDGLE.SETRANGE("GST Component Code", 'IGST');
                    IF RecDGLE.FINDFIRST THEN BEGIN
                        repeat
                            GSTBaseAmt += abs(RecDGLE."GST Base Amount");
                        until RecDGLE.Next() = 0;
                    END;
                    TotalAmount += "Sales Invoice Line"."Line Amount";

                    AmttoCustomer := TotalAmount + CGSTAmt + SGSTAmt + IGSTAmt;
                    //16225 End
                    IF Quantity <> 0 THEN
                        RATE := AmttoCustomer / "Quantity in Sq. Mt."
                end;
            }
            dataitem("Purch. Inv. Line"; "Purch. Inv. Line")
            {
                DataItemLinkReference = "Item Application Entry";
                DataItemTableView = WHERE(Type = FILTER(Item));
                DataItemLink = "Document No." = FIELD("Posted Purch Invoice"),
                               "No." = FIELD("Item Code1");
                //16225  column(TaxAmount; "Purch. Inv. Line"."Tax Amount")
                column(TaxAmount; 0)
                {
                }
                //16225 column(Exciseamt; "Purch. Inv. Line"."Excise Amount")
                column(Exciseamt; 0)
                {
                }
                //16225 column(Amttovend; "Purch. Inv. Line"."Amount To Vendor")
                column(Amttovend; Amttovendor)
                {
                }
                column(purqty; "Purch. Inv. Line"."Quantity (Base)")
                {
                }
                column(qpre; "Purch. Inv. Line"."Qty. per Unit of Measure")
                {
                }
                trigger OnAfterGetRecord()
                begin

                    //16225 Start
                    PRIGSTAmt := 0;
                    PRIGSTper := 0;
                    PRSGSTAmt := 0;
                    PRSGSTper := 0;
                    PRCGSTAmt := 0;
                    PRCGSTper := 0;
                    PRGSTBaseAmt := 0;
                    PRTotalAmount := 0;

                    PILDetailGSTEntry.RESET();
                    PILDetailGSTEntry.SETRANGE("Document No.", "Purch. Inv. Line"."Document No.");
                    PILDetailGSTEntry.SetRange("Document Line No.", "Purch. Inv. Line"."Line No.");
                    PILDetailGSTEntry.SETRANGE("GST Component Code", 'IGST');
                    IF PILDetailGSTEntry.FINDFIRST THEN BEGIN
                        REPEAT
                            PRIGSTAmt += abs(PILDetailGSTEntry."GST Amount");
                        UNTIL PILDetailGSTEntry.NEXT = 0;
                    END;
                    PILDetailGSTEntry.RESET();
                    PILDetailGSTEntry.SETRANGE("Document No.", "Purch. Inv. Line"."Document No.");
                    PILDetailGSTEntry.SetRange("Document Line No.", "Purch. Inv. Line"."Line No.");
                    PILDetailGSTEntry.SETRANGE("GST Component Code", 'SGST');
                    IF PILDetailGSTEntry.FINDFIRST THEN BEGIN
                        REPEAT
                            PRSGSTAmt += abs(PILDetailGSTEntry."GST Amount");
                        UNTIL PILDetailGSTEntry.NEXT = 0;
                    END;
                    PILDetailGSTEntry.RESET();
                    PILDetailGSTEntry.SETRANGE("Document No.", "Purch. Inv. Line"."Document No.");
                    PILDetailGSTEntry.SetRange("Document Line No.", "Purch. Inv. Line"."Line No.");
                    PILDetailGSTEntry.SETRANGE("GST Component Code", 'CGST');
                    IF PILDetailGSTEntry.FINDFIRST THEN BEGIN
                        REPEAT
                            PRCGSTAmt += abs(PILDetailGSTEntry."GST Amount");
                        UNTIL PILDetailGSTEntry.NEXT = 0;
                    END;
                    PILDetailGSTEntry.RESET();
                    PILDetailGSTEntry.SETRANGE("Document No.", "Purch. Inv. Line"."Document No.");
                    PILDetailGSTEntry.SetRange("Document Line No.", "Purch. Inv. Line"."Line No.");
                    PILDetailGSTEntry.SETRANGE("GST Component Code", 'CGST');
                    IF PILDetailGSTEntry.FINDFIRST THEN BEGIN
                        repeat
                            PRGSTBaseAmt += abs(PILDetailGSTEntry."GST Base Amount");
                        until PILDetailGSTEntry.next = 0;
                    END;
                    PILDetailGSTEntry.RESET();
                    PILDetailGSTEntry.SETRANGE("Document No.", "Purch. Inv. Line"."Document No.");
                    PILDetailGSTEntry.SetRange("Document Line No.", "Purch. Inv. Line"."Line No.");
                    PILDetailGSTEntry.SETRANGE("GST Component Code", 'IGST');
                    IF PILDetailGSTEntry.FINDFIRST THEN BEGIN
                        repeat
                            PRGSTBaseAmt += abs(PILDetailGSTEntry."GST Base Amount");
                        until PILDetailGSTEntry.Next() = 0;
                    END;
                    PRTotalAmount += "Purch. Inv. Line"."Line Amount";
                    Amttovendor := PRTotalAmount + PRIGSTAmt + PRCGSTAmt + PRSGSTAmt;
                    //16225 End
                end;
            }

            trigger OnAfterGetRecord()
            var
            begin

                IF itemrec.GET("Item Code1") THEN
                    desc := itemrec.Description;
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

    var
        itemrec: Record Item;
        PILDetailGSTEntry: Record "Detailed GST Ledger Entry";
        desc: Text[100];
        Salevalue: Decimal;
        xxrec: Record "Item Application Entry";
        RATE: Decimal;
        Amttovendor: Decimal;
        PRIGSTAmt: Decimal;
        PRIGSTper: Decimal;
        PRSGSTAmt: Decimal;
        PRSGSTper: Decimal;
        PRCGSTAmt: Decimal;
        PRCGSTper: Decimal;
        PRGSTBaseAmt: Decimal;
        PRTotalAmount: Decimal;
        RecDGLE: Record "Detailed GST Ledger Entry";
}

