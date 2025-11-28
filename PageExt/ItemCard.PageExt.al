pageextension 50101 PageCardExt extends "Item Card"
{
    layout
    {
        addlast(Item)
        {
            field("Test Field"; Rec."Test Field")
            {
                ApplicationArea = All;
                Caption = 'Unit de test';
            }
            field("Test Option"; Rec."Test Option")
            {
                ApplicationArea = All;
                Caption = 'Option de test';
            }
            field("Test Enum"; Rec."Test Enum")
            {
                ApplicationArea = All;
                Caption = 'Champ de test';
            }
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}