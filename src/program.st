USING Siemens.Ax;
PROGRAM MyProgram
    VAR_EXTERNAL
        myString : String;
        v1 : INT;
        v2 : INT;
        sum : DINT;

        // OperatingModes with initializer for VAR_PUBLICs
        OpModeZone1 : OperatingModeController;
        OpModeZone2 : OperatingModeController;
        
    END_VAR

    VAR

    END_VAR

    VAR_TEMP

    END_VAR

    // Call function Add(i1, i2);
    sum := Add(v1, v2);

    // Call function hello world fully qualified
    myString := Siemens.Ax.HelloWorldFunction();
    
    

END_PROGRAM
