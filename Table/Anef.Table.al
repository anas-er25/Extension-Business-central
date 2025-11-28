table 50100 AnefTable
{
    DataClassification = ToBeClassified;
    Caption = 'Anef Table';

    fields
    {
        field(1; No; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "ItemType"; Enum "Item Type")
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(key1; No)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}