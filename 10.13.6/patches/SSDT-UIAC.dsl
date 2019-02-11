// SSDT-UIAC-ALL.dsl
//
// This SSDT can be used as a template to build your own
// customization for USBInjectAll.kext.
//
// This SSDT contains all ports, so using it is the same as without
// a custom SSDT.  Delete ports that are not connected or ports you
// do not need.
//
// Change the UsbConnector or portType as needed to match your
// actual USB configuration.
//
// Note:
// portType=0 seems to indicate normal external USB2 port (as seen in MacBookPro8,1)
// portType=2 seems to indicate "internal device" (as seen in MacBookPro8,1)
// portType=4 is used by MacBookPro8,3 (reason/purpose unknown)
//

DefinitionBlock ("", "SSDT", 2, "hack", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")
        Name(RMCF, Package()
        {
            // USB Power Properties for Sierra (using USBInjectAll injection)
            "AppleBusPowerController", Package()
            {
                // these values from MacBookPro15,1
                "kUSBSleepPortCurrentLimit", 3000,
                "kUSBWakePortCurrentLimit", 3000,
            },
            "8086_a36d", Package()
            {
                "port-count", Buffer() { 26, 0, 0, 0 },
                "ports", Package()
                {
                    "HS02", Package() // Far Right
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS03", Package() // Left
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS04", Package() // Near Right
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "HS09", Package() // HD WebCam
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 9, 0, 0, 0 },
                    },
                    "HS10", Package() // WiFi Bluetooth
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
                    "HS11", Package() // Keyboard
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 11, 0, 0, 0 },
                    },
                    "SS02", Package() // Far Right
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 18, 0, 0, 0 },
                    },
                    "SS03", Package() // Left
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 19, 0, 0, 0 },
                    },
                    "SS04", Package() // Near Right
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 20, 0, 0, 0 },
                    },
                    "SS05", Package() // Card Reader
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 21, 0, 0, 0 },
                    },
                },
            },
        })
    }
}
//EOF