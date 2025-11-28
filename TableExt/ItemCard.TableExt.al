tableextension 50101 ItemCardExt extends Item
{
    fields
    {
        field(50103; "Test Field"; Code[10])
        {
            Caption = 'Unit de test';
            TableRelation = "Unit of Measure".Code;
        }
        // Option

        field(50104; "Test Option"; Option)
        {
            Caption = 'Option de test';
            OptionMembers = " ",One,Two,Three;
            OptionCaption = ' ,Un,Deux,Trois';
        }
        field(50105; "Test Enum"; Enum Cities)
        {
            Caption = 'Enum de test';
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