USING AxUnit.Assert;
USING AxUnit;
USING Siemens.Ax;

NAMESPACE Test
    {TestFixture}
    CLASS testOperatingModeControllerExt
        VAR
            o : OperatingModeControllerExt := (Zone := 1);
        END_VAR
        {Test}
        METHOD PUBLIC GetZoneValueReturns_0_in_Maintenance_Mode;
            o.SetOperatingMode(OperatingMode#Manual);
            Equal(expected := FALSE, actual := o.GetZoneStatusAsInt() = 0);
            o.SetOperatingMode(OperatingMode#Maintenance);
            Equal(expected := 0, actual := o.GetZoneStatusAsInt());
        END_METHOD
    END_CLASS
END_NAMESPACE
