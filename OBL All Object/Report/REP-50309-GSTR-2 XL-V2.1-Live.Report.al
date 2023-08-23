report 50309 "GSTR-2 XL-V2.1-Live"
{
    DefaultLayout = RDLC;
    RDLCLayout = '.\ReportLayouts\GSTR2XLV21LiveN.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;


    dataset
    {

        dataitem("Detailed GST Ledger Entry"; "Detailed GST Ledger Entry")

        {
            DataItemTableView = SORTING("Document No.", "Posting Date")
                                WHERE("Transaction Type" = FILTER(Purchase));
            RequestFilterFields = "Posting Date", "Location  Reg. No.", "Document No.";
            column(DocumentNo; "Document No.")
            {
            }
            column(DocumentLineNo; "Document Line No.")
            {
            }
            column(GSTComponentCode; "GST Component Code")
            {
            }
            column(GSTBaseAmount; "GST Base Amount")
            {
            }
            column(GSTRate; "GST %")
            {
            }
            column(GSTAmount; "GST Amount")
            {
            }
            column(CGST; CGST)
            {
            }
            column(SGST; SGST)
            {
            }
            column(IGST; IGST)
            {
            }
            column(CGSTRate; CGSTRate)
            {
            }
            column(SGSTRate; SGSTRate)
            {
            }
            column(IGSTRate; IGSTRate)
            {
            }
            column(PostingDate; FORMAT("Posting Date"))
            {
            }
            column(UnitofMeasure; "Unit of Measure")
            {
            }
            column(Quantity; Quantity)
            {
            }
            column(LocationRegNo; "Location  Reg. No.")
            {
            }
            column(GSTVendorType; "GST Vendor Type")
            {
            }
            column(ReverseCharge; FORMAT("Reverse Charge"))
            {
            }
            column(LocationCode; "Location Code")
            {
            }
            column(UserId; DetailedGSTLedgerEntryInfo."User ID")    //17141 added
            {
            }
            column(HSNSACCode; "HSN/SAC Code")
            {
            }
            column(Type; Type)
            {
            }
            column(DocumentType; "Document Type")
            {
            }
            column(GSTJurisdictionType; "GST Jurisdiction Type")
            {
            }
            column(NatureofSupply; DetailedGSTLedgerEntryInfo."Nature of Supply")    // 17141   added
            {
            }
            column(GSTCredit; "GST Credit")
            {
            }
            column(BuyerSellerRegNo; "Buyer/Seller Reg. No.")
            {
            }
            column(ExternalDocumentNo; "External Document No.")
            {
            }
            column(InvoiceLineSrNo; ROUND("Document Line No." / 10000, 1, '='))
            {
            }
            column(GSTBaseAmt; GSTBaseAmt)
            {
            }
            column(ItemNo; "No.")
            {
            }
            column(NameofCounter; NameofCounter)
            {
            }
            column(PlaceofSupply; PlaceofSupply)
            {
            }
            column(InvoiceNo; InvoiceNo)
            {
            }
            column(InvoiceDate; FORMAT(InvoiceDate))
            {
            }
            column(CNNo; CNNo)
            {
            }
            column(CNDt; FORMAT(CNDt))
            {
            }
            column(CNavailable; CNavailable)
            {
            }
            column(TRPDate; TRPDate)
            {
            }

            trigger OnAfterGetRecord()
            var
                State_Loc: Record State;  //17141


            begin
                Clear(DetailedGSTLedgerEntryInfo);
                DetailedGSTLedgerEntryInfo.Get("Entry No.");

                CLEAR(CGST);
                CLEAR(SGST);
                CLEAR(IGST);
                CLEAR(CGSTRate);
                CLEAR(SGSTRate);
                CLEAR(IGSTRate);
                CLEAR(GSTBaseAmt);
                DetailedGSTLedgerEntry.RESET;
                DetailedGSTLedgerEntry.SETCURRENTKEY("Posting Date");
                DetailedGSTLedgerEntry.SETRANGE("Transaction Type", DetailedGSTLedgerEntry."Transaction Type"::Purchase);
                DetailedGSTLedgerEntry.SETRANGE("Document No.", "Detailed GST Ledger Entry"."Document No.");
                DetailedGSTLedgerEntry.SETRANGE("Document Line No.", "Detailed GST Ledger Entry"."Document Line No.");
                DetailedGSTLedgerEntry.SETRANGE("Posting Date", "Detailed GST Ledger Entry"."Posting Date"); //MSAK
                IF DetailedGSTLedgerEntry.FINDFIRST THEN
                    REPEAT
                        IF DetailedGSTLedgerEntry."GST Component Code" IN ['CGST', 'RCGST'] THEN BEGIN
                            CGST += DetailedGSTLedgerEntry."GST Amount";
                            CGSTRate := DetailedGSTLedgerEntry."GST %";
                            GSTBaseAmt += DetailedGSTLedgerEntry."GST Base Amount";
                        END;
                        IF DetailedGSTLedgerEntry."GST Component Code" IN ['SGST', 'RSGST', 'UTGST', 'RUTGST'] THEN BEGIN
                            SGST += DetailedGSTLedgerEntry."GST Amount";
                            SGSTRate := DetailedGSTLedgerEntry."GST %";
                        END;
                        IF DetailedGSTLedgerEntry."GST Component Code" IN ['IGST', 'RIGST'] THEN BEGIN
                            IGST += DetailedGSTLedgerEntry."GST Amount";
                            IGSTRate := DetailedGSTLedgerEntry."GST %";
                            GSTBaseAmt += DetailedGSTLedgerEntry."GST Base Amount";
                        END;
                    UNTIL DetailedGSTLedgerEntry.NEXT = 0;

                Vendor.RESET;
                Vendor.SETRANGE("No.", "Detailed GST Ledger Entry"."Source No.");
                IF Vendor.FINDFIRST THEN;
                Location.RESET;
                Location.SETRANGE(Code, "Detailed GST Ledger Entry"."Location Code");
                IF Location.FINDFIRST THEN;


                TransferReceiptHeader.RESET;
                TransferReceiptHeader.SETRANGE("No.", "Detailed GST Ledger Entry"."Document No.");
                IF TransferReceiptHeader.FINDFIRST THEN;
                /*
                TransferReceiptLine.RESET;
                TransferReceiptLine.SETRANGE("Document No.","Detailed GST Ledger Entry"."Document No.");
                TransferReceiptLine.SETRANGE("Line No.","Detailed GST Ledger Entry"."Document Line No.");
                IF TransferReceiptLine.FINDFIRST THEN;
                */
                PurchInvHeader.RESET;
                PurchInvHeader.SETRANGE("No.", "Detailed GST Ledger Entry"."Document No.");
                IF PurchInvHeader.FINDFIRST THEN;

                //MIPLRK280222>>>
                CLEAR(CNNo);
                CLEAR(CNDt);
                CLEAR(CNavailable);

                IF DetailedGSTLedgerEntryInfo."Original Doc. Type" = DetailedGSTLedgerEntryInfo."Original Doc. Type"::"Credit Memo" THEN BEGIN
                    PurchCrMemoHdr.RESET;
                    PurchCrMemoHdr.SETRANGE("No.", "Detailed GST Ledger Entry"."Document No.");
                    IF PurchCrMemoHdr.FINDFIRST THEN BEGIN
                        CNNo := (PurchCrMemoHdr."Vendor Cr. Memo No.");
                        CNDt := (PurchCrMemoHdr."Vendor CN Date");
                        CNavailable := FORMAT(PurchCrMemoHdr."Vendor GST CN  available");
                    END;
                END ELSE BEGIN
                    CNNo := ("Detailed GST Ledger Entry"."Document No.");
                    CNDt := ("Detailed GST Ledger Entry"."Posting Date");
                    CNavailable := '';
                END;

                CLEAR(TRPDate);
                IF DetailedGSTLedgerEntryInfo."Original Doc. Type" = DetailedGSTLedgerEntryInfo."Original Doc. Type"::"Transfer Receipt" THEN BEGIN
                    TransferShipmentHeader.RESET;
                    TransferShipmentHeader.SETRANGE("No.", "Detailed GST Ledger Entry"."External Document No.");
                    IF TransferShipmentHeader.FINDFIRST THEN
                        TRPDate := TransferShipmentHeader."Posting Date";
                END ELSE
                    TRPDate := "Detailed GST Ledger Entry"."Posting Date";
                //MIPLRK280222<<<

                NameofCounter := '';
                IF (DetailedGSTLedgerEntryInfo."Original Doc. Type" = DetailedGSTLedgerEntryInfo."Original Doc. Type"::Invoice) THEN BEGIN
                    NameofCounter := Vendor.Name;

                    // PlaceofSupply := GetStateCode(PurchInvHeader.State); 
                    PlaceofSupply := Vendor."State Code";   //17141 added
                    InvoiceNo := (PurchInvHeader."Vendor Invoice No.");
                    InvoiceDate := (PurchInvHeader."Vendor Invoice Date");
                END ELSE
                    IF (DetailedGSTLedgerEntryInfo."Original Doc. Type" = DetailedGSTLedgerEntryInfo."Original Doc. Type"::"Transfer Receipt") THEN BEGIN
                        NameofCounter := Location.Name + ', ' + Location.City;
                        PlaceofSupply := GetStateCode(TransferReceiptHeader."Transfer-to State");
                        //17141 confirmed with Laxman Sir to add vendor.statecode
                        if PlaceofSupply = '' then
                            PlaceofSupply := Vendor."State Code";
                        //17141

                        InvoiceNo := (TransferReceiptHeader."Transfer Order No.");
                        InvoiceDate := (TransferReceiptHeader."Shipment Date");
                    END ELSE
                        IF (DetailedGSTLedgerEntryInfo."Original Doc. Type" = DetailedGSTLedgerEntryInfo."Original Doc. Type"::"Credit Memo") THEN BEGIN
                            NameofCounter := Vendor.Name;
                            // PlaceofSupply := GetStateCode(PurchInvHeader.State);
                            PlaceofSupply := Vendor."State Code";//17141 added
                            InvoiceNo := (PurchInvHeader."Vendor Invoice No.");
                            InvoiceDate := (PurchInvHeader."Vendor Invoice Date");
                        END;

                begin

                end;

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

        DetailedGSTLedgerEntry: Record "Detailed GST Ledger Entry";
        CGST: Decimal;
        SGST: Decimal;
        IGST: Decimal;
        CGSTRate: Decimal;
        SGSTRate: Decimal;
        IGSTRate: Decimal;
        GSTBaseAmt: Decimal;
        Vendor: Record 23;
        Location: Record 14;
        NameofCounter: Text[100];   //17141
        PurchInvHeader: Record 122;
        PurchInvLine: Record 123;
        TransferReceiptHeader: Record 5746;
        TransferReceiptLine: Record 5747;
        PlaceofSupply: Code[20];
        InvoiceNo: Code[50];
        InvoiceDate: Date;
        PurchCrMemoHdr: Record 124;
        TransferShipmentHeader: Record 5744;
        CNNo: Code[60]; //17141 30 to 60 changed length
        CNDt: Date;
        CNavailable: Text;
        TRPDate: Date;
        UserId_G: Code[50]; //17141
        DetailedGSTLedgerEntryInfo: Record "Detailed GST Ledger Entry Info";  //17141

    local procedure GetStateCode(StateCode: Code[20]): Code[30]
    var
        // State: Record 13762;  //17141 Table Id changed in BC
        State: Record State;
    begin
        IF State.GET(StateCode) THEN
            EXIT(State."State Code (GST Reg. No.)");
    end;
}

