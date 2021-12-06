[Buy me a beer ;-)](https://www.paypal.com/donate?business=4UYU36A9L2PGS&currency_code=USD)

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/donate?business=4UYU36A9L2PGS&currency_code=USD)

# Hackintosh-Aero-15X
Hackintosh for Gigabyte Aero 15X V8
Tested and working (at some point) on macOS High Sierra, Mojave, Catalina, and Big Sur.

Please see the following for more details:

https://www.tonymacx86.com/threads/guide-aero-15x-v8-mojave-catalina.287164/

## Specs

```
- Processor: i7-8750H
- Memory: 32GB 2667 MHz DDR4 (Upgraded, originally was 16GB)
- Panel: LCD FHD 144Hz 1920x1080 IPS
- Graphics: Intel UHD Graphics 630 + NVIDIA GeForce GTX 1070 GDDR5 8GB

I/O | Ports:

- 3x USB 3.1 Gen1 (Type-A)
- 1x Thunderbolt™ 3 (USB Type-C)
- 1x HDMI 2.0
- 1x mini DP 1.4
- 1x 3.5mm Headphone/Microphone Combo Jack
- 1x SD Card Reader
- 1x DC-in Jack
- 1x RJ-45

Misc:
- Internal Speaker
- HD Camera
```
### Notes:
- Original Intel WiFi/Bluetooth was replaced with a macOS compatible one. (Used here: **Broadcom BCM94352Z**. But the Dell DW1830 should work better if you are dual-booting with Windows)
- Intel WiFi/Bluetooth card can be made usable with [itlwm](https://github.com/OpenIntelWireless/itlwm) project 
- EFI based

## How to use this repository:

### OpenCore

`/EFI/` has a general config for OpenCore. Consider the current supported macOS version of this repository
- EFI/OC: All necessary OpenCore files (with kexts, configs, patches, etc.)
- EFI/Boot: Has other necessary boot files

**Clover is not supported anymore. Last Clover release: [2.2.0-Clover_Latest](https://github.com/zacmks/Hackintosh-Aero-15X/releases/tag/2.2.0-Clover_Latest)

## Working

**USB Based Devices**
- [x] All USB ports (2.0 + 3.0)
- [x] Card Reader (3.0)
- [x] HD Camera (2.0)
- [x] Keyboard (2.0)
- [x] Bluetooth (Internal 2.0)

**Network**
- [x] Ethernet card
- [x] WiFi + Bluetooth

**Power**
- [x] CPU power management
- [x] Battery indicator
- [x] USB PM
- [x] Shutdown/*Sleep/Restart
- [x] Ambient Light Sensor & Saving/Restoring screen brightness on reboot
- [x] **Disable eGPU to save power

*\* For Sleep: Add **-wegnoegpu** to your boot-args.* **This disables USB-C external monitor**

*\*\* Prefer to use **SSDT-Disable-DGPU.aml** patch to save power as it ACPI disables the eGPU.* **This also disables USB-C external monitor** (**-wegnoegpu** can be used in conjunction with **SSDT-Disable-DGPU.aml**)

**Graphics**
- [x] Intel graphics card
- [x] HDMI (**High Sierra only** with Nvidia GC)

**Misc**
- [x] Sound (internal speakers + mic jack on/off)
- [x] Touchpad + Gestures
- [x] Thunderbolt hotplug (see: [POSTINSTALL](./POSTINSTALL.md))

## Not working/Issues

- [ ] Nvidia Graphics card (Only High Sierra with WebDrivers)

---
## Support status:

- MacOS 10.13 (High Sierra) - NVIDIA Deprecated (*Could work* but does not receive updates)

- MacOS 10.14 (Mojave), and MacOS 10.15 (Catalina) - Old Stable

- MacOS 11 (Big Sur) - Currently supported version

## Special thanks to:

* [RehabMan](https://github.com/RehabMan) for his great guides, tools, tutorials, DSDTs, kexts and contribution to the Hackintosh community

* [acidanthera](https://github.com/acidanthera) for all the kexts, tools and contribution to the Hackintosh community

* [vit9696](https://github.com/vit9696) for all the kexts, tools and contribution to the Hackintosh community

* [PMHeart](https://github.com/PMHeart) for all the kexts, tools and contribution to the Hackintosh community

* [al3xtjames](https://github.com/al3xtjames) for all the kexts, tools and contribution to the Hackintosh community

* [Andrey1970AppleLife](https://github.com/Andrey1970AppleLife) for all the kexts, tools and contribution to the Hackintosh community

* [corpnewt](https://github.com/corpnewt) for SSDTTime

* [headkaze](https://github.com/headkaze) for his tools and great tutorials

* [OpenCore Project](https://github.com/acidanthera/OpenCorePkg) for making this possible

* [Clover Project](https://sourceforge.net/projects/cloverefiboot/) for creating Clover bootloader and for making this possible

* [aar0npham](https://github.com/aar0npham) for testing and giving great feedbacks

* [BAndysc](https://github.com/BAndysc) for ELAN touchpad support

And many many other people with contributions on these projects
