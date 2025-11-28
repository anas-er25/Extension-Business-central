codeunit 50100 Anef
{
    trigger OnRun()
    begin
        Message('Codeunit Anef is running');
    end;

    procedure MyProcedure()
    begin
        Message('Salam from MyProcedure in Codeunit Anef');
    end;
}