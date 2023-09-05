NAMESPACE Siemens.Ax

    /// OperatingModeController is an example for using OOP features in ST
    /// In this example you can:
    /// Set the operatinfg mode with SetOperatingMode(mode := [Automatic, Manual, Maintenance])
    /// Read the active operating mode with GetOperatingMode()
    /// Note: This is just an example without any productive character 
    CLASS OperatingModeController
        IMPLEMENTS IOperatingModeController
        VAR PUBLIC
            Zone : INT;
        END_VAR
        VAR PROTECTED
            _operatingMode : OperatingMode;
        END_VAR
        /// Set the active operating mode
        METHOD PUBLIC SetOperatingMode
            VAR_INPUT
                mode : OperatingMode;
            END_VAR
            _operatingMode := mode;
        END_METHOD
        /// Returns the active operating mode 
        METHOD PUBLIC GetOperatingMode : OperatingMode
            GetOperatingMode := _operatingMode;
        END_METHOD
    END_CLASS

END_NAMESPACE
