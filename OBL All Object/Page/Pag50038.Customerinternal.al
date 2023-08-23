page 50038 "Customer internal"
{
    ApplicationArea = All;
    Caption = 'Customer internal';
    PageType = List;
    SourceTable = Customer;
    UsageCategory = Lists;
    InsertAllowed = true;
    ModifyAllowed = true;
    DeleteAllowed = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Creation Date"; Rec."Creation Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Creation Date field.';
                }
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a different customer who will be invoiced for products that you sell to the customer in the Name field on the customer card.';
                }
                field("Virtual ID"; Rec."Virtual ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Virtual ID field.';
                }
                field("Area Code"; Rec."Area Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Area Code field.';
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a code for the salesperson who normally handles this customer''s account.';
                }
                field("PCH Code"; Rec."PCH Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PCH Code field.';
                }
                field("Zonal Manager"; Rec."Zonal Manager")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Zonal Manager field.';
                }
                field("Zonal Head"; Rec."Zonal Head")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Zonal Head field.';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s email address.';
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that the related record is blocked from being posted in transactions, for example a customer that is declared insolvent or an item that is placed in quarantine.';
                }
                field("Customer Type"; Rec."Customer Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Type field.';
                }
                field("CC Team"; Rec."CC Team")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CC Team field.';
                }
                field("GST Registration No."; Rec."GST Registration No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s goods and service tax registration number issued by authorized body.';
                }

                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the street and number.';
                }
                field("Address 2"; Rec."Address 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies additional address information.';
                }

                field("Mobile No."; Rec."Mobile No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mobile No. field.';
                }
                field("Mobile Phone No."; Rec."Mobile Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s mobile telephone number.';
                }

                ///////
                field("ACD (Previous Year)"; Rec."ACD (Previous Year)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ACD (Previous Year) field.';
                }
                field("ACP (Current Year)"; Rec."ACP (Current Year)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ACP (Current Year) field.';
                }
                field("ACP (Last 12m)"; Rec."ACP (Last 12m)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ACP (Last 12m) field.';
                }
                field("ACP (Previous Year)"; Rec."ACP (Previous Year)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ACP (Previous Year) field.';
                }
                field("ACPD (Current Year)"; Rec."ACPD (Current Year)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ACPD (Current Year) field.';
                }
                field("ACPD (Last 12m)"; Rec."ACPD (Last 12m)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ACPD (Last 12m) field.';
                }
                field("ARN No."; Rec."ARN No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ARN number in case goods and service tax registration number is not available or applied by the party';
                }
                field("Aadhaar No."; Rec."Aadhaar No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Aadhaar No. field.';
                }
                field("GST Registration Type"; Rec."GST Registration Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the goods and services Tax registration type of party.';
                }
                field("GST Customer Type"; Rec."GST Customer Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of GST registration for the customer. For example, Registered/Un-registered/Export/Deemed Export etc..';

                }
                field("Aggregate Turnover"; Rec."Aggregate Turnover")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the customer last year aggregate turnover is less than 10 crores or more than 10 crores';
                }
                field("Allow Auto Debit"; Rec."Allow Auto Debit")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Allow Auto Debit field.';
                }
                field("Allow Line Disc."; Rec."Allow Line Disc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if a sales line discount is calculated when a special sales price is offered according to setup in the Sales Prices window.';
                }
                field("Allow Multiple Posting Groups"; Rec."Allow Multiple Posting Groups")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if multiple posting groups can be used for posting business transactions for this customer.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field("Application Method"; Rec."Application Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how to apply payments to entries for this customer.';
                }

                field("As on Date"; Rec."As on Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the As on Date field.';
                }
                field("As on Date IBOT"; Rec."As on Date IBOT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the As on Date IBOT field.';
                }
                field("Assessee Code"; Rec."Assessee Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Assessee Code by whom any tax or sum of money is payable';
                }
                field("Available Credit Limit IBOT"; Rec."Available Credit Limit IBOT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Available Credit Limit IBOT field.';
                }
                field(Balance; Rec.Balance)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Balance field.';
                }
                field("Balance (LCY)"; Rec."Balance (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the payment amount that the customer owes for completed sales. This value is also known as the customer''s balance.';
                }
                field("Balance Conf Recd Date"; Rec."Balance Conf Recd Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Balance Conf Recd Date field.';
                }
                field("Balance Confirmation"; Rec."Balance Confirmation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Balance Confirmation field.';
                }
                field("Balance Due"; Rec."Balance Due")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Balance Due field.';
                }
                field("Balance Due (LCY)"; Rec."Balance Due (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies payments from the customer that are overdue per today''s date.';
                }
                field("Bank Account Name"; Rec."Bank Account Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Account Name field.';
                }
                field("Bank Account No."; Rec."Bank Account No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Account No. field.';
                }
                field("Bank Other Details"; Rec."Bank Other Details")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Other Details field.';
                }
                field("Base Calendar Code"; Rec."Base Calendar Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a customizable calendar for shipment planning that holds the customer''s working days and holidays.';
                }
                field("Bill-To No. of Blanket Orders"; Rec."Bill-To No. of Blanket Orders")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many blanket orders have been registered for the customer when the customer acts as the bill-to customer.';
                }
                field("Bill-To No. of Credit Memos"; Rec."Bill-To No. of Credit Memos")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many credit memos have been registered for the customer when the customer acts as the bill-to customer.';
                }
                field("Bill-To No. of Invoices"; Rec."Bill-To No. of Invoices")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many invoices have been registered for the customer when the customer acts as the bill-to customer.';
                }
                field("Bill-To No. of Orders"; Rec."Bill-To No. of Orders")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many sales orders have been registered for the customer when the customer acts as the bill-to customer.';
                }
                field("Bill-To No. of Pstd. Cr. Memos"; Rec."Bill-To No. of Pstd. Cr. Memos")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many posted credit memos have been registered for the customer when the customer acts as the bill-to customer.';
                }
                field("Bill-To No. of Pstd. Invoices"; Rec."Bill-To No. of Pstd. Invoices")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many posted invoices have been registered for the customer when the customer acts as the bill-to customer.';
                }
                field("Bill-To No. of Pstd. Return R."; Rec."Bill-To No. of Pstd. Return R.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many posted return receipts have been registered for the customer when the customer acts as the bill-to customer.';
                }
                field("Bill-To No. of Pstd. Shipments"; Rec."Bill-To No. of Pstd. Shipments")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many posted shipments have been registered for the customer when the customer acts as the bill-to customer.';
                }
                field("Bill-To No. of Quotes"; Rec."Bill-To No. of Quotes")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many quotes have been registered for the customer when the customer acts as the bill-to customer.';
                }
                field("Bill-To No. of Return Orders"; Rec."Bill-To No. of Return Orders")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many return orders have been registered for the customer when the customer acts as the bill-to customer.';
                }

                field("Bill-to No. Of Archived Doc."; Rec."Bill-to No. Of Archived Doc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bill-to No. Of Archived Doc. field.';
                }
                field("Billing FY21"; Rec."Billing FY21")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Billing FY21 field.';
                }
                field("Billing FY22"; Rec."Billing FY22")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Billing FY22 field.';
                }
                field("Blanket Amount"; Rec."Blanket Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Blanket Amount field.';
                }
                field("Block Payment Tolerance"; Rec."Block Payment Tolerance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that the customer is not allowed a payment tolerance.';
                }

                field("Blocked For Customer Ledger"; Rec."Blocked For Customer Ledger")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Blocked For Customer Ledger field.';
                }
                field("Blocked Old"; Rec."Blocked Old")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Blocked field.';
                }
                field("Budgeted Amount"; Rec."Budgeted Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Budgeted Amount field.';
                }
                field("C-Form Pending"; Rec."C-Form Pending")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the C-Form Pending field.';
                }

                field("CF Customer"; Rec."CF Customer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CF Customer field.';
                }
                field("CF Limit"; Rec."CF Limit")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CF Limit field.';
                }
                field("CTS 1"; Rec."CTS 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CTS 1 field.';
                }
                field("CTS 2"; Rec."CTS 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CTS 2 field.';
                }
                field("CXO Target"; Rec."CXO Target")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CXO Target field.';
                }
                field("CXO Tie Up"; Rec."CXO Tie Up")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CXO Tie Up field.';
                }
                field("Cash Flow Payment Terms Code"; Rec."Cash Flow Payment Terms Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a payment term that will be used to calculate cash flow for the customer.';
                }
                field("Chain Name"; Rec."Chain Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chain Name field.';
                }
                field("Cibil Score"; Rec."Cibil Score")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cibil Score field.';
                }
                field("Cibil Score Date"; Rec."Cibil Score Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cibil Score Date field.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the city.';
                }
                field("Coco Customer"; Rec."Coco Customer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Coco Customer field.';
                }
                field("Collection Method"; Rec."Collection Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Collection Method field.';
                }
                field("Combine Shipments"; Rec."Combine Shipments")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if several orders delivered to the customer can appear on the same sales invoice.';
                }
                field(Comment; Rec.Comment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Comment field.';
                }
                field(Contact; Rec.Contact)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the person you regularly contact when you do business with this customer.';
                }
                field("Contact Graph Id"; Rec."Contact Graph Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Contact Graph Id field.';
                }
                field("Contact ID"; Rec."Contact ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the contact Id from exchange.';
                }
                field("Contact Type"; Rec."Contact Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the contact is a company or a person.';
                }
                field("Contract Gain/Loss Amount"; Rec."Contract Gain/Loss Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Contract Gain/Loss Amount field.';
                }
                field("Copy Sell-to Addr. to Qte From"; Rec."Copy Sell-to Addr. to Qte From")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies which customer address is inserted on sales quotes that you create for the customer.';
                }
                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the country/region of the address.';
                }
                field(County; Rec.County)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the state, province or county as a part of the address.';
                }
                field("Coupled to CRM"; Rec."Coupled to CRM")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that the customer is coupled to an account in Dataverse.';
                }
                field("Cr. Memo Amounts"; Rec."Cr. Memo Amounts")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cr. Memo Amounts field.';
                }
                field("Cr. Memo Amounts (LCY)"; Rec."Cr. Memo Amounts (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cr. Memo Amounts (LCY) field.';
                }
                field("Create for Bell"; Rec."Create for Bell")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Create for Bell field.';
                }
                field("Create for Orient"; Rec."Create for Orient")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Create for Orient field.';
                }
                field("Created By"; Rec."Created By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created By field.';
                }

                field("Credit Amount"; Rec."Credit Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Credit Amount field.';
                }
                field("Credit Amount (LCY)"; Rec."Credit Amount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Credit Amount (LCY) field.';
                }
                field("Credit Limit (LCY)"; Rec."Credit Limit (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the maximum amount you allow the customer to exceed the payment balance before warnings are issued.';
                }
                field("Credit Rating"; Rec."Credit Rating")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Credit Rating field.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the default currency for the customer.';
                }
                field("Currency Id"; Rec."Currency Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Currency Id field.';
                }
                field("Cust Landline No."; Rec."Cust Landline No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cust Landline No. field.';
                }
                field("Cust. Company Type"; Rec."Cust. Company Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cust. Company Type field.';
                }
                field("Customer Category"; Rec."Customer Category")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Category field.';
                }
                field("Customer Classification"; Rec."Customer Classification")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Classification field.';
                }
                field("Customer Disc. Group"; Rec."Customer Disc. Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer discount group code, which you can use as a criterion to set up special discounts in the Sales Line Discounts window.';
                }
                field("Customer Posting Group"; Rec."Customer Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s market type to link business transactions to.';
                }
                field("Customer Price Group"; Rec."Customer Price Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer price group code, which you can use to set up special sales prices in the Sales Prices window.';
                }
                field("Customer Status"; Rec."Customer Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Status field.';
                }

                field("DSO IBOT"; Rec."DSO IBOT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DSO IBOT field.';
                }
                field("Dealer Category"; Rec."Dealer Category")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dealer Category field.';
                }
                field("Dealer File No."; Rec."Dealer File No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dealer File No. field.';
                }
                field("Debit Amount"; Rec."Debit Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Debit Amount field.';
                }
                field("Debit Amount (LCY)"; Rec."Debit Amount (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Debit Amount (LCY) field.';
                }
                field("Disable Search by Name"; Rec."Disable Search by Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that you can change the customer name on open sales documents. The change applies only to the documents.';
                }
                field("Discount Group"; Rec."Discount Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount Group field.';
                }
                field("Document Sending Profile"; Rec."Document Sending Profile")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the preferred method of sending documents to this customer, so that you do not have to select a sending option every time that you post and send a document to the customer. Sales documents to this customer will be sent using the specified sending profile and will override the default document sending profile.';
                }
                field("E-Commerce Operator"; Rec."E-Commerce Operator")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the party is e-commerce operator.';
                }

                field("EORI Number"; Rec."EORI Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Economic Operators Registration and Identification number that is used when you exchange information with the customs authorities due to trade into or out of the European Union.';
                }
                field("Ex-Factory Amount"; Rec."Ex-Factory Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ex-Factory Amount field.';
                }
                field("Excise Amount"; Rec."Excise Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Excise Amount field.';
                }
                field("Expected Visit Per Month"; Rec."Expected Visit Per Month")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Expected Visit Per Month field.';
                }
                field("Fax No."; Rec."Fax No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s fax number.';
                }
                field("Fin. Charge Memo Amounts (LCY)"; Rec."Fin. Charge Memo Amounts (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fin. Charge Memo Amounts (LCY) field.';
                }
                field("Fin. Charge Terms Code"; Rec."Fin. Charge Terms Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the involved finance charges in case of late payment.';
                }
                field("Finance Charge Memo Amounts"; Rec."Finance Charge Memo Amounts")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Finance Charge Memo Amounts field.';
                }
                field("Form Code"; Rec."Form Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Form Code field.';
                }
                field(GLN; Rec.GLN)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer in connection with electronic document sending.';
                }

                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s trade type to link transactions made for this customer with the appropriate general ledger account according to the general posting setup.';
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Global Dimension 1 Code field.';
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Global Dimension 2 Code field.';
                }
                field("Govt. SP Resp."; Rec."Govt. SP Resp.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Govt. SP Resp. field.';
                }
                field("HQ Town"; Rec."HQ Town")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the HQ Town field.';
                }
                field("Home Page"; Rec."Home Page")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s home page address.';
                }
                field("IC Partner Code"; Rec."IC Partner Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s intercompany partner code.';
                }
                field(Image; Rec.Image)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the picture of the customer, for example, a logo.';
                }
                field("Intrastat Partner Type"; Rec."Intrastat Partner Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies for Intrastat reporting if the customer is a person or a company.';
                }
                field("Inv. Amounts (LCY)"; Rec."Inv. Amounts (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inv. Amounts (LCY) field.';
                }
                field("Inv. Discounts (LCY)"; Rec."Inv. Discounts (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inv. Discounts (LCY) field.';
                }
                field("Invoice Amounts"; Rec."Invoice Amounts")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice Amounts field.';
                }
                field("Invoice Copies"; Rec."Invoice Copies")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Invoice Copies field.';
                }
                field("Invoice Disc. Code"; Rec."Invoice Disc. Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a code for the invoice discount terms that you have defined for the customer.';
                }
                field("Language Code"; Rec."Language Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the language that is used when translating specified text on documents to foreign business partner, such as an item description on an order confirmation.';
                }
                field("Last Billing Date"; Rec."Last Billing Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Billing Date field.';
                }
                field("Last Credit Rating Process"; Rec."Last Credit Rating Process")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Credit Rating Process field.';
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies when the customer card was last modified.';
                }
                field("Last Invoiced Date"; Rec."Last Invoiced Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Invoiced Date field.';
                }
                field("Last Modified Date Time"; Rec."Last Modified Date Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Modified Date Time field.';
                }
                field("Last Statement No."; Rec."Last Statement No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the last statement that was printed for this customer.';
                }
                field(Latitude; Rec.Latitude)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Latitude field.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies from which location sales to this customer will be processed by default.';
                }
                field(Longitude; Rec.Longitude)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Longitude field.';
                }
                field("MTD Collection IBOT"; Rec."MTD Collection IBOT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the MTD Collection IBOT field.';
                }
                field("MTD Sales IBOT"; Rec."MTD Sales IBOT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the MTD Sales IBOT field.';
                }
                field("Minmum Amt pur value"; Rec."Minmum Amt pur value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Minmum Amt pur value field.';
                }
                field("Month Collection Plan"; Rec."Month Collection Plan")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Month Collection Plan field.';
                }
                field("Month Sales Plan"; Rec."Month Sales Plan")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Month Sales Plan field.';
                }
                field("Mother Account Name"; Rec."Mother Account Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mother Account Name field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s name.';
                }
                field("Name 2"; Rec."Name 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies an additional part of the name.';
                }
                field("Net Change"; Rec."Net Change")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Net Change field.';
                }
                field("Net Change (LCY)"; Rec."Net Change (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Net Change (LCY) field.';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the involved entry or record, according to the specified number series.';
                }
                field("No. Series"; Rec."No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. Series field.';
                }
                field("No. of Blanket Orders"; Rec."No. of Blanket Orders")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of sales blanket orders that have been registered for the customer.';
                }
                field("No. of Credit Memos"; Rec."No. of Credit Memos")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of unposted sales credit memos that have been registered for the customer.';
                }
                field("No. of Invoices"; Rec."No. of Invoices")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of unposted sales invoices that have been registered for the customer.';
                }
                field("No. of Orders"; Rec."No. of Orders")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of sales orders that have been registered for the customer.';
                }
                field("No. of Pstd. Credit Memos"; Rec."No. of Pstd. Credit Memos")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of posted sales credit memos that have been registered for the customer.';
                }
                field("No. of Pstd. Invoices"; Rec."No. of Pstd. Invoices")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of posted sales invoices that have been registered for the customer.';
                }
                field("No. of Pstd. Return Receipts"; Rec."No. of Pstd. Return Receipts")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of posted sales return receipts that have been registered for the customer.';
                }
                field("No. of Pstd. Shipments"; Rec."No. of Pstd. Shipments")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of posted sales shipments that have been registered for the customer.';
                }
                field("No. of Quotes"; Rec."No. of Quotes")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of sales quotes that have been registered for the customer.';
                }
                field("No. of Return Orders"; Rec."No. of Return Orders")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of sales return orders that have been registered for the customer.';
                }
                field("No. of Ship-to Addresses"; Rec."No. of Ship-to Addresses")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. of Ship-to Addresses field.';
                }
                field("Not Required"; Rec."Not Required")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Not Required field.';
                }
                field("OBTB Closing Date"; Rec."OBTB Closing Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OBTB Closing Date field.';
                }
                field("OBTB Joining Date"; Rec."OBTB Joining Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OBTB Joining Date field.';
                }
                field("OBTB Status"; Rec."OBTB Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OBTB Status field.';
                }
                field("OBTB Target End Date"; Rec."OBTB Target End Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OBTB Target End Date field.';
                }
                field("OBTB Target First year"; Rec."OBTB Target First year")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OBTB Target First year field.';
                }
                field("OBTB Target Start Date"; Rec."OBTB Target Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OBTB Target Start Date field.';
                }
                field("Old TIN"; Rec."Old TIN")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Old TIN field.';
                }
                field("Other Amounts"; Rec."Other Amounts")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Other Amounts field.';
                }
                field("Other Amounts (LCY)"; Rec."Other Amounts (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Other Amounts (LCY) field.';
                }
                field("Our Account No."; Rec."Our Account No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Our Account No. field.';
                }
                field(Outbreaks; Rec.Outbreaks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outbreaks field.';
                }
                field("Outstanding Amount"; Rec."Outstanding Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Amount field.';
                }
                field("Outstanding Blanket order"; Rec."Outstanding Blanket order")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Blanket order field.';
                }
                field("Outstanding Days"; Rec."Outstanding Days")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Days field.';
                }
                field("Outstanding IBOT"; Rec."Outstanding IBOT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding IBOT field.';
                }
                field("Outstanding Invoices"; Rec."Outstanding Invoices")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Invoices field.';
                }
                field("Outstanding Invoices (LCY)"; Rec."Outstanding Invoices (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies your expected sales income from the customer in LCY based on unpaid sales invoices.';
                }
                field("Outstanding Orders"; Rec."Outstanding Orders")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Orders field.';
                }
                field("Outstanding Orders (LCY)"; Rec."Outstanding Orders (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies your expected sales income from the customer in LCY based on ongoing sales orders.';
                }
                field("Outstanding Serv. Orders (LCY)"; Rec."Outstanding Serv. Orders (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies your expected service income from the customer in LCY based on ongoing service orders.';
                }
                field("Outstanding Serv.Invoices(LCY)"; Rec."Outstanding Serv.Invoices(LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies your expected service income from the customer in LCY based on unpaid service invoices.';
                }
                field("OverDue Amount"; Rec."OverDue Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OverDue Amount field.';
                }
                field("OverDue Amt IBOT"; Rec."OverDue Amt IBOT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OverDue Amt IBOT field.';
                }
                field("OverDue Days"; Rec."OverDue Days")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OverDue Days field.';
                }
                field("P.A.N. No."; Rec."P.A.N. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Permanent Account No. of Party';
                }
                field("P.A.N. Reference No."; Rec."P.A.N. Reference No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the PAN Reference No. in case the PAN is not available or applied by the party';
                }
                field("P.A.N. Status"; Rec."P.A.N. Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the PAN Status as PANAPPLIED,PANNOTAVBL,PANINVALID';
                }
                field("PAN Ref. No."; Rec."PAN Ref. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PAN Ref. No. field.';
                }
                field("PAN Status"; Rec."PAN Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PAN Status field.';
                }

                field("PCH E-Maill ID"; Rec."PCH E-Maill ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PCH E-Maill ID field.';
                }
                field("PCH Mobile No."; Rec."PCH Mobile No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PCH Mobile No. field.';
                }
                field("PCH Name"; Rec."PCH Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PCH Name field.';
                }
                field("PCH Tie Up"; Rec."PCH Tie Up")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PCH Tie Up field.';
                }
                field("PPD %"; Rec."PPD %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PPD % field.';
                }
                field("PPD No. of Days"; Rec."PPD No. of Days")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PPD No. of Days field.';
                }
                field("PYTD Sale IBOT"; Rec."PYTD Sale IBOT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PYTD Sale IBOT field.';
                }
                field("Parent Customer No."; Rec."Parent Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Parent Customer No. field.';
                }
                field("Partner Type"; Rec."Partner Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies for direct debit collections if the customer that the payment is collected from is a person or a company.';
                }
                field(Pay; Rec.Pay)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pay field.';
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how the customer usually submits payment, such as bank transfer or check.';
                }
                field("Payment Method Id"; Rec."Payment Method Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Method Id field.';
                }
                field("Payment Terms Code"; Rec."Payment Terms Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a formula that calculates the payment due date, payment discount date, and payment discount amount.';
                }
                field("Payment Terms Days"; Rec."Payment Terms Days")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Terms Days field.';
                }
                field("Payment Terms Id"; Rec."Payment Terms Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Terms Id field.';
                }
                field(Payments; Rec.Payments)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payments field.';
                }
                field("Payments (LCY)"; Rec."Payments (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sum of payments received from the customer.';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s telephone number.';
                }
                field("Pin Code"; Rec."Pin Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pin Code field.';
                }
                field("Place of Export"; Rec."Place of Export")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Place of Export field.';
                }
                field("Pmt. Disc. Tolerance (LCY)"; Rec."Pmt. Disc. Tolerance (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pmt. Disc. Tolerance (LCY) field.';
                }
                field("Pmt. Discounts (LCY)"; Rec."Pmt. Discounts (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pmt. Discounts (LCY) field.';
                }
                field("Pmt. Tolerance (LCY)"; Rec."Pmt. Tolerance (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pmt. Tolerance (LCY) field.';
                }
                field("Pop Tag"; Rec."Pop Tag")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pop Tag field.';
                }
                field(Population; Rec.Population)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Population field.';
                }
                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the post code.';
                }
                field("Post GST to Customer"; Rec."Post GST to Customer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Post GST to Customer field.';
                }
                field("Preferred Bank Account Code"; Rec."Preferred Bank Account Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s bank account that will be used by default when you process refunds to the customer and direct debit collections.';
                }
                field("Prepayment %"; Rec."Prepayment %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a prepayment percentage that applies to all orders for this customer, regardless of the items or services on the order lines.';
                }
                field("Price Calculation Method"; Rec."Price Calculation Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the default price calculation method.';
                }
                field("Prices Including VAT"; Rec."Prices Including VAT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the Unit Price and Line Amount fields on document lines should be shown with or without VAT.';
                }
                field("Primary Contact No."; Rec."Primary Contact No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the contact number for the customer.';
                }
                field("Print Statements"; Rec."Print Statements")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether to include this customer when you print the Statement report.';
                }
                field(Priority; Rec.Priority)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Priority field.';
                }
                field("Privacy Blocked"; Rec."Privacy Blocked")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether to limit access to data for the data subject during daily operations. This is useful, for example, when protecting data from changes while it is under privacy review.';
                }
                field("Private SP Resp."; Rec."Private SP Resp.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Private SP Resp. field.';
                }
                field("Profit (LCY)"; Rec."Profit (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Profit (LCY) field.';
                }
                field("Prompt Pmt. Details"; Rec."Prompt Pmt. Details")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Prompt Pmt. Details field.';
                }
                field("Purchase Order Pending"; Rec."Purchase Order Pending")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Purchase Order Pending field.';
                }
                field("QL Joining Date"; Rec."QL Joining Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the QL Joining Date field.';
                }
                field("QTD Sales IBOT"; Rec."QTD Sales IBOT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the QTD Sales IBOT field.';
                }
                field("Qtr Target"; Rec."Qtr Target")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Qtr Target field.';
                }
                field("Quantity in Carton"; Rec."Quantity in Carton")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity in Carton field.';
                }
                field("Quantity in Sq. Meters"; Rec."Quantity in Sq. Meters")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity in Sq. Meters field.';
                }
                field(Refunds; Rec.Refunds)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Refunds field.';
                }
                field("Refunds (LCY)"; Rec."Refunds (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sum of refunds received from the customer.';
                }
                field("Registration Number"; Rec."Registration Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the registration number of the customer. You can enter a maximum of 20 characters, both numbers and letters.';
                }
                field("Reminder Amounts"; Rec."Reminder Amounts")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reminder Amounts field.';
                }
                field("Reminder Amounts (LCY)"; Rec."Reminder Amounts (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reminder Amounts (LCY) field.';
                }
                field("Reminder Terms Code"; Rec."Reminder Terms Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how reminders about late payments are handled for this customer.';
                }
                field(Reserve; Rec.Reserve)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether items will never, automatically (Always), or optionally be reserved for this customer. Optional means that you must manually reserve items for this customer.';
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code of the responsibility center, such as a distribution hub, that is associated with the involved user, company, customer, or vendor.';
                }
                field("Revival Date"; Rec."Revival Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Revival Date field.';
                }
                field("SP E-Maill ID"; Rec."SP E-Maill ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SP E-Maill ID field.';
                }
                field("Sales (LCY)"; Rec."Sales (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total net amount of sales to the customer.';
                }
                field("Sales Amount"; Rec."Sales Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Amount field.';
                }
                field("Sales Header No."; Rec."Sales Header No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Header No. field.';
                }
                field("Sales Header Type"; Rec."Sales Header Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Header Type field.';
                }
                field("Sales Per Mob"; Rec."Sales Per Mob")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Per Mob field.';
                }

                field("Salesperson Description"; Rec."Salesperson Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Salesperson Description field.';
                }
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies an alternate name that you can use to search for the record in question when you cannot remember the value in the Name field.';
                }
                field("Security Amount"; Rec."Security Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Amount field.';
                }
                field("Security Checque Max Limit 1"; Rec."Security Checque Max Limit 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Checque Max Limit 1 field.';
                }
                field("Security Checque Max Limit 2"; Rec."Security Checque Max Limit 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Checque Max Limit 2 field.';
                }
                field("Security Cheque 1"; Rec."Security Cheque 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Cheque 1 field.';
                }
                field("Security Cheque 1 A/c No."; Rec."Security Cheque 1 A/c No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Cheque 1 A/c No. field.';
                }
                field("Security Cheque 1 Bank Name"; Rec."Security Cheque 1 Bank Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Cheque 1 Bank Name field.';
                }
                field("Security Cheque 2"; Rec."Security Cheque 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Cheque 2 field.';
                }
                field("Security Cheque 2 A/c No."; Rec."Security Cheque 2 A/c No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Cheque 2 A/c No. field.';
                }
                field("Security Cheque 2 Bank Name"; Rec."Security Cheque 2 Bank Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Cheque 2 Bank Name field.';
                }
                field("Security Chq Availability"; Rec."Security Chq Availability")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Chq Availability field.';
                }
                field("Security Date"; Rec."Security Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Date field.';
                }
                field("Sell-to No. Of Archived Doc."; Rec."Sell-to No. Of Archived Doc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sell-to No. Of Archived Doc. field.';
                }
                field("Serv Shipped Not Invoiced(LCY)"; Rec."Serv Shipped Not Invoiced(LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies your expected service income from the customer in LCY based on service orders that are shipped but not invoiced.';
                }
                field("Service Zone Code"; Rec."Service Zone Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the service zone that is assigned to the customer.';
                }
                field("Ship-to Code"; Rec."Ship-to Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for another shipment address than the customer''s own address, which is entered by default.';
                }
                field("Shipment Method Code"; Rec."Shipment Method Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies which shipment method to use when you ship items to the customer.';
                }
                field("Shipment Method Id"; Rec."Shipment Method Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipment Method Id field.';
                }
                field("Shipped Not Invoiced"; Rec."Shipped Not Invoiced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Shipped Not Invoiced field.';
                }
                field("Shipped Not Invoiced (LCY)"; Rec."Shipped Not Invoiced (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies your expected sales income from the customer in LCY based on ongoing sales orders where items have been shipped.';
                }
                field("Shipping Advice"; Rec."Shipping Advice")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the customer accepts partial shipment of orders.';
                }
                field("Shipping Agent Code"; Rec."Shipping Agent Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the shipping agent who is transporting the items.';
                }
                field("Shipping Agent Service Code"; Rec."Shipping Agent Service Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the shipping agent service to use for this customer.';
                }
                field("Shipping Time"; Rec."Shipping Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how long it takes from when the items are shipped from the warehouse to when they are delivered.';
                }
                field("Sold By"; Rec."Sold By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sold By field.';
                }
                field("State Code"; Rec."State Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s state code. This state code will appear on all sales documents for the customer.';
                }
                field("State Desc."; Rec."State Desc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the State Desc. field.';
                }
                field("Statistics Group"; Rec."Statistics Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Statistics Group field.';
                }
                field("Stop Mail Comunication PCH SP"; Rec."Stop Mail Comunication PCH SP")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Stop Mail Comunication PCH SP field.';
                }
                field("Structure Change Item"; Rec."Structure Change Item")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Structure Change Item field.';
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
                field("TAN No."; Rec."TAN No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TAN No. field.';
                }
                field("TCS Charge Stop Date"; Rec."TCS Charge Stop Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TCS Charge Stop Date field.';
                }
                field("TIN Date"; Rec."TIN Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TIN Date field.';
                }
                field("Tableau Zone"; Rec."Tableau Zone")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Tableau Zone field.';
                }
                field("Tax Area Code"; Rec."Tax Area Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the tax area that is used to calculate and post sales tax.';
                }
                field("Tax Area ID"; Rec."Tax Area ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Tax Area ID field.';
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the sales invoice contains sales tax.';
                }
                field("Telex Answer Back"; Rec."Telex Answer Back")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Telex Answer Back field.';
                }
                field("Telex No."; Rec."Telex No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Telex No. field.';
                }
                field("Territory Code"; Rec."Territory Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Territory Code field.';
                }
                field("Use GLN in Electronic Document"; Rec."Use GLN in Electronic Document")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the GLN is used in electronic documents as a party identification number.';
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the VAT specification of the involved customer or vendor to link transactions made for this record with the appropriate general ledger account according to the VAT posting setup.';
                }
                field("VAT Registration No."; Rec."VAT Registration No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s VAT registration number for customers in EU countries/regions.';
                }
                field("Validate EU Vat Reg. No."; Rec."Validate EU Vat Reg. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Validate EU VAT Reg. No. field.';
                }

                field("YTD Sale IBOT"; Rec."YTD Sale IBOT")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the YTD Sale IBOT field.';
                }

                field(Zone; Rec.Zone)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Zone field.';
                }
                field("state code New"; Rec."state code New")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the state code New field.';
                }
            }
        }
    }
    trigger OnOpenPage()
    var
    begin
        if (UserId <> 'IT005') and (UserId <> 'ADMIN') then
            Error('You Are not Authorized');
    end;
}
