pageextension 50100 "CSD Resource Card" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea = All;
            }
            field("CSD Quantity per Day"; "CSD Quantity per Day")
            {
                ApplicationArea = All;
            }
        }
        addlast(content)
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowRoom;

                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    var
        [InDataSet]
        ShowRoom: Boolean;
    trigger OnAfterGetRecord()
    begin
        ShowRoom := (Type = Type::Machine);
    end;
    

}