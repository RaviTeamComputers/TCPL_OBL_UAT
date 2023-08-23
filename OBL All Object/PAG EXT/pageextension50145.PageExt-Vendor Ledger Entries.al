pageextension 50145 pageextension50145 extends "Vendor Ledger Entries"
{
    layout
    {


        addfirst(Control1)
        {
            field(vendorNameVar; vendorNameVar)
            {
                ApplicationArea = All;
                Caption = 'Vendor Name';
                Editable = false;

            }
        }
        addafter("Posting Date")
        {
            field(Narration_OT; Rec.Narration_OT)
            {
                ApplicationArea = all;
                Editable = false;
                caption = 'Narration';
            }
            field("Vendor Invoice No."; vin)
            {
                Editable = false;
                ApplicationArea = All;
            }
            field("Vendor Invoice Date"; vid)
            {
                Editable = false;
                ApplicationArea = All;
            }
        }
        addafter("Location Code")
        {
            field("Total GST Amount"; rec."Total GST Amount")
            {
                Editable = false;
                Enabled = false;
                Visible = false;
                ApplicationArea = All;
            }
        }

        addafter("GST Reverse Charge")
        {
            field("Buy-from Vendor No."; rec."Buy-from Vendor No.")
            {
                ApplicationArea = All;
            }
            field("Vendor Order No."; rec."Vendor Order No.")
            {
                ApplicationArea = All;
            }
            field(Description2; rec.Description2)
            {
                ApplicationArea = All;
                Visible = false;
            }
            field("TDS Amount"; rec."TDS Amount")
            {
                Enabled = false;
                ApplicationArea = All;
            }
            field(Narration; rec.Narration)
            {
                ApplicationArea = All;
                Visible = false;
            }
            field("Line Narration"; rec."Line Narration")
            {
                ApplicationArea = All;
                Visible = false;
            }
            field("Cheque Date"; rec."Cheque Date")
            {
                ApplicationArea = All;
            }
            field("Cheque No."; rec."Cheque No.")
            {
                ApplicationArea = All;
            }
            field("Nature of Expense"; rec.NOE)
            {
                Editable = false;
                ApplicationArea = All;
            }
            field("Vendor Shipment No."; rec."Vendor Shipment No.")
            {
                ApplicationArea = All;
            }
            field("Concurrent Balance"; rec."Concurrent Balance")
            {
                ApplicationArea = All;
            }
            field(Comment; rec.Comment)
            {
                ApplicationArea = All;
            }
            field(Matched; rec.Matched)
            {
                ApplicationArea = All;
            }
        }
        modify("Debit Amount")
        {
            Visible = true;
        }
        modify("Credit Amount")
        {
            Visible = true;
        }
        moveafter("GST Reverse Charge"; "Vendor Posting Group", "Credit Amount (LCY)", "Debit Amount (LCY)", "Debit Amount", "Credit Amount")
    }
    actions
    {
        modify(ActionApplyEntries)
        {
            trigger OnAfterAction()
            begin
                //upgrade
                //TRI DG 300910 Add Start
                recVendLedent.COPY(Rec);
                CurrPage.SETSELECTIONFILTER(recVendLedent);
                IF recVendLedent.FIND('-') THEN
                    IF recVendLedent."Document Type" = recVendLedent."Document Type"::Invoice THEN
                        ERROR('Apply from Payment document not from Invoice');
                //TRI DG 300910 Add Stop

            end;
        }

        addafter("F&unctions")
        {
            action("Posted Voucher")
            {
                ApplicationArea = All;
                Caption = 'Print Voucher New';
                Image = PrintVoucher;
                Ellipsis = true;

                trigger OnAction()
                var
                    GLEntry: Record "G/L Entry";
                begin
                    GLEntry.SETCURRENTKEY("Document No.", "Posting Date");
                    GLEntry.SETRANGE("Document No.", Rec."Document No.");
                    GLEntry.SETRANGE("Posting Date", Rec."Posting Date");
                    IF GLEntry.FIND('-') THEN
                        REPORT.RUNMODAL(REPORT::"Posted Voucher Copy", TRUE, TRUE, GLEntry);
                end;
            }
        }
        modify("Print Voucher")
        {
            Visible = false;
        }
        addafter("F&unctions")
        {
            action("Purchase Invoise")
            {
                Caption = 'Purchase Invoise';
                ApplicationArea = All;

                trigger OnAction()
                var
                    PurchInvHeader: Record "Purch. Inv. Header";
                begin

                    PurchInvHeader.SETRANGE("No.", Rec."Document No.");
                    PurchInvHeader.SETRANGE("Posting Date", rec."Posting Date");
                    //IF PurchInvHeader.FIND('-') THEN

                    REPORT.RUNMODAL(REPORT::"Purchase - Invoice", TRUE, TRUE, PurchInvHeader);
                end;
            }
            action("Freight Voucher")
            {
                Caption = 'Freight Voucher';
                ApplicationArea = All;

                trigger OnAction()
                var
                    PurchInvLine: Record "Purch. Inv. Line";
                begin
                    PurchInvLine.SETRANGE("Document No.", rec."Document No.");
                    PurchInvLine.SETRANGE("Posting Date", rec."Posting Date");
                    //IF PurchInvLine.FIND('-') THEN
                    //REPORT.RUNMODAL(REPORT::"Freight Voucher",TRUE,TRUE,PurchInvLine); upgrade
                end;
            }
            action("Update Concurrent Balance")
            {
                Caption = 'Update Concurrent Balance';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    REPORT.RUN(Report::"Vendor Balance Update", FALSE, FALSE, Rec);
                end;
            }
        }
    }


    trigger OnAfterGetRecord()
    begin
        vendor_Rec.Get(Rec."Vendor No.");
        vendorNameVar := vendor_Rec.Name;
        //upgrade (+)
        //MSBS.Rao Begin Dt. 10-09-12
        IF RecVendor.GET(rec."Vendor No.") THEN
            VendorName := RecVendor.Name
        ELSE
            VendorName := '';
        //MSBS.Rao End Dt. 10-09-12
        //upgrade (-)

        vin := '';
        vid := 0D;
        IF purinvhead.GET(rec."Document No.") THEN BEGIN
            vin := purinvhead."Vendor Invoice No.";
            vid := purinvhead."Vendor Invoice Date";
        END

    end;

    trigger OnAfterGetCurrRecord()
    begin
        vendor_Rec.Get(Rec."Vendor No.");
        vendorNameVar := vendor_Rec.Name;

    end;

    var
        vendorNameVar: Text[50];
        vendor_Rec: Record Vendor;
        recVendLedent: Record "Vendor Ledger Entry";
        RecVendor: Record Vendor;
        VendorName: Text[50];
        purinvhead: Record "Purch. Inv. Header";
        vin: Code[50];
        vid: Date;


}

