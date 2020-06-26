/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLcHuXII.aml, Thu Jun 25 22:14:57 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002C8 (712)
 *     Revision         0x02
 *     Checksum         0x3B
 *     OEM ID           "APPLE "
 *     OEM Table ID     "TbtOnPCH"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "APPLE ", "TbtOnPCH", 0x00001000)
{
    External (_SB_.PCI0.RP13, DeviceObj)
    External (_SB_.PCI0.RP13.PXSX, DeviceObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments
    External (PXSX, DeviceObj)

    Scope (_SB.PCI0.RP13)
    {
        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
            Method (NTFY, 2, NotSerialized)
            {
                If ((Arg0 == 0x02))
                {
                    Notify (\_SB.PCI0.RP13.UPSB.DSB0.NHI0, 0x02) // Device Wake
                }
            }
        }

        Device (UPSB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Device (DSB0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Device (NHI0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_STR, Unicode ("Thunderbolt"))  // _STR: Description String
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
                        {
                            Local0 = Package (0x0B)
                                {
                                    "AAPL,slot-name", 
                                    Buffer (0x09)
                                    {
                                        "Built In"
                                    }, 

                                    "device_type", 
                                    Buffer (0x19)
                                    {
                                        "Thunderbolt 3 Controller"
                                    }, 

                                    "model", 
                                    Buffer (0x1E)
                                    {
                                        "GC Titan Ridge TB3 Controller"
                                    }, 

                                    "name", 
                                    Buffer (0x0F)
                                    {
                                        "UPSB-DSB0-NHI0"
                                    }, 

                                    "power-save", 
                                    One, 
                                    Buffer (One)
                                    {
                                         0x00                                             // .
                                    }
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }

                        Return (Zero)
                    }
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
                    {
                        Local0 = Package (0x06)
                            {
                                "model", 
                                Buffer (0x0A)
                                {
                                    "UPSB-DSB0"
                                }, 

                                "name", 
                                Buffer (0x0A)
                                {
                                    "UPSB-DSB0"
                                }, 

                                "PCIHotplugCapable", 
                                One
                            }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }

                    Return (Zero)
                }
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
                {
                    Local0 = Package (0x06)
                        {
                            "model", 
                            Buffer (0x0A)
                            {
                                "UPSB"
                            }, 

                            "name", 
                            Buffer (0x0A)
                            {
                                "UPSB"
                            }, 

                            "PCI-Thunderbolt", 
                            One
                        }
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }

                Return (Zero)
            }
        }
    }
}

