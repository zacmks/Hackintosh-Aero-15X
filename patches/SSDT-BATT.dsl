/**
 * Copyright 2019 Isaac M. Saito.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
*/
DefinitionBlock("", "SSDT", 2, "hack", "batt", 0)
{
    External(_SB.PCI0.AMW0, DeviceObj)
    External(_SB.PCI0.AMW0.XMBD, MethodObj)
    External(_SB.PCI0.AMW0.XMBC, MethodObj)
    External(_SB.PCI0.AMW0.DBG8, FieldUnitObj)
    
    External(_SB.PCI0.LPCB.EC, DeviceObj)
    External(_SB.PCI0.LPCB.EC.BAT1, DeviceObj)
    External(_SB.PCI0.LPCB.EC.FBFC, IntObj)
    External(\B1SC, FieldUnitObj)
    External(\B1SS, FieldUnitObj)
    
    // Added methods
    Method (B1B2, 2, NotSerialized) { Return (Or (Arg0, ShiftLeft (Arg1, 8))) }
    Method (B1B3, 3, NotSerialized)
    {
        Store(Arg2, Local0)
        Or(Arg1, ShiftLeft(Local0, 8), Local0)
        Or(Arg0, ShiftLeft(Local0, 8), Local0)
        Return(Local0)
    }
    
    // Redirect Replace
    Scope (_SB.PCI0.AMW0)
    {
        Method (WMBD, 3, Serialized)
        {
            If (LEqual (Arg1, 0x68)) {
                Store (0x69, DBG8)
                Store (Arg2, B1B3(^^LPCB.EC.FNW0,^^LPCB.EC.FNW1,^^LPCB.EC.FNW2))
                Return (B1B3(^^LPCB.EC.FNW0,^^LPCB.EC.FNW1,^^LPCB.EC.FNW2))
            } Else {
                Return (XMBD(Arg0, Arg1, Arg2))
            }
        }

        Method (WMBC, 3, Serialized)
        {
            Switch (Arg1)
            {
                Case (0xE4)
                {
                    Return (B1B2(^^LPCB.EC.RPMX,^^LPCB.EC.RPMY))
                }
                Case (0xE5)
                {
                    Return (B1B2(^^LPCB.EC.RMPX,^^LPCB.EC.RMPY))
                }
                Case (0x68)
                {
                    Store (Arg2, ^^LPCB.EC.XFNR)
                    Sleep (0x64)
                    Return (B1B2(^^LPCB.EC.XFNX,^^LPCB.EC.XFNY))
                }
                Default
                {
                    Return (XMBC(Arg0, Arg1, Arg2))
                }
            }
        }
    }
    
    Scope (_SB.PCI0.LPCB.EC)
    {
        OperationRegion (XCF2, EmbeddedControl, Zero, 0x0100)
        Field (XCF2, ByteAcc, Lock, Preserve)
        {
                B1ST,   8, 
                Offset (0x10), 
                ZDC0,8,ZDC1,8, 
                ZFC0,8,ZFC1,8, 
                ZRC0,8,ZRC1,8, 
                ZFV0,8,ZFV1,8, 
                /*CAPW*/,   16, 
                /*CAPL*/,   16, 
                /*BGR1*/,   16, 
                /*BGR2*/,   16, 
                ZDG0,8,ZDG1,8, 
                ZCR0,8,ZCR1,8, 
                Offset (0x7E), 
                /*LUXH*/,   8, 
                /*LUXL*/,   8, 
                /*CA10*/,   16, 
                /*CA20*/,   16, 
                /*CA30*/,   16, 
                /*CA40*/,   16, 
                /*CA50*/,   16, 
                /*CA95*/,   16, 
                /*CA99*/,   16, 
                /*LSCT*/,   16, 
                /*SCIN*/,   8, 
                /*FCHG*/,   8, 
                /*CA15*/,   16, 
                /*LUXV*/,   16, 
                /*LUXN*/,   16, 
                /*CA60*/,   16, 
                /*CA80*/,   16, 
                /*MCNT*/,   16, 
                /*TBF2*/,   16, 
                FNW0,8,FNW1,8,FNW2,8, 
                XFNR,   8, 
                XFNX,8,XFNY,8, 
                Offset (0xF0), 
                /*TSW0*/,   16, 
                /*TSW1*/,   16, 
                /*TSW2*/,   16, 
                /*TSW3*/,   16, 
                /*TSW4*/,   16, 
                /*TSW5*/,   16, 
                RPMX,8,RPMY,8, 
                RMPX,8,RMPY,8,
        }
        
        // Rename Replace
        Scope (BAT1)
        {
            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Name (BPKG, Package (0x0D)
                {
                    One, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    One, 
                    0xFFFFFFFF, 
                    Zero, 
                    Zero, 
                    0x64, 
                    Zero, 
                    " ", 
                    " ", 
                    "LI-ION", 
                    "GIGABYTE"
                })
                Store ("Aero 15", Index (BPKG, 0x09))
                Store (B1B2(ZDC0,ZDC1), Index (BPKG, One))
                Store (B1B2(ZFC0,ZFC1), Index (BPKG, 0x02))
                Store (B1B2(ZDG0,ZDG1), Index (BPKG, 0x04))
                If (B1B2(ZFC0,ZFC1))
                {
                    Store (B1B2(ZFC0,ZFC1), FBFC)
                    Store (Divide (B1B2(ZFC0,ZFC1), 0x0A, ), Index (BPKG, 0x05))
                    Store (Divide (B1B2(ZFC0,ZFC1), 0x19, ), Index (BPKG, 0x06))
                    Store (Divide (B1B2(ZFC0,ZFC1), 0x64, ), Index (BPKG, 0x07))
                }

                Return (BPKG)
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Name (PKG1, Package (0x04)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (And (B1ST, 0x07), Index (PKG1, Zero))
                Store (B1B2(ZCR0,ZCR1), Index (PKG1, One))
                Store (B1B2(ZRC0,ZRC1), Index (PKG1, 0x02))
                Store (Divide (Multiply (B1B2(ZRC0,ZRC1), FBFC), B1B2(ZFC0,ZFC1), ), Index (PKG1, 0x02))
                Store (B1B2(ZFV0,ZFV1), Index (PKG1, 0x03))
                Return (PKG1)
            }

            Method (BATS, 0, NotSerialized)
            {
                Store (B1B2(ZRC0,ZRC1), B1SC)
                Store (B1ST, B1SS)
                Notify (BAT1, 0x80)
                Notify (BAT1, 0x81)
            }
        }
    }
}