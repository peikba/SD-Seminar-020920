codeunit 50147 "CSD Upgrade Seminar"
{
    Subtype = Upgrade;

    trigger OnCheckPreconditionsPerCompany()
    var
        myInt: Integer;
    begin

    end;

    trigger OnUpgradePerCompany()
    var
        ModuleInfo: ModuleInfo;
    begin
        if NavApp.GetModuleInfo('3c414dd0-ce48-4401-82e8-ec370d5beaf3', ModuleInfo) then begin
            case format(ModuleInfo.AppVersion) of
                '14.0.0.0':
                    begin

                    end;

            end;
    
        end;

    end;

    trigger OnValidateUpgradePerCompany()
    var
        myInt: Integer;
    begin

    end;
}