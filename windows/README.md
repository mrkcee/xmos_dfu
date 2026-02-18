# Element 4 Firmware Flasher for Windows

A command line alternative to the firmware upgrade tool at [core.jdslabs.com](https://core.jdslabs.com), bypassing WebUSB.

## Contents

- `flash-element4.bat` — Interactive firmware flashing script
- `xmosdfu.exe` — Precompiled XMOS DFU utility
- `el4-firmware/` — Firmware images

## Firmware Versions

Two firmware images are provided:

- Element IV v1.5.1
- Element IV v1.7.4

If your Element 4 is running firmware older than v1.5.1, flash **v1.5.1 first**, then flash **v1.7.4**.

## Usage

1. Connect your Element 4 via USB.
2. Double-click **`flash-element4.bat`** to open it.
3. Follow the on-screen prompts:

```
=============================================
   XMOS FIRMWARE FLASHER - Element 4
=============================================

1 - Flash Element 4 (v1.7.4)
2 - Flash Element 4 (v1.5.1)
3 - View Current Firmware
4 - Revert to Factory Image
5 - EXIT
```

4. Type a number and press **Enter** to select an option.
5. Confirm with `y` when prompted.

Use option **3** to check your current firmware version before flashing.

## Why use this tool?

Firmware updates for Element 4 are normally performed through [core.jdslabs.com](https://core.jdslabs.com), which updates your device directly from the browser. This works reliably on macOS, Linux, and the vast majority of Windows PCs.

However, around 1% of devices have been found to fail to upgrade beyond `v1.5.1`. This is believed to be a WinUSB driver limitation: some flash chips time out via WebUSB for firwmares > `v1.5.1`. If your firmware update fails or stalls at 0% through core.jdslabs.com, there are three possible solutions. 

- Upgrade firmare through core.jdslabs.com using a macOS or Linux system.
- Reach out to jdslabs.com/support and we will replace the flash IC for you. We'll cover shipping both ways.
- Use this tool.