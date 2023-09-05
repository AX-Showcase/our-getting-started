USING AxUnit.Assert;
USING AxUnit;
USING Siemens.Ax;

NAMESPACE Test

    {TestFixture}
    CLASS testOperatingModeController
        VAR
            o : OperatingModeController := (Zone := 1);
        END_VAR
        {Test}
        METHOD PUBLIC GetOperatingMode_returns_Automatic
            o.SetOperatingMode(OperatingMode#Automatic);
            Equal(expected := TRUE, actual := o.GetOperatingMode() = OperatingMode#Automatic);
        END_METHOD
    END_CLASS

END_NAMESPACE
