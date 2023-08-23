page 50395 "TDS Entries Editable"
{
    ApplicationArea = All;
    Caption = 'TDS Entries Editable';
    PageType = List;
    SourceTable = "TDS Entry";
    UsageCategory = Administration;
    Permissions = tabledata "TDS Entry" = rim;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Account No."; Rec."Account No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the vendor account of the TDS entry.';
                }
                field("Account Type"; Rec."Account Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of the account of the TDS entry.';
                }
                field("Act Applicable"; Rec."Act Applicable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specify the tax rates prescribed under the IT Act or DTAA on the TDS entry.';
                }
                field(Adjusted; Rec.Adjusted)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the TDS entry is adjusted.';
                }
                field("Adjusted SHE CESS %"; Rec."Adjusted SHE CESS %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Adjusted SHE CESS % field.';
                }
                field("Adjusted Surcharge %"; Rec."Adjusted Surcharge %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Adjusted Surcharge % field.';
                }
                field("Adjusted TDS %"; Rec."Adjusted TDS %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies adjusted TDS % for the TDS Entry.';
                }
                field("Adjusted TDS Doc No."; Rec."Adjusted TDS Doc No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Adjusted TDS Doc No. field.';
                }
                field("Adjusted eCESS %"; Rec."Adjusted eCESS %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Adjusted eCESS % field.';
                }
                field(Applied; Rec.Applied)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the TDS entry is applied.';
                }
                field("Assessee Code"; Rec."Assessee Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the assessee code of the Vendor on the TDS entry.';
                }
                field("BSR Code"; Rec."BSR Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Basic Statistical Return Code provided by the bank while depositing the TDS amount.';
                }
                field("Bal. TDS Including SHE CESS"; Rec."Bal. TDS Including SHE CESS")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of TDS including SHE CESS amount.';
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the bank where TDS amount has been deposited.';
                }
                field("Calc. Over & Above Threshold"; Rec."Calc. Over & Above Threshold")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Calc. Over & Above Threshold field.';
                }
                field("Challan Date"; Rec."Challan Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the challan date for the TDS entry once TDS amount is paid to government.';
                }
                field("Challan No."; Rec."Challan No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the challan number for the TDS entry once TDS amount is paid to government.';
                }
                field("Challan Register Entry No."; Rec."Challan Register Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Challan Register Entry No. field.';
                }
                field("Check Date"; Rec."Check Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date of the check through which payment has been made.';
                }
                field("Check/DD No."; Rec."Check/DD No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Check/DD No. field.';
                }
                field("Concessional Code"; Rec."Concessional Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the concessional code on the TDS entry.';
                }
                field("Concessional Form No."; Rec."Concessional Form No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the applied concessional code on the TDS entry.';
                }
                field("Country Code"; Rec."Country Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Country Code';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Currency Code field.';
                }
                field("Currency Factor"; Rec."Currency Factor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Currency Factor field.';
                }
                field("Deductee PAN No."; Rec."Deductee PAN No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Species the PAN number of deductee on the TDS entry.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the document number on the TDS entry.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of document that the TDS entry is.';
                }
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the entry, as assigned from the specified number series when the entry was created.';
                }
                field("G/L Entry No."; Rec."G/L Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the G/L Entry No. field.';
                }
                field("Include GST in TDS Base"; Rec."Include GST in TDS Base")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Include GST in TDS Base field.';
                }
                field("Invoice Amount"; Rec."Invoice Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the invoice amount that the TCS entry is linked to.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Location Code field.';
                }
                field("Minor Head Code"; Rec."Minor Head Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the minor head code used for the payment.';
                }
                field("NIL Challan Indicator"; Rec."NIL Challan Indicator")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the NIL Challan Indicator field.';
                }
                field("Nature of Remittance"; Rec."Nature of Remittance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specify the type of Remittance deductee deals with on the TDS entry.';
                }
                field("Non Resident Payments"; Rec."Non Resident Payments")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the section belongs to Non Resident payments.';
                }
                field("Original TDS Base Amount"; Rec."Original TDS Base Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Original TDS Base Amount field.';
                }
                field("Over & Above Threshold Opening"; Rec."Over & Above Threshold Opening")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Over & Above Threshold Opening field.';
                }
                field("Party Account No."; Rec."Party Account No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Party Account No. field.';
                }
                field("Party Code"; Rec."Party Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Party Code field.';
                }
                field("Party P.A.N. No."; Rec."Party P.A.N. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the P.A.N. number of the deductee.';
                }
                field("Party Type"; Rec."Party Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Party Type field.';
                }
                field("Pay TDS Document No."; Rec."Pay TDS Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the document number of the TDS entry to be paid to government.';
                }
                field("Payment Amount"; Rec."Payment Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Amount field.';
                }
                field("Per Contract"; Rec."Per Contract")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Per Contract on the TDS Entry';
                }
                field(Picture; Rec.Picture)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Picture field.';
                }
                field("Posted Pay TDS Document No."; Rec."Posted Pay TDS Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posted Pay TDS Document No. field.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entries posting date.';
                }
                field("Remaining Surcharge Amount"; Rec."Remaining Surcharge Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Remaining Surcharge Amount field.';
                }
                field("Remaining TDS Amount"; Rec."Remaining TDS Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Remaining TDS Amount field.';
                }
                field(Reversed; Rec.Reversed)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the TDS entry has been reversed.';
                }
                field("Reversed Entry No."; Rec."Reversed Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entry number for which the TDS entry has been reversed.';
                }
                field("Reversed by Entry No."; Rec."Reversed by Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entry number by which the TDS entry has been reversed.';
                }
                field("SHE Cess %"; Rec."SHE Cess %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the SHE Cess % on the TDS entry.';
                }
                field("SHE Cess Amount"; Rec."SHE Cess Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the SHE Cess amount on the TDS entry.';
                }
                field(Section; Rec.Section)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the section of TDS entry.';
                }
                field("Source Code"; Rec."Source Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the source code. Source code can be PURCHASES, SALES, GENJNL, BANKPYMT etc.';
                }
                field("Surcharge %"; Rec."Surcharge %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the surcharge % on the TDS entry.';
                }
                field("Surcharge Amount"; Rec."Surcharge Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the surcharge % on the TDS entry.';
                }
                field("Surcharge Base Amount"; Rec."Surcharge Base Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Surcharge Base Amount field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemId field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
                field("T.A.N. No."; Rec."T.A.N. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the TAN number on the TDS entry.';
                }
                field("TDS %"; Rec."TDS %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Species the TDS % on the TDS entry.';
                }
                field("TDS Adjustment"; Rec."TDS Adjustment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TDS Adjustment field.';
                }
                field("TDS Amount"; Rec."TDS Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the TDS amount on the TDS entry.';
                }
                field("TDS Amount Including Surcharge"; Rec."TDS Amount Including Surcharge")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Toal TDS amount Including Surcharge on the TDS entry.';
                }
                field("TDS Base Amount"; Rec."TDS Base Amount")
                {
                    ApplicationArea = All;
                    Editable = true;
                    ToolTip = 'Specifies the amount that is used as base to calculate TDS on the TDS entry.';
                }
                field("TDS Base Amount Adjusted"; Rec."TDS Base Amount Adjusted")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TDS Base Amount Adjusted field.';
                }
                field("TDS Line Amount"; Rec."TDS Line Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TDS Line Amount field.';
                }
                field("TDS Paid"; Rec."TDS Paid")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the deducted TDS has been paid to government for the TDS entry.';
                }
                field("TDS Payment Date"; Rec."TDS Payment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the P.A.N. number of the deductee.';
                }
                field("Total TDS Including SHE CESS"; Rec."Total TDS Including SHE CESS")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Total TDS Including SHE Cess amount on the TDS entry.';
                }
                field("Transaction No."; Rec."Transaction No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the transaction number of the posted entry.';
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the user who posted the TDS entry.';
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the account number of the vendor account on the TDS entry.';
                }
                field("eCess %"; Rec."eCess %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the eCess % on the TDS entry.';
                }
                field("eCess Amount"; Rec."eCess Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the eCess amount on the TDS entry.';
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        if not (UserId in ['ADMIN']) then
            ERROR('You are not authorised to Open the Page');
    end;
}
