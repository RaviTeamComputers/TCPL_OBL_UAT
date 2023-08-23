query 50007 "WS Customer List"
{

    elements
    {
        dataitem(Customer; 18)
        {

            SqlJoinType = LeftOuterJoin;
            DataItemTableFilter = "Customer Type" = FILTER('DEALER');
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(Address; Address)
            {
            }
            column(Address_2; "Address 2")
            {
            }
            column(City; City)
            {
            }
            column(Salesperson_Code; "Salesperson Code")
            {
            }
            column(State_Code; "State Code")
            {
            }
            column(State_Desc; "State Desc.")
            {
            }
            column(Longitude; Longitude)
            {
            }
            column(Latitude; Latitude)
            {
            }
            column(EMail; "E-Mail")
            {
            }
            column(PhoneNo; "Phone No.")
            {
            }
            column(CustomerType; "Coco Customer")
            {
            }
            column(ContactName; "Contact")
            {
            }
            column(Dealer_Mobile_No; "Phone No.")
            {
            }
            column(Pin_No; "Pin Code")
            {
            }
            column(SP_Name; "Salesperson Description")
            {
            }
            column(Zone; "Tableau Zone")
            {
            }
            column(SalesTerretory; "Area Code")
            {
            }
            column(SP_mail_ID; "SP E-Maill ID")
            {
            }
            column(SP_Mobile; "Sales Per Mob")
            {
            }
            column(BH_Code; "pch Code")
            {
            }
            column(BH_Name; "pch Name")
            {
            }
            column(BH_Mobile; "PCH Mobile No.")
            {
            }
            column(BH_Mail; "PCH E-Maill ID")
            {
            }
            column(ZM_Code; "Zonal Manager")
            {
            }
            column(ZH_Code; "Zonal Head")
            {
            }
            dataitem(SalespersonPurchaser; "Salesperson/Purchaser")
            {
                DataItemLink = code = Customer."Zonal Manager";
                column(ZM_Name; Name)
                {

                }
                column(ZM_Mail; "E-Mail")
                {

                }
                column(ZM_Mobile; "Phone No.")
                {

                }
                dataitem(SalespersonPurchaser1; "Salesperson/Purchaser")
                {
                    DataItemLink = code = Customer."Zonal Head";
                    column(ZH_Name; Name)
                    {

                    }
                    column(ZH_Mail; "E-Mail")
                    {

                    }
                    column(ZH_Mobile; "Phone No.")
                    {

                    }

                }

            }
        }
    }

}