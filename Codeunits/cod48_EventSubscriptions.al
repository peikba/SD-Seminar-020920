codeunit 50148 "Event Subscription"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Company-Initialize", 'OnCompanyInitialize', '', true, true)]
    local procedure InitializeSeminarOnCompanyInitialize()
    var
        SeminarSetup: Record "CSD Seminar Setup";
    begin
        if not SeminarSetup.Get() then begin
            SeminarSetup.init();
            SeminarSetup.Insert();
        end;
    end;

}