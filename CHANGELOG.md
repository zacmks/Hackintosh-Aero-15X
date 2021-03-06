# Changelog

Notable changes for the project.

## [Unreleased]

- March 2021 Kext updates

## [2.4.2] - 2021-02-06

- OpenCore updated to version 0.6.6
- February 2021 Kext updates
- Updated kexts updater helper script
- Added VoltageShift kext (disabled by default)

## [2.4.1] - 2021-01-09

- Set the picker mode back to builtin text mode
- Enabled the disable DGPU patch, as DGPU is only relevant to High Sierra
- January 2021 Kext updates
- Updated WhateverGreen's deprecated igfxcflbklt to igfxblr
- OpenCore updated to version 0.6.5
- OC config.plist updates and adjustments

## [2.4.0] - 2020-12-26

- Added a few OC 0.6.4 config.plist entries (for the sake of completeness)
- OC gui (by ivmm), and adjustments for better labelling

## [2.3.4] - 2020-12-13

- OpenCore updated to version 0.6.4
- Fix type on README (was breaking POSTINSTALL link )
- Dropped Clover support altogether
- December 2020 Kext updates

## [2.3.3] - 2020-11-03

- OpenCore updated to version 0.6.3
- November 2020 Kext updates
- Working Laptop Ambient Light Sensor
- Added restart entry for OC

## [2.3.2] - 2020-10-05

- October 2020 Kext updates
- OpenCore updated to version 0.6.2
- Removed BT4LEContinuityFixup in favor to OpenCore BT config
- Rollback RealtekRTL8111 to v2.2.2 due some errors

## [2.3.1] - 2020-09-09

- RealtekRTL8111 updated to V2.3.0
- September 2020 Kext updates
- OpenCore updated to version 0.6.1

## [2.3.0] - 2020-08-12

- Added [FAQ](./FAQ.md) section
- Added extra [POSTINSTALL](./POSTINSTALL.md) instructions
- Added helper EFIs (reset, modGRUBShell)
- Added better touchpad support by [@BAndysc](https://github.com/BAndysc)
- Updated SSDTs
- Updated kexts
- Updated OpenCore

## [2.2.0] - 2020-01-27

- Last Clover release

## [2.1.1] - 2019-11-05

- Cleanup Intel CPU PM

## [2.1.0] - 2019-10-31

- New BrcmPatchRAM3
- Updated kexts
- Thunderbolt 3 patches
- Better device id for graphics

## [2.0.1] - 2019-10-08

- Better Mojave Support
- Updated VirtualSMC and drivers 
- Updated kexts

## [2.0.0] - 2019-06-16

- Added fake ambient light sensor (SSDT-ALS0.aml)
- Updated to Clover x64
- Updated efi drivers
- Updated Kexts
- Replaced FakeSMC with VirtualSMC

## [1.1.1] - 2019-04-13

- Updated kexts
- Added a few SSDTs to make the system more mac-machine-like

## [1.1.0] - 2019-03-17

- Added custom Battery SSDT (SSDT-BATT.aml)
- Changed config.plist, config-intel.plist
- Removed DSDT.aml, as it was just neede because of the battery patches

## [1.0.0] - 2019-03-09

- High Sierra support
- Clover
- FakeSMC

[unreleased]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/2.4.2...HEAD
[2.4.2]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/2.4.1...2.4.2
[2.4.1]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/2.4.0...2.4.1
[2.4.0]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/2.3.4...2.4.0
[2.3.4]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/2.3.3...2.3.4
[2.3.3]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/2.3.2...2.3.3
[2.3.2]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/2.3.1...2.3.2
[2.3.1]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/2.3.0...2.3.1
[2.3.0]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/2.2.0...2.3.0
[2.2.0]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/2.1.1...2.2.0
[2.1.1]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/2.1.0...2.1.1
[2.1.0]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/2.0.1...2.1.0
[2.0.1]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/2.0.0...2.0.1
[2.0.0]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/1.1.1...2.0.0
[1.1.1]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/1.1.0...1.1.1
[1.1.0]: https://github.com/zacmks/Hackintosh-Aero-15X/compare/1.0.0...1.1.0
[1.0.0]: https://github.com/zacmks/Hackintosh-Aero-15X/releases/tag/1.0.0