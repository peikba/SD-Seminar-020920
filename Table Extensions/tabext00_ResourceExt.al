tableextension 50100 "CSD Resource" extends Resource
{
    fields
    {
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            DataClassification = AccountData;
            OptionCaption = 'Internal,External';
            OptionMembers = Internal,External;
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = AccountData;
        }
        field(50103; "CSD Quantity per Day"; Decimal)
        {
            Caption = 'Quantity per Day';
            DataClassification = AccountData;
        }
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                TestField("Unit Cost");
            end;
        }
    }
}