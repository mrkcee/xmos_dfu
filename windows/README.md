# Element 4 Firmware Flasher for Windows

A command line alternative to the firmware upgrade tool at [core.jdslabs.com](https://core.jdslabs.com), bypassing WebUSB.

## Contents

- `flash-element4.bat` — Interactive firmware flashing script
- `xmosdfu.exe` — Precompiled XMOS DFU utility
- `el4-firmware/` — Firmware images

## Firmware Versions

Two firmware images are provided:

| Image | For devices running... |
|-------|------------------------|
| **v1.5.1** | Older firmware (before v1.5.1) |
| **v1.7.4** | v1.5.1 or later |

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

## Troubleshooting

- **Device not detected:** Ensure your Element 4 is connected and powered on. Try a different USB port or cable.
- **Script closes immediately:** Right-click `flash-element4.bat` and select *Run as administrator*.
