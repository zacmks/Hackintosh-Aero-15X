/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLtd2Cr1.aml, Wed Sep 11 22:01:25 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000089 (137)
 *     Revision         0x02
 *     Checksum         0xEB
 *     OEM ID           "hack"
 *     OEM Table ID     "DMAC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "DMAC", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.LPCB)
    {
        Device (DMAC)
        {
            Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x01,               // Alignment
                    0x20,               // Length
                    )
                IO (Decode16,
                    0x0081,             // Range Minimum
                    0x0081,             // Range Maximum
                    0x01,               // Alignment
                    0x11,               // Length
                    )
                IO (Decode16,
                    0x0093,             // Range Minimum
                    0x0093,             // Range Maximum
                    0x01,               // Alignment
                    0x0D,               // Length
                    )
                IO (Decode16,
                    0x00C0,             // Range Minimum
                    0x00C0,             // Range Maximum
                    0x01,               // Alignment
                    0x20,               // Length
                    )
                DMA (Compatibility, NotBusMaster, Transfer8_16, )
                    {4}
            })
        }
    }
}

