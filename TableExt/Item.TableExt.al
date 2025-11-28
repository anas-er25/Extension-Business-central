tableextension 50100 ItemExt extends "Item"
{
    fields
    {
        field(50100; "Net Weight (Kg)"; Decimal)
        {
            Caption = 'Poids Net (Kg)';
        }
        field(50101; "Gross Weight (Kg)"; Decimal)
        {
            Caption = 'Poids Brut (Kg)';
        }
        field(50102; "Country of Origin"; Code[10])
        {
            Caption = 'Pays d''Origine';
        }
    }
    
    // keys
    // {
    //     // Add changes to keys here
    // }
    
    // fieldgroups
    // {
    //     // Add changes to field groups here
    // }
    
    var
        myInt: Integer;
}