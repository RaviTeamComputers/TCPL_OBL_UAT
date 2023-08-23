pageextension 50457 pageextension50457 extends "Posted Transfer Shipment"
{
    layout
    {
        moveafter("Posting Date"; "Vehicle No.")
        addafter("Posting Date")
        {
            field("GR Date"; Rec."GR Date")
            {
                ApplicationArea = all;
            }
            field("GR No."; Rec."GR No.")
            {
                ApplicationArea = all;
            }
        }
        addafter("Shipping Agent Service Code")
        {
            field("Transfer-from State"; rec."Transfer-from State")
            {
                Editable = false;
            }
            /* field("Form Code"; rec."Form Code")
            {
                Editable = false;
            }
            field("Form No."; rec."Form No.")
            {
                Editable = false;
            } */
            field(Purpose; rec.Purpose)
            {
                Editable = false;
            }
            field("Transporter's Name"; rec."Transporter's Name")
            {
                Caption = 'Transporter Code';
                Editable = false;
            }
            field("External Transfer"; rec."External Transfer")
            {
                Editable = false;
            }
            field("Truck No."; rec."Truck No.")
            {
                Editable = false;
            }
            field("Loading Inspector"; rec."Loading Inspector")
            {
                Editable = false;
            }
            field("E-Way No."; rec."E-Way No.")
            {
                Editable = "E-Way No.editable";

                trigger OnValidate()
                begin
                    IF (STRLEN(rec."E-Way No.") <> 12) THEN
                        ERROR(Text50032);

                    IF CONFIRM('E-Way Bill No. You have Entered' + '-' + rec."E-Way No.", TRUE) THEN
                        "E-Way No.editable" := FALSE
                    ELSE
                        "E-Way No.editable" := TRUE
                end;
            }

        }
    }

    actions
    {

        addafter("&Shipment")
        {
            group(Report)
            {
                action("GST Transfer Invoice")
                {
                    Caption = 'GST Transfer Invoice';
                    Promoted = true;
                    PromotedIsBig = true;
                    ApplicationArea = All;
                    trigger OnAction()
                    var
                        TransferShipmentHeader: Record "Transfer Shipment Header";
                    begin
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETRANGE("No.", Rec."No.");
                        IF TransferShipmentHeader.FIND('-') THEN
                            REPORT.RUN(50317, TRUE, FALSE, TransferShipmentHeader);
                    end;
                }
                action("GST Invoice Transfer")
                {
                    Caption = 'GST Invoice Transfer';

                    trigger OnAction()
                    var

                    begin
                        /*
                        IF "Transfer-from State" <> "Transfer-to State" THEN BEGIN
                          IF ("Posting Date">=011120D) AND ("External Transfer" = TRUE) AND ("IRN Hash"='') THEN
                             ERROR('You cannot print the invoice without IRN ');
                        END;
                        */
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETRANGE("No.", rec."No.");
                        IF TransferShipmentHeader.FIND('-') THEN
                            REPORT.RUN(50317, TRUE, FALSE, TransferShipmentHeader);

                    end;
                }
                action("Bell Transfer Invoice")
                {
                    Caption = 'Bell Transfer Invoice';
                    Visible = false;

                    trigger OnAction()
                    begin
                        //SHAKTI
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETFILTER("No.", rec."No.");
                        BellTransferInvoice.SETTABLEVIEW(TransferShipmentHeader);
                        BellTransferInvoice.RUN;
                    end;
                }
                action("Trading Invoice Transfer")
                {
                    Caption = 'Trading Invoice Transfer';

                    trigger OnAction()
                    begin
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETRANGE("No.", rec."No.");
                        IF TransferShipmentHeader.FIND('-') THEN
                            REPORT.RUN(50318, TRUE, FALSE, TransferShipmentHeader);
                    end;
                }
                action("Depot to Depot Transfer Inv")
                {
                    Caption = 'Depot to Depot Transfer Inv';

                    trigger OnAction()
                    begin
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETRANGE("No.", rec."No.");
                        IF TransferShipmentHeader.FIND('-') THEN
                            REPORT.RUN(50361, TRUE, FALSE, TransferShipmentHeader);
                    end;
                }
                action("Invoice Main")
                {
                    Caption = 'Invoice Main';

                    trigger OnAction()
                    begin
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETFILTER("No.", rec."No.");
                        Invoicemain.SETTABLEVIEW(TransferShipmentHeader);
                        Invoicemain.RUN;
                    end;
                }
                action(Annexure)
                {
                    Caption = 'Annexure';

                    trigger OnAction()
                    begin
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETFILTER("No.", rec."No.");
                        // InvoiceAnn.SETTABLEVIEW(TransferShipmentHeader);
                        // InvoiceAnn.RUN;
                    end;
                }
                action("Trading Transfer Invoice")
                {
                    Caption = 'Trading Transfer Invoice';

                    trigger OnAction()
                    begin
                        /*
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETFILTER(TransferShipmentHeader."No.","No.");
                        TradingTrnasInv.SETTABLEVIEW(TransferShipmentHeader);
                        TradingTrnasInv.RUN;
                        */
                        CurrPage.SETSELECTIONFILTER(TransferShipmentHeader);
                        TransferShipmentHeader.PrintRecords(TRUE);

                    end;
                }
                action("Trading Annexure")
                {
                    Caption = 'Trading Annexure';
                    Visible = false;

                    trigger OnAction()
                    begin
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETFILTER("No.", rec."No.");
                        // trdAnn.SETTABLEVIEW(TransferShipmentHeader);
                        // trdAnn.RUN;
                    end;
                }
                action("Factory Gate Pass")
                {
                    Caption = 'Factory Gate Pass';

                    trigger OnAction()
                    begin
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETFILTER("No.", rec."No.");
                        GatePass.SETTABLEVIEW(TransferShipmentHeader);
                        GatePass.RUN;
                    end;
                }
                action("Inter Depot Invoice")
                {
                    Caption = 'Inter Depot Invoice';

                    trigger OnAction()
                    begin
                        //TRI A.S 02.01.08 St
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETFILTER("No.", rec."No.");
                        InterDepot.SETTABLEVIEW(TransferShipmentHeader);
                        InterDepot.RUN;
                        //TRI A.S 02.01.08 End
                    end;
                }
                action("Factory GAte Pass- Trading")
                {
                    Caption = 'Factory GAte Pass- Trading';
                    Visible = false;

                    trigger OnAction()
                    begin
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETFILTER("No.", rec."No.");
                        // "GatePass-Trading".SETTABLEVIEW(TransferShipmentHeader);
                        // "GatePass-Trading".RUN;
                    end;
                }



            }








        }

    }
    trigger OnOpenPage()
    begin

        IF rec."E-Way No." <> '' THEN
            "E-Way No.editable" := FALSE
        ELSE
            "E-Way No.editable" := TRUE
    end;


    var
        TransferShipmentHeader: Record "Transfer Shipment Header";
        BellTransferInvoice: Report 50242;
        Invoicemain: Report 50098;
        // InvoiceAnn: Report 50099;
        //   trdAnn : Report 50187;
        GatePass: Report 50101;
        TradingTrnasInv: Report 50155;

        InterDepot: Report 50178;
        // "GatePass-Trading": Report 50123;

        "E-Way No.editable": Boolean;
        Text50032: Label 'E-Way Bill No. Should be in Tweleve Charector';
}