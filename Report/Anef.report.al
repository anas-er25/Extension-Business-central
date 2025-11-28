report 50100 AnefReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Anef Report';
    RDLCLayout = './Layouts/AnefReport.rdlc';
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
            begin

            end;

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin

            end;

            trigger OnPostDataItem()
            var
                myInt: Integer;
            begin

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