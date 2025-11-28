page 50100 ANEF
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = AnefTable;
    Caption = 'Anef Page';


    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No"; Rec."No")
                {
                    ApplicationArea = All;
                }
                field("ItemType"; Rec."ItemType")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Salam)
            {

                trigger OnAction()
                begin
                    Message('Salam');
                end;
            }

            action(Counter)
            {
                Image = Info;

                trigger OnAction()
                begin
                    MyProcedure();
                end;
            }

            group(MonGroup)
            {
                action(Action1)
                {

                    trigger OnAction()
                    begin
                        Message('Je suis une action dans un groupe');
                    end;
                }

                action(Action2)
                {

                    trigger OnAction()
                    begin
                        Message('Moi aussi je suis dans un groupe');
                    end;
                }
                action(ProcedureCodeunit)
                {

                    trigger OnAction()
                    begin
                        AnefCod.MyProcedure();
                    end;
                }
                action(RunCodeunit)
                {

                    trigger OnAction()
                    begin
                        AnefCod.Run();
                    end;
                }
            }
        }
    }
    var
        myInt: Integer;
        AnefCod: Codeunit Anef;

    local procedure MyProcedure()
    begin
        myInt := 10;
    end;
}