NAMESPACE Siemens.Ax

    /// In this example, the standard OperatingModeController will be extendet by 
    /// the method GetZoneStatusAsInt(). This coud be an extension to assign a 
    /// the status to an HMI where a INT value is requiired
    CLASS OperatingModeControllerExt EXTENDS OperatingModeController

        METHOD PUBLIC GetZoneStatusAsInt : INT
            // calling a private method with THIS-Operator
            GetZoneStatusAsInt := THIS.CalculateZoneStatus(_operatingMode);
        END_METHOD
        /// Calculate the ZoneNumber depending on active operating mode and zone number
        METHOD PRIVATE CalculateZoneStatus : INT
            VAR_INPUT
                mode : OperatingMode;
            END_VAR
            CASE mode OF
                OperatingMode#Manual:
                    CalculateZoneStatus := Zone;
                    RETURN;
                OperatingMode#Automatic:
                    CalculateZoneStatus := Zone * 10;
                    RETURN;
                OperatingMode#Maintenance:
                    CalculateZoneStatus := 0;
                    RETURN;
            END_CASE;
        END_METHOD
    END_CLASS

END_NAMESPACE
