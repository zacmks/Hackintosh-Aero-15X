# Hackintosh-Aero-15X
Hackintosh for Gigabyte Aero 15X V8
Tested and working on macOS High Sierra and Mojave

Please see the following for more details:

https://www.tonymacx86.com/threads/guide-aero-15x-v8-high-sierra-nvidia-graphics.267883/

## Specs

```
- Processor: i7-8750H
- Memory: 32GB 2667 MHz DDR4 (Upgraded, original was 16GB)
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
- Intel WiFi/Bluetooth card need to be replaced with a compatible one. (Used here: **Broadcom BCM94352Z**, but Dell DW1830 seems to have better support [for Windows users])
- EFI based

## How to use this repository:
- Root folder has the version of Hackintosh (e.g. 10.13.6 - High Sierra, 10.14.6 - Mojave, etc..)

Then, inside each folder:
- EFI/CLOVER: Clover EFI files (with kexts, configs, patches, etc.)
- Library/Extensions: Has the kext files that needs to be put in your Library/Extensions folder
- patches: Has the used SSDT/DSDT patches for this version

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
- [x] Shutdown/Sleep/Restart
- [x] Saving/Restoring screen brightness on reboot

**Graphics**
- [x] Intel graphics card
- [x] **Nvidia graphics card** (High Sierra only)
- [x] HDMI (with Nvidia GC)

**Misc**
- [x] Sound (internal speakers + mic jack on/off)
- [x] Touchpad

## Not working/Issues
- [ ] Thunderbolt hotplug (does work if plugged in on boot)
- [ ] On Mojave: Nvidia Graphics card (needs drivers release from Nvidia)

## Minor improvements needed
- [ ] Map Brightness UP/DOWN keys
- [ ] Better touchpad support (depends on kext update/release for ELAN touchpad)

### Thunderbolt 3 notes:
- Hotplug can be implemented with unlocked bios (changing the BIOS settings) + SSDT

-----
## Support status:

- MacOS 10.13 (High Sierra) - Deprecated (might receive a few updates)

- MacOS 10.14 (Mojave) - Current supported version <- Release folder based on this

- MacOS 10.15 (High Sierra) - Community tested (releases based on community feedbacks)

