NAMESPACE Siemens.Ax

    /// Interface for OperatingModeController
    INTERFACE IOperatingModeController
        METHOD SetOperatingMode
            VAR_INPUT
                mode : OperatingMode;
            END_VAR
        END_METHOD
        METHOD GetOperatingMode : OperatingMode
        END_METHOD
    END_INTERFACE

END_NAMESPACE
