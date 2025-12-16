report 50100 AnefReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Anef Report';
    RDLCLayout = './Layouts/AnefReport.rdl';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(AnefTable; AnefTable)
        {
            // DataItemTableView = sorting(No) where(No = filter(1 .. 3));
            // Filtre type: Range .., Valeur1 | Valeur2 | Valeur3 |, différent de <>
            column(No; No)
            {

            }
            column(ItemType; ItemType)
            {

            }

            trigger OnPreDataItem()
            var
                myInt: Integer;
                Item: Record Item;
            begin
                // AnefTable.SetRange(No, 1, 2); // Range filter between 1 and 2
                // AnefTable.SetFilter(No, '1..3'); // Range filter between 1 and 3
                // AnefTable.SetFilter(No, '<>2'); // Different from 2

                AnefTable.SetFilter(No, '%1|%2|%3', 1, 3, 2); // Value1 or Value2 or Value3
                AnefTable.SetAscending(No, true); // Sort ascending on No field
                AnefTable.SetAscending(No, false); // Sort descending on No field

                // repeat begin
                //     if Item.Get(AnefTable.ItemType) then 
                //     begin
                //         // Do something with Item record

                //     end;

                // end until Item.Next() = 0;

                // else if:                
            end;

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin

            end;

            trigger OnPostDataItem()
            var
                myInt: Integer;
                AnefCount: Integer;

            begin
                begin
                    AnefCount := AnefTable.Count();
                end;

                if AnefCount > 10 then
                    Message('A est supérieur à 10')
                else if AnefCount = 10 then
                    Message('A est égal à 10')
                else
                    Message('A est inférieur à 10');

            end;
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(FiltreNo; FiltreNo)
                    {
                        Caption = 'Filter No';
                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }

    var
        FiltreNo: Integer;
}