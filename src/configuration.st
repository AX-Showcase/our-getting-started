USING Siemens.Ax;

CONFIGURATION MyConfiguration
    // Create main task
    TASK Main (PRIORITY := 1);
    // Assign MyProgram to main (cyclic) task
    PROGRAM P1 WITH Main: MyProgram;
    VAR_GLOBAL
        v1 : INT := 4; // initial values
        v2 : INT;
        sum : DINT;
        myString : STRING := 'Hello World';
        // OperatingModes with initializer for VAR_PUBLICs
        OpModeZone1 : OperatingModeController := (Zone := 1);
        OpModeZone2 : OperatingModeController := (Zone := 2);
    END_VAR
END_CONFIGURATION
