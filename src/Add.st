// Functions including overloading of functions 

NAMESPACE Siemens.Ax
    /// Returns the sum of i1 + i2 ot type INT
    FUNCTION Add : DINT
        VAR_INPUT
            i1 : INT;
            i2 : INT;
        END_VAR
            Add := TO_DINT(i1) + TO_DINT(i2);
            // To force an error in AxUnit, uncomment the following line
            // Add := i1 + i2; // 32000 + 32000 leads to an integer overflow
    END_FUNCTION

    /// Returns the sum of i1 + i2 ot type LREAL
    FUNCTION Add : LREAL
        VAR_INPUT
            i1 : LREAL;
            i2 : LREAL;
        END_VAR
        VAR_TEMP
            lb, ub, i : DINT;
        END_VAR

        FOR i := lb TO ub DO
            ;
        END_FOR;
    END_FUNCTION

END_NAMESPACE