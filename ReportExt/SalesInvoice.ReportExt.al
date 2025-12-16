reportextension 50100 SalesInvoiceExt extends "Standard Sales - Invoice"
{
    dataset
    {
        add(Header)
        {
            column(Due_Date; "Due Date")
            {
            }
        }
    }

    requestpage
    {
        // Add changes to the requestpage here
    }
}