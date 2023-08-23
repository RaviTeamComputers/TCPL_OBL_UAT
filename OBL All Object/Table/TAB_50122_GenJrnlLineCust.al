table 50122 "Gen. Journal Line  Customize"
{
    // version NAVW16.00.10,NAVIN6.00.01

    Caption = 'Gen. Journal Line';

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            TableRelation = "Gen. Journal Template";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Account Type"; Enum "Gen. Journal Account Type")
        {
            Caption = 'Account Type';
        }
        field(4; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            TableRelation = IF ("Account Type" = CONST(Customer)) Customer;

            trigger OnValidate()
            var
                CompanyInfo: Record 79;
                Location: Record 14;
            begin
                IF Reccustomer.GET("Account No.") THEN
                    Description := Reccustomer.Name;
            end;
        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
        }
        field(6; "Document Type"; Enum "Gen. Journal Document Type")
        {
            Caption = 'Document Type';
        }
        field(7; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(10; "VAT %"; Decimal)
        {
            Caption = 'VAT %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(11; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            TableRelation = IF ("Bal. Account Type" = CONST("G/L Account")) "G/L Account"
            ELSE
            IF ("Bal. Account Type" = CONST(Customer)) Customer
            ELSE
            IF ("Bal. Account Type" = CONST(Vendor)) Vendor
            ELSE
            IF ("Bal. Account Type" = CONST("Bank Account")) "Bank Account"
            ELSE
            IF ("Bal. Account Type" = CONST("Fixed Asset")) "Fixed Asset"
            ELSE
            IF ("Bal. Account Type" = CONST("IC Partner")) "IC Partner";

            trigger OnValidate()
            var
                CompanyInfo: Record 79;
                Location: Record 14;
            begin
            end;
        }
        field(12; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(13; Amount; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Amount';

            trigger OnValidate()
            begin
                IF "Account Type" = "Account Type"::Customer THEN BEGIN
                    IF Amount < 0 THEN
                        ERROR('You Can not Enter the amount in Negative Amount');

                END;
            end;
        }
        field(14; "Debit Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Debit Amount';
        }
        field(15; "Credit Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Credit Amount';
        }
        field(16; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
        }
        field(17; "Balance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Balance (LCY)';
            Editable = false;
        }
        field(18; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            Editable = false;
            MinValue = 0;
        }
        field(19; "Sales/Purch. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales/Purch. (LCY)';
        }
        field(20; "Profit (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Profit (LCY)';
        }
        field(21; "Inv. Discount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Inv. Discount (LCY)';
        }
        field(22; "Bill-to/Pay-to No."; Code[20])
        {
            Caption = 'Bill-to/Pay-to No.';
            TableRelation = IF ("Account Type" = CONST(Customer)) Customer
            ELSE
            IF ("Bal. Account Type" = CONST(Customer)) Customer
            ELSE
            IF ("Account Type" = CONST(Vendor)) Vendor
            ELSE
            IF ("Bal. Account Type" = CONST(Vendor)) Vendor;
        }
        field(23; "Posting Group"; Code[10])
        {
            Caption = 'Posting Group';
            Editable = false;
            TableRelation = IF ("Account Type" = CONST(Customer)) "Customer Posting Group"
            ELSE
            IF ("Account Type" = CONST(Vendor)) "Vendor Posting Group"
            ELSE
            IF ("Account Type" = CONST("Fixed Asset")) "FA Posting Group";
        }
        field(24; "Shortcut Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(25; "Shortcut Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,2,2';
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(26; "Salespers./Purch. Code"; Code[10])
        {
            Caption = 'Salespers./Purch. Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(29; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            Editable = false;
            TableRelation = "Source Code";
        }
        field(30; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
            Editable = false;
        }
        field(34; "On Hold"; Code[3])
        {
            Caption = 'On Hold';
        }
        field(35; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(36; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';

            trigger OnLookup()
            var
                GenJnlPostLine: Codeunit 12;
                PaymentToleranceMgt: Codeunit 426;
                OldAppliesToDocNo: Code[20];
            begin
            end;

            trigger OnValidate()
            var
                CustLedgEntry: Record 21;
                VendLedgEntry: Record 25;
                TempGenJnlLine: Record 81 temporary;
                VendLedgEntry2: Record 25;
            begin
            end;
        }
        field(38; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(39; "Pmt. Discount Date"; Date)
        {
            Caption = 'Pmt. Discount Date';
        }
        field(40; "Payment Discount %"; Decimal)
        {
            Caption = 'Payment Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(42; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(43; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(44; "VAT Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'VAT Amount';
        }
        field(45; "VAT Posting"; Option)
        {
            Caption = 'VAT Posting';
            Editable = false;
            OptionCaption = 'Automatic VAT Entry,Manual VAT Entry';
            OptionMembers = "Automatic VAT Entry","Manual VAT Entry";
        }
        field(47; "Payment Terms Code"; Code[10])
        {
            Caption = 'Payment Terms Code';
            TableRelation = "Payment Terms";
        }
        field(48; "Applies-to ID"; Code[20])
        {
            Caption = 'Applies-to ID';
        }
        field(50; "Business Unit Code"; Code[10])
        {
            Caption = 'Business Unit Code';
            TableRelation = "Business Unit";
        }
        field(51; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            TableRelation = "Gen. Journal Batch".Name WHERE("Journal Template Name" = FIELD("Journal Template Name"));
        }
        field(52; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(53; "Recurring Method"; Option)
        {
            BlankZero = true;
            Caption = 'Recurring Method';
            OptionCaption = ' ,F  Fixed,V  Variable,B  Balance,RF Reversing Fixed,RV Reversing Variable,RB Reversing Balance';
            OptionMembers = " ","F  Fixed","V  Variable","B  Balance","RF Reversing Fixed","RV Reversing Variable","RB Reversing Balance";
        }
        field(54; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(55; "Recurring Frequency"; DateFormula)
        {
            Caption = 'Recurring Frequency';
        }
        field(56; "Allocated Amt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Gen. Jnl. Allocation".Amount WHERE("Journal Template Name" = FIELD("Journal Template Name"),
                                                                   "Journal Batch Name" = FIELD("Journal Batch Name"),
                                                                   "Journal Line No." = FIELD("Line No.")));
            Caption = 'Allocated Amt. (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(57; "Gen. Posting Type"; Option)
        {
            Caption = 'Gen. Posting Type';
            OptionCaption = ' ,Purchase,Sale,Settlement';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(58; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(59; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(60; "VAT Calculation Type"; Option)
        {
            Caption = 'VAT Calculation Type';
            Editable = false;
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(61; "EU 3-Party Trade"; Boolean)
        {
            Caption = 'EU 3-Party Trade';
            Editable = false;
        }
        field(62; "Allow Application"; Boolean)
        {
            Caption = 'Allow Application';
            InitValue = true;
        }
        field(63; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset,IC Partner';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset","IC Partner";
        }
        field(64; "Bal. Gen. Posting Type"; Option)
        {
            Caption = 'Bal. Gen. Posting Type';
            OptionCaption = ' ,Purchase,Sale,Settlement';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(65; "Bal. Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Bal. Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(66; "Bal. Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Bal. Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(67; "Bal. VAT Calculation Type"; Option)
        {
            Caption = 'Bal. VAT Calculation Type';
            Editable = false;
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(68; "Bal. VAT %"; Decimal)
        {
            Caption = 'Bal. VAT %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(69; "Bal. VAT Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Bal. VAT Amount';
        }
        field(70; "Bank Payment Type"; Option)
        {
            Caption = 'Bank Payment Type';
            OptionCaption = ' ,Computer Check,Manual Check';
            OptionMembers = " ","Computer Check","Manual Check";
        }
        field(71; "VAT Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'VAT Base Amount';
        }
        field(72; "Bal. VAT Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Bal. VAT Base Amount';
        }
        field(73; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(75; "Check Printed"; Boolean)
        {
            Caption = 'Check Printed';
            Editable = false;
        }
        field(76; "Document Date"; Date)
        {
            Caption = 'Document Date';
            ClosingDates = true;
        }
        field(77; "External Document No."; Code[20])
        {
            Caption = 'External Document No.';
        }
        field(78; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = ' ,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = " ",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(79; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = CONST(Customer)) Customer
            ELSE
            IF ("Source Type" = CONST(Vendor)) Vendor
            ELSE
            IF ("Source Type" = CONST("Bank Account")) "Bank Account"
            ELSE
            IF ("Source Type" = CONST("Fixed Asset")) "Fixed Asset";
        }
        field(80; "Posting No. Series"; Code[10])
        {
            Caption = 'Posting No. Series';
            TableRelation = "No. Series";
        }
        field(82; "Tax Area Code"; Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(83; "Tax Liable"; Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(84; "Tax Group Code"; Code[10])
        {
            Caption = 'Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(85; "Use Tax"; Boolean)
        {
            Caption = 'Use Tax';
        }
        field(86; "Bal. Tax Area Code"; Code[20])
        {
            Caption = 'Bal. Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(87; "Bal. Tax Liable"; Boolean)
        {
            Caption = 'Bal. Tax Liable';
        }
        field(88; "Bal. Tax Group Code"; Code[10])
        {
            Caption = 'Bal. Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(89; "Bal. Use Tax"; Boolean)
        {
            Caption = 'Bal. Use Tax';
        }
        field(90; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(91; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(92; "Bal. VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'Bal. VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(93; "Bal. VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'Bal. VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(95; "Additional-Currency Posting"; Option)
        {
            Caption = 'Additional-Currency Posting';
            Editable = false;
            OptionCaption = 'None,Amount Only,Additional-Currency Amount Only';
            OptionMembers = "None","Amount Only","Additional-Currency Amount Only";
        }
        field(98; "FA Add.-Currency Factor"; Decimal)
        {
            Caption = 'FA Add.-Currency Factor';
            DecimalPlaces = 0 : 15;
            MinValue = 0;
        }
        field(99; "Source Currency Code"; Code[10])
        {
            Caption = 'Source Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(100; "Source Currency Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Source Currency Amount';
            Editable = false;
        }
        field(101; "Source Curr. VAT Base Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Source Curr. VAT Base Amount';
            Editable = false;
        }
        field(102; "Source Curr. VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Source Curr. VAT Amount';
            Editable = false;
        }
        field(103; "VAT Base Discount %"; Decimal)
        {
            Caption = 'VAT Base Discount %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(104; "VAT Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Amount (LCY)';
            Editable = false;
        }
        field(105; "VAT Base Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Base Amount (LCY)';
            Editable = false;
        }
        field(106; "Bal. VAT Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Bal. VAT Amount (LCY)';
            Editable = false;
        }
        field(107; "Bal. VAT Base Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Bal. VAT Base Amount (LCY)';
            Editable = false;
        }
        field(108; "Reversing Entry"; Boolean)
        {
            Caption = 'Reversing Entry';
            Editable = false;
        }
        field(109; "Allow Zero-Amount Posting"; Boolean)
        {
            Caption = 'Allow Zero-Amount Posting';
            Editable = false;
        }
        field(110; "Ship-to/Order Address Code"; Code[10])
        {
            Caption = 'Ship-to/Order Address Code';
            TableRelation = IF ("Account Type" = CONST(Customer)) "Ship-to Address".Code WHERE("Customer No." = FIELD("Bill-to/Pay-to No."))
            ELSE
            IF ("Account Type" = CONST(Vendor)) "Order Address".Code WHERE("Vendor No." = FIELD("Bill-to/Pay-to No."))
            ELSE
            IF ("Bal. Account Type" = CONST(Customer)) "Ship-to Address".Code WHERE("Customer No." = FIELD("Bill-to/Pay-to No."))
            ELSE
            IF ("Bal. Account Type" = CONST(Vendor)) "Order Address".Code WHERE("Vendor No." = FIELD("Bill-to/Pay-to No."));
        }
        field(111; "VAT Difference"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'VAT Difference';
            Editable = false;
        }
        field(112; "Bal. VAT Difference"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Bal. VAT Difference';
            Editable = false;
        }
        field(113; "IC Partner Code"; Code[20])
        {
            Caption = 'IC Partner Code';
            Editable = false;
            TableRelation = "IC Partner";
        }
        field(114; "IC Direction"; Option)
        {
            Caption = 'IC Direction';
            OptionCaption = 'Outgoing,Incoming';
            OptionMembers = Outgoing,Incoming;
        }
        field(116; "IC Partner G/L Acc. No."; Code[20])
        {
            Caption = 'IC Partner G/L Acc. No.';
            TableRelation = "IC G/L Account";

            trigger OnValidate()
            var
                ICGLAccount: Record 410;
            begin
            end;
        }
        field(117; "IC Partner Transaction No."; Integer)
        {
            Caption = 'IC Partner Transaction No.';
            Editable = false;
        }
        field(118; "Sell-to/Buy-from No."; Code[20])
        {
            Caption = 'Sell-to/Buy-from No.';
            TableRelation = IF ("Account Type" = CONST(Customer)) Customer
            ELSE
            IF ("Bal. Account Type" = CONST(Customer)) Customer
            ELSE
            IF ("Account Type" = CONST(Vendor)) Vendor
            ELSE
            IF ("Bal. Account Type" = CONST(Vendor)) Vendor;
        }
        field(119; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';

            trigger OnValidate()
            var
            begin
            end;
        }
        field(120; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(121; Prepayment; Boolean)
        {
            Caption = 'Prepayment';
        }
        field(122; "Financial Void"; Boolean)
        {
            Caption = 'Financial Void';
            Editable = false;
        }
        field(827; "Credit Card No."; Code[20])
        {
            Caption = 'Credit Card No.';
        }
        field(1001; "Job Task No."; Code[20])
        {
            Caption = 'Job Task No.';
            TableRelation = "Job Task"."Job Task No." WHERE("Job No." = FIELD("Job No."));
        }
        field(1002; "Job Unit Price (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Job Unit Price (LCY)';
            Editable = false;
        }
        field(1003; "Job Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Job Total Price (LCY)';
            Editable = false;
        }
        field(1004; "Job Quantity"; Decimal)
        {
            Caption = 'Job Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(1005; "Job Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Job Unit Cost (LCY)';
            Editable = false;
        }
        field(1006; "Job Line Discount %"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Job Line Discount %';
        }
        field(1007; "Job Line Disc. Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Job Line Disc. Amount (LCY)';
            Editable = false;
        }
        field(1008; "Job Unit Of Measure Code"; Code[10])
        {
            Caption = 'Job Unit Of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(1009; "Job Line Type"; Option)
        {
            Caption = 'Job Line Type';
            OptionCaption = ' ,Schedule,Contract,Both Schedule and Contract';
            OptionMembers = " ",Schedule,Contract,"Both Schedule and Contract";
        }
        field(1010; "Job Unit Price"; Decimal)
        {
            AutoFormatExpression = "Job Currency Code";
            AutoFormatType = 2;
            Caption = 'Job Unit Price';
        }
        field(1011; "Job Total Price"; Decimal)
        {
            AutoFormatExpression = "Job Currency Code";
            AutoFormatType = 1;
            Caption = 'Job Total Price';
            Editable = false;
        }
        field(1012; "Job Unit Cost"; Decimal)
        {
            AutoFormatExpression = "Job Currency Code";
            AutoFormatType = 2;
            Caption = 'Job Unit Cost';
            Editable = false;
        }
        field(1013; "Job Total Cost"; Decimal)
        {
            AutoFormatExpression = "Job Currency Code";
            AutoFormatType = 1;
            Caption = 'Job Total Cost';
            Editable = false;
        }
        field(1014; "Job Line Discount Amount"; Decimal)
        {
            AutoFormatExpression = "Job Currency Code";
            AutoFormatType = 1;
            Caption = 'Job Line Discount Amount';
        }
        field(1015; "Job Line Amount"; Decimal)
        {
            AutoFormatExpression = "Job Currency Code";
            AutoFormatType = 1;
            Caption = 'Job Line Amount';
        }
        field(1016; "Job Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Job Total Cost (LCY)';
            Editable = false;
        }
        field(1017; "Job Line Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Job Line Amount (LCY)';
            Editable = false;
        }
        field(1018; "Job Currency Factor"; Decimal)
        {
            Caption = 'Job Currency Factor';
        }
        field(1019; "Job Currency Code"; Code[10])
        {
            Caption = 'Job Currency Code';
        }
        field(5050; "Campaign No."; Code[20])
        {
            Caption = 'Campaign No.';
            TableRelation = Campaign;
        }
        field(5400; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
            Editable = false;
        }
        field(5600; "FA Posting Date"; Date)
        {
            Caption = 'FA Posting Date';
        }
        field(5601; "FA Posting Type"; enum "FA Posting Type Setup Type")
        {
            Caption = 'FA Posting Type';
            //OptionCaption = ' ,Acquisition Cost,Depreciation,Write-Down,Appreciation,Custom 1,Custom 2,Disposal,Maintenance';
            //OptionMembers = " ","Acquisition Cost",Depreciation,"Write-Down",Appreciation,"Custom 1","Custom 2",Disposal,Maintenance;
        }
        field(5602; "Depreciation Book Code"; Code[10])
        {
            Caption = 'Depreciation Book Code';
            TableRelation = "Depreciation Book";
        }
        field(5603; "Salvage Value"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Salvage Value';
        }
        field(5604; "No. of Depreciation Days"; Integer)
        {
            BlankZero = true;
            Caption = 'No. of Depreciation Days';
        }
        field(5605; "Depr. until FA Posting Date"; Boolean)
        {
            Caption = 'Depr. until FA Posting Date';
        }
        field(5606; "Depr. Acquisition Cost"; Boolean)
        {
            Caption = 'Depr. Acquisition Cost';
        }
        field(5609; "Maintenance Code"; Code[10])
        {
            Caption = 'Maintenance Code';
            TableRelation = Maintenance;
        }
        field(5610; "Insurance No."; Code[20])
        {
            Caption = 'Insurance No.';
            TableRelation = Insurance;
        }
        field(5611; "Budgeted FA No."; Code[20])
        {
            Caption = 'Budgeted FA No.';
            TableRelation = "Fixed Asset";
        }
        field(5612; "Duplicate in Depreciation Book"; Code[10])
        {
            Caption = 'Duplicate in Depreciation Book';
            TableRelation = "Depreciation Book";
        }
        field(5613; "Use Duplication List"; Boolean)
        {
            Caption = 'Use Duplication List';
        }
        field(5614; "FA Reclassification Entry"; Boolean)
        {
            Caption = 'FA Reclassification Entry';
        }
        field(5615; "FA Error Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'FA Error Entry No.';
            TableRelation = "FA Ledger Entry";
        }
        field(5616; "Index Entry"; Boolean)
        {
            Caption = 'Index Entry';
        }
        field(13701; "Source Curr. Excise Amount"; Decimal)
        {
            Caption = 'Source Curr. Excise Amount';
            Editable = false;
        }
        field(13702; "Source Curr. Tax Amount"; Decimal)
        {
            Caption = 'Source Curr. Tax Amount';
            Editable = false;
        }
        field(13703; "State Code"; Code[10])
        {
            Caption = 'State Code';
        }
        field(13706; "Excise Bus. Posting Group"; Code[10])
        {
            Caption = 'Excise Bus. Posting Group';
        }
        field(13707; "Excise Prod. Posting Group"; Code[10])
        {
            Caption = 'Excise Prod. Posting Group';
        }
        field(13708; "Excise Amount"; Decimal)
        {
            Caption = 'Excise Amount';
            Editable = false;
        }
        field(13709; "BED %"; Decimal)
        {
            Caption = 'BED %';
            Editable = false;
        }
        field(13710; "BED Calculation Type"; Option)
        {
            Caption = 'BED Calculation Type';
            OptionCaption = 'Excise %,Amount/Unit,% of Accessable Value,Excise %+Amount/Unit,% of MRP';
            OptionMembers = "Excise %","Amount/Unit","% of Accessable Value","Excise %+Amount/Unit","% of MRP";
        }
        field(13711; "Amount Including Excise"; Decimal)
        {
            Caption = 'Amount Including Excise';
            Editable = false;
        }
        field(13712; "Excise Base Amount"; Decimal)
        {
            Caption = 'Excise Base Amount';
            Editable = false;
        }
        field(13716; "TDS/TCS Amount"; Decimal)
        {
            Caption = 'TDS/TCS Amount';
            Editable = false;
        }
        field(13717; "Service Tax"; Decimal)
        {
            Caption = 'Service Tax';
        }
        field(13718; "Tax Amount"; Decimal)
        {
            Caption = 'Tax Amount';
            DecimalPlaces = 0 : 4;
        }
        field(13736; PLA; Boolean)
        {
            Caption = 'PLA';
        }
        field(13737; "Tax %"; Decimal)
        {
            Caption = 'Tax %';
        }
        field(13744; "Tax Base Amount"; Decimal)
        {
            Caption = 'Tax Base Amount';
        }
        field(13746; Cenvat; Boolean)
        {
            Caption = 'Cenvat';
        }
        field(13747; "Location Code"; Code[20])
        {
            Caption = 'Location Code';
            TableRelation = Location;

            trigger OnLookup()
            begin
                UserLocation.RESET;
                UserLocation.SETFILTER(UserLocation."User ID", USERID);
                GenJnlTemplate1.RESET;
                GenJnlTemplate1.SETFILTER(GenJnlTemplate1.Name, "Journal Template Name");
                IF GenJnlTemplate1.FIND('-') THEN
                    IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::General THEN
                        UserLocation.SETFILTER(UserLocation."GJT General", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Sales THEN
                    UserLocation.SETFILTER(UserLocation."GJT Sales", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Purchases THEN
                    UserLocation.SETFILTER(UserLocation."GJT Purchases", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::"Cash Receipts" THEN
                    UserLocation.SETFILTER(UserLocation."GJT Cash Receipts", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Payments THEN
                    UserLocation.SETFILTER(UserLocation."GJT Payments", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Assets THEN
                    UserLocation.SETFILTER(UserLocation."GJT Assets", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::"TDS Adjustments" THEN
                    UserLocation.SETFILTER(UserLocation."GJT TDS Adjustments", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::LC THEN
                    UserLocation.SETFILTER(UserLocation."GJT LC", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Receipts THEN
                    UserLocation.SETFILTER(UserLocation."GJT Receipts", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::JV THEN
                    UserLocation.SETFILTER(UserLocation."GJT JV", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::StdPayments THEN
                    UserLocation.SETFILTER(UserLocation."GJT StdPayments", '%1', TRUE);

                IF UserLocation.FIND('-') THEN
                    IF PAGE.RUNMODAL(50003, UserLocation) = ACTION::LookupOK THEN
                        VALIDATE("Location Code", UserLocation."Location Code");
            end;

            trigger OnValidate()
            var
                State: Record State;
                StateCode: Code[10];
            begin
                /*
                GeneralLedgerSetup.RESET;
                IF GeneralLedgerSetup.FIND('-') THEN
                Location1.RESET;
                Location1.SETFILTER(Location1.Code,"Location Code");
                IF Location1.FIND('-') THEN BEGIN
                  IF Location1."Main Location" <> '' THEN BEGIN
                    Location1.SETFILTER(Location1.Code,Location1."Main Location");
                    Location1.FIND('-');
                  END;
                IF JournalLineDimension.GET(DATABASE::"Gen. Journal Line","Journal Template Name","Journal Batch Name",
                "Line No.",0,GeneralLedgerSetup."Location Dimension Code") THEN BEGIN
                //JournalLineDimension."Table ID" := DATABASE::"Gen. Journal Line";
                //JournalLineDimension."Journal Template Name" := "Journal Template Name";
                //JournalLineDimension."Journal Batch Name" := "Journal Batch Name";
                //JournalLineDimension."Journal Line No." := "Line No.";
                //JournalLineDimension."Allocation Line No." := 0;
                //JournalLineDimension."Dimension Code" := GeneralLedgerSetup."Location Dimension Code";
                JournalLineDimension."Dimension Value Code" := Location1."Location Dimension";
                JournalLineDimension.MODIFY;
                END ELSE BEGIN
                JournalLineDimension."Table ID" := DATABASE::"Gen. Journal Line";
                JournalLineDimension."Journal Template Name" := "Journal Template Name";
                JournalLineDimension."Journal Batch Name" := "Journal Batch Name";
                JournalLineDimension."Journal Line No." := "Line No.";
                JournalLineDimension."Allocation Line No." := 0;
                JournalLineDimension."Dimension Code" := GeneralLedgerSetup."Location Dimension Code";
                JournalLineDimension."Dimension Value Code" := Location1."Location Dimension";
                JournalLineDimension.INSERT;
                
                END;
                END;
                "Shortcut Dimension 1 Code" := "Location Code";  //TRI DG
                */

            end;
        }
        field(13750; "Source Curr. Tax Base Amount"; Decimal)
        {
            Caption = 'Source Curr. Tax Base Amount';
            Editable = false;
        }
        field(13753; "Tax Amount (LCY)"; Decimal)
        {
            Caption = 'Tax Amount (LCY)';
        }
        field(13754; "Tax Base Amount (LCY)"; Decimal)
        {
            Caption = 'Tax Base Amount (LCY)';
        }
        field(13758; "TDS Nature of Deduction"; Code[10])
        {
            Caption = 'TDS Nature of Deduction';

            trigger OnValidate()
            var
            begin
            end;
        }
        field(13759; "Assessee Code"; Code[10])
        {
            Caption = 'Assessee Code';
            Editable = true;
            TableRelation = "Assessee Code";
        }
        field(13760; "TDS/TCS %"; Decimal)
        {
            Caption = 'TDS/TCS %';
            Editable = false;
        }
        field(13761; "TDS/TCS Amt Incl Surcharge"; Decimal)
        {
            Caption = 'TDS/TCS Amt Incl Surcharge';
            Editable = false;
        }
        field(13763; "Bal. TDS/TCS Including SHECESS"; Decimal)
        {
            Caption = 'Bal. TDS/TCS Including SHECESS';
            Editable = false;
        }
        field(13764; "Party Type"; Option)
        {
            BlankNumbers = DontBlank;
            Caption = 'Party Type';
            InitValue = " ";
            OptionCaption = ' ,Party,Customer,Vendor';
            OptionMembers = " ",Party,Customer,Vendor;
        }
        field(13765; "Party Code"; Code[20])
        {
            Caption = 'Party Code';
            TableRelation = IF ("Party Type" = CONST(Party)) Party.Code
            ELSE
            IF ("Party Type" = CONST(Vendor)) Vendor."No."
            ELSE
            IF ("Party Type" = CONST(Customer)) Customer."No.";
        }
        field(13773; "Form Code"; Code[10])
        {
            Caption = 'Form Code';
        }
        field(13774; "Form No."; Code[10])
        {
            Caption = 'Form No.';
        }
        field(13779; "LC No."; Code[20])
        {
            Caption = 'LC No.';
        }
        field(13780; "Work Tax Base Amount"; Decimal)
        {
            Caption = 'Work Tax Base Amount';
            Editable = true;
        }
        field(13781; "Work Tax %"; Decimal)
        {
            Caption = 'Work Tax %';
            Editable = false;
        }
        field(13782; "Work Tax Amount"; Decimal)
        {
            Caption = 'Work Tax Amount';
            Editable = false;
        }
        field(13786; "TDS Category"; Option)
        {
            Caption = 'TDS Category';
            OptionCaption = ' ,A,C,S';
            OptionMembers = " ",A,C,S;
        }
        field(13787; "Surcharge %"; Decimal)
        {
            Caption = 'Surcharge %';
            Editable = false;
        }
        field(13788; "Surcharge Amount"; Decimal)
        {
            Caption = 'Surcharge Amount';
            Editable = false;
        }
        field(13789; "Concessional Code"; Code[10])
        {
            Caption = 'Concessional Code';
            Editable = false;
        }
        field(13790; "Work Tax Paid"; Boolean)
        {
            Caption = 'Work Tax Paid';
            Editable = false;
        }
        field(16301; "Pay TDS"; Boolean)
        {
            Caption = 'Pay TDS';
            Editable = false;
        }
        field(16302; "Pay Work Tax"; Boolean)
        {
            Caption = 'Pay Work Tax';
            Editable = false;
        }
        field(16303; "TDS Entry"; Boolean)
        {
            Caption = 'TDS Entry';
        }
        field(16304; "Pay Excise"; Boolean)
        {
            Caption = 'Pay Excise';
        }
        field(16307; "TDS/TCS Base Amount"; Decimal)
        {
            Caption = 'TDS/TCS Base Amount';
            Editable = false;
        }
        field(16308; "Challan No."; Code[20])
        {
            Caption = 'Challan No.';
        }
        field(16309; "Challan Date"; Date)
        {
            Caption = 'Challan Date';
        }
        field(16310; Adjustment; Boolean)
        {
            Caption = 'Adjustment';
            Editable = false;
        }
        field(16312; "Pay Sales Tax"; Boolean)
        {
            Caption = 'Pay Sales Tax';
            Editable = false;
        }
        field(16313; "E.C.C. No."; Code[20])
        {
            Caption = 'E.C.C. No.';
        }
        field(16340; "Balance Work Tax Amount"; Decimal)
        {
            Caption = 'Balance Work Tax Amount';
            Editable = false;
        }
        field(16350; "Pay VAT"; Boolean)
        {
            Caption = 'Pay VAT';
        }
        field(16351; "VAT Claim Amount"; Decimal)
        {
            Caption = 'VAT Claim Amount';

            trigger OnValidate()
            var
            begin
            end;
        }
        field(16352; "Refund VAT"; Boolean)
        {
            Caption = 'Refund VAT';
        }
        field(16353; "Balance Surcharge Amount"; Decimal)
        {
            Caption = 'Balance Surcharge Amount';
            Editable = false;
        }
        field(16354; "Cheque Date"; Date)
        {
            Caption = 'Cheque Date';
        }
        field(16358; "Surcharge Base Amount"; Decimal)
        {
            Caption = 'Surcharge Base Amount';
            Editable = false;
        }
        field(16359; "TDS Group"; Option)
        {
            Caption = 'TDS Group';
            Editable = false;
            OptionCaption = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others;
        }
        field(16360; "Work Tax Nature Of Deduction"; Code[10])
        {
            Caption = 'Work Tax Nature Of Deduction';
        }
        field(16361; "Work Tax Group"; Option)
        {
            Caption = 'Work Tax Group';
            Editable = false;
            OptionCaption = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others;
        }
        field(16362; "Balance TDS/TCS Amount"; Decimal)
        {
            Caption = 'Balance TDS/TCS Amount';
            Editable = false;
        }
        field(16363; "Temp TDS/TCS Base"; Decimal)
        {
            Caption = 'Temp TDS/TCS Base';
        }
        field(16364; "Excise Posting"; Boolean)
        {
            Caption = 'Excise Posting';
        }
        field(16365; "Product Type"; Option)
        {
            Caption = 'Product Type';
            OptionCaption = ',Item,FA';
            OptionMembers = ,Item,FA;
        }
        field(16366; "Excise Charge"; Boolean)
        {
            Caption = 'Excise Charge';
        }
        field(16370; "Deferred Claim FA Excise"; Boolean)
        {
            Caption = 'Deferred Claim FA Excise';
            Editable = false;
        }
        field(16372; "Cheque No."; Code[10])
        {
            Caption = 'Cheque No.';
        }
        field(16374; Deferred; Boolean)
        {
            Caption = 'Deferred';
        }
        field(16375; "Service Tax Type"; Option)
        {
            Caption = 'Service Tax Type';
            OptionCaption = 'Sale,Purchase,Charge';
            OptionMembers = Sale,Purchase,Charge;
        }
        field(16376; "Service Tax Group Code"; Code[20])
        {
            Caption = 'Service Tax Group Code';
        }
        field(16377; "Service Tax Registration No."; Code[20])
        {
            Caption = 'Service Tax Registration No.';
        }
        field(16378; "Service Tax Base Amount"; Decimal)
        {
            Caption = 'Service Tax Base Amount';
            Editable = false;
        }
        field(16379; "Service Tax Amount"; Decimal)
        {
            Caption = 'Service Tax Amount';
            Editable = false;
        }
        field(16382; "Service Tax Entry"; Boolean)
        {
            Caption = 'Service Tax Entry';
        }
        field(16383; "eCESS %"; Decimal)
        {
            Caption = 'eCESS %';
            Editable = false;
        }
        field(16384; "eCESS on TDS/TCS Amount"; Decimal)
        {
            Caption = 'eCESS on TDS/TCS Amount';
            Editable = false;
        }
        field(16385; "Total TDS/TCS Incl. SHE CESS"; Decimal)
        {
            Caption = 'Total TDS/TCS Incl. SHE CESS';
            Editable = false;
        }
        field(16388; "Balance eCESS on TDS/TCS Amt"; Decimal)
        {
            Caption = 'Balance eCESS on TDS/TCS Amt';
        }
        field(16389; "Per Contract"; Boolean)
        {
            Caption = 'Per Contract';
        }
        field(16390; "Capital Item"; Boolean)
        {
            Caption = 'Capital Item';
        }
        field(16391; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(16406; "Service Tax eCess Amount"; Decimal)
        {
            Caption = 'Service Tax eCess Amount';
        }
        field(16460; "Goes to Excise Entry"; Boolean)
        {
            Caption = 'Goes to Excise Entry';

            trigger OnValidate()
            var
                ErrText: Label 'The General Journal Line must have Service Tax Component';
                CompanyInfo: Record 79;
            begin
            end;
        }
        field(16461; "From Excise"; Boolean)
        {
            Caption = 'From Excise';
        }
        field(16478; "T.A.N. No."; Code[10])
        {
            Caption = 'T.A.N. No.';
        }
        field(16491; "VAT Type"; Option)
        {
            Caption = 'VAT Type';
            OptionCaption = ' ,Item,Capital Goods';
            OptionMembers = " ",Item,"Capital Goods";
        }
        field(16492; "TDS From Orders"; Boolean)
        {
            Caption = 'TDS From Orders';
        }
        field(16493; "Consignment Note No."; Code[20])
        {
            Caption = 'Consignment Note No.';
        }
        field(16494; "Declaration Form (GTA)"; Boolean)
        {
            Caption = 'Declaration Form (GTA)';
        }
        field(16495; GTA; Boolean)
        {
            Caption = 'GTA';
        }
        field(16496; "GTA Service Type"; Option)
        {
            Caption = 'GTA Service Type';
            OptionCaption = ' ,Inward GTA,Outward GTA Stock Transfer,Outward GTA Input Service,Outward GTA';
            OptionMembers = " ","Inward GTA","Outward GTA Stock Transfer","Outward GTA Input Service","Outward GTA";
        }
        field(16500; "TCS Nature of Collection"; Code[10])
        {
            Caption = 'TCS Nature of Collection';
            TableRelation = "TCS Nature Of Collection";

            trigger OnLookup()
            var
            begin
            end;

            trigger OnValidate()
            var
            begin
            end;
        }
        field(16502; "Pay TCS"; Boolean)
        {
            Caption = 'Pay TCS';
        }
        field(16503; "TCS Entry"; Boolean)
        {
            Caption = 'TCS Entry';
        }
        field(16504; "TCS Type"; Option)
        {
            Caption = 'TCS Type';
            OptionCaption = ' ,A,B,C,D,E,F,G,H,I';
            OptionMembers = " ",A,B,C,D,E,F,G,H,I;
        }
        field(16505; "T.C.A.N. No."; Code[10])
        {
            Caption = 'T.C.A.N. No.';
            TableRelation = "T.C.A.N. No.";
        }
        field(16506; "TCS From Orders"; Boolean)
        {
            Caption = 'TCS From Orders';
        }
        field(16507; "FA Shift Line No."; Integer)
        {
            Caption = 'FA Shift Line No.';

            trigger OnLookup()
            var
            begin
            end;
        }
        field(16508; "Non ITC Claimable Usage %"; Decimal)
        {
            Caption = 'Non ITC Claimable Usage %';
            Editable = true;
            MinValue = 0;
        }
        field(16509; "Input Credit/Output Tax Amount"; Decimal)
        {
            Caption = 'Input Credit/Output Tax Amount';
            Editable = false;
        }
        field(16510; "Amount Loaded on Item"; Decimal)
        {
            Caption = 'Amount Loaded on Item';
            Editable = false;
        }
        field(16518; "Tax Amount Loaded on Inventory"; Decimal)
        {
            Caption = 'Tax Amount Loaded on Inventory';
        }
        field(16519; Defferment; Boolean)
        {
            Caption = 'Defferment';
        }
        field(16520; "VAT Entry"; Boolean)
        {
            Caption = 'VAT Entry';
        }
        field(16521; "Standard Deduction Amount"; Decimal)
        {
            Caption = 'Standard Deduction Amount';
        }
        field(16522; "Service Tax Rounding Precision"; Decimal)
        {
            Caption = 'Service Tax Rounding Precision';
        }
        field(16523; "Service Tax Rounding Type"; Option)
        {
            Caption = 'Service Tax Rounding Type';
            OptionCaption = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16525; "Standard Deduction Amount(ACY)"; Decimal)
        {
            Caption = 'Standard Deduction Amount(ACY)';
        }
        field(16526; "Input/Output Tax Amount"; Decimal)
        {
            Caption = 'Input/Output Tax Amount';
        }
        field(16527; "Excise Refund"; Boolean)
        {
            Caption = 'Excise Refund';
        }
        field(16528; "VAT Adjustment Entry"; Boolean)
        {
            Caption = 'VAT Adjustment Entry';
        }
        field(16529; Trading; Boolean)
        {
            Caption = 'Trading';
        }
        field(16530; "Sales Return Order"; Boolean)
        {
            Caption = 'Sales Return Order';
        }
        field(16531; "Excise as Service Tax Credit"; Boolean)
        {
            Caption = 'Excise as Service Tax Credit';
        }
        field(16532; "Serv. Tax on Advance Payment"; Boolean)
        {
            Caption = 'Serv. Tax on Advance Payment';
        }
        field(16533; "Transaction No. Serv. Tax"; Integer)
        {
            Caption = 'Transaction No. Serv. Tax';
        }
        field(16534; "ADC VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'ADC VAT Amount';
            Editable = false;
        }
        field(16537; CVD; Boolean)
        {
            Caption = 'CVD';
        }
        field(16539; "Source Curr. ADC VAT Amount"; Decimal)
        {
            Caption = 'Source Curr. ADC VAT Amount';
            Editable = false;
        }
        field(16547; "Service Tax SHE Cess Amount"; Decimal)
        {
            Caption = 'Service Tax SHE Cess Amount';
        }
        field(16548; "SHE Cess % on TDS/TCS"; Decimal)
        {
            Caption = 'SHE Cess % on TDS/TCS';
            Editable = false;
        }
        field(16549; "SHE Cess on TDS/TCS Amount"; Decimal)
        {
            Caption = 'SHE Cess on TDS/TCS Amount';
            Editable = false;
        }
        field(16553; "Bal. SHE Cess on TDS/TCS Amt"; Decimal)
        {
            Caption = 'Bal. SHE Cess on TDS/TCS Amt';
            Editable = false;
        }
        field(16554; "TDS Certificate Receivable"; Boolean)
        {
            Caption = 'TDS Certificate Receivable';
        }
        field(16555; "Input Service Distribution"; Boolean)
        {
            Caption = 'Input Service Distribution';
        }
        field(16556; "Stale Cheque"; Boolean)
        {
            Caption = 'Stale Cheque';
        }
        field(16557; "ST Pure Agent"; Boolean)
        {
            Caption = 'ST Pure Agent';
        }
        field(16558; "Nature of Services"; Option)
        {
            Caption = 'Nature of Services';
            OptionCaption = ' ,Exempted,Export';
            OptionMembers = " ",Exempted,Export;
        }
        field(16559; "Work Tax % Applied"; Decimal)
        {
            Caption = 'Work Tax % Applied';
        }
        field(16560; "W.T Amount"; Decimal)
        {
            Caption = 'W.T Amount';
        }
        field(16561; "Work Tax"; Boolean)
        {
            Caption = 'Work Tax';
        }
        field(16562; "Reverse Work Tax"; Boolean)
        {
            Caption = 'Reverse Work Tax';
        }
        field(16563; "CWIP G/L Type"; Option)
        {
            Caption = 'CWIP G/L Type';
            OptionCaption = ' ,Labor,Material,Overheads';
            OptionMembers = " ",Labor,Material,Overheads;
        }
        field(16564; CWIP; Boolean)
        {
            Caption = 'CWIP';
            Editable = false;
        }
        field(16565; "Shift Type"; Option)
        {
            Caption = 'Shift Type';
            OptionCaption = 'Single,Double,Triple';
            OptionMembers = Single,Double,Triple;
        }
        field(16566; "Industry Type"; Option)
        {
            Caption = 'Industry Type';
            OptionCaption = 'Normal,Non Seasonal,Seasonal';
            OptionMembers = Normal,"Non Seasonal",Seasonal;
        }
        field(16567; "No. of Days for Shift"; Integer)
        {
            Caption = 'No. of Days for Shift';
            MinValue = 0;
        }
        field(16568; "VATable Purchase Tax"; Decimal)
        {
            Caption = 'VATable Purchase Tax';
        }
        field(16569; "Sale Return Type"; Option)
        {
            Caption = 'Sale Return Type';
            OptionCaption = ' ,Sales  Cancellation';
            OptionMembers = " ","Sales  Cancellation";
        }
        field(16570; "RG/Service Tax Set Off Date"; Date)
        {
            Caption = 'RG/Service Tax Set Off Date';
        }
        field(16571; "PLA Set Off Date"; Date)
        {
            Caption = 'PLA Set Off Date';
        }
        field(16572; "Insert S.T Recoverable"; Boolean)
        {
            Caption = 'Insert S.T Recoverable';
            Editable = false;
        }
        field(16573; "Offline Application"; Boolean)
        {
            Caption = 'Offline Application';
            Editable = false;
        }
        field(16574; "S.T From Order"; Boolean)
        {
            Caption = 'S.T From Order';
            Editable = false;
        }
        field(16575; "Un Application Entry"; Boolean)
        {
            Caption = 'Un Application Entry';
            Editable = false;
        }
        field(16576; "Include Serv. Tax in TDS Base"; Boolean)
        {
            Caption = 'Include Serv. Tax in TDS Base';
        }
        field(50000; Narration; Text[250])
        {
        }
        field(60006; Narration_OT; Text[200])
        {
            Description = 'Narration';
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Line No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Balance (LCY)";
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    var
    begin
    end;

    var
        Reccustomer: Record 18;
        GeneralLedgerSetup: Record 98;
        Location1: Record 14;
        UserLocation: Record 50007;
        GenJnlTemplate1: Record 80;
}

