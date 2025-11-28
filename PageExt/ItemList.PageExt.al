pageextension 50100 PageExt extends "Item List"
{
    layout
    {
        addafter(Description)
        {
            field("Net Weight (Kg)"; Rec."Net Weight (Kg)")
            {
                ApplicationArea = All;
                Caption = 'Poids Net (Kg)';
            }
            field("Gross Weight (Kg)"; Rec."Gross Weight (Kg)")
            {
                ApplicationArea = All;
                Caption = 'Poids Brut (Kg)';
            }
            field("Country of Origin"; Rec."Country of Origin")
            {
                ApplicationArea = All;
                // Caption = 'Pays d''Origine';
                CaptionML = ENU='Country of Origin', FRA='Pays d''Origine', ESP='País de Origen', DEU='Herkunftsland';
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