# Hackintosh Aero 15X FAQs

Will you prove an instalation tutorial for Aero 15Xs Hackintosh?
- I do not plan to add a tutorial for it, as there are plenty of resources on the internet on how to make a bootable USB media. You can start with these tutorials and just copy my EFI folder (for the installer and/or on the final Hackintosh installation).

Why not disable the eGPU (`-wegnoegpu` / `disable-external-gpu` property) as default?
- Altough **disabling eGPU makes the laptop sleep more reliably**, disabling it makes an USB-C adapter connected **monitor to not resume**.
- If you need a better sleep and don't care about the external monitor, you can just add the `-wegnoegpu` back to boot options.