
# USB Device Info Logger

A lightweight Python script that logs key system information each time it's run. Ideal for portable USB usage or logging purposes.

## ✅ Features

- Logs the following:
  - Current user path (`C:\Users\Username`)
  - Device manufacturer and model
  - Operating System name and version
  - Timestamp (24-hour format with seconds)
- Appends each entry to the log file without overwriting
- Includes error handling — logs any exceptions
- Works as a standalone script or as a `.exe`

---

## 📋 Example Log Output

```

## C:\Users\Dimuth  ASUSTeK COMPUTER INC.  Vivobook X1504VA  Windows 11  2025-07-22 14:28:09

```

If something goes wrong:

```

## ERROR: Couldn't collect data - \[error message]

````

---

## 🚀 How to Use

### 1. Install Python & Required Modules

Make sure Python 3.x is installed. Then install required modules:

```bash
pip install wmi
````

> The script uses built-in modules: `getpass`, `platform`, and `datetime`, and one external module: `wmi`.

---

### 2. Run the Script

Run using:

```bash
python usb_logger_real.py
```

A file named `device_log.txt` will be created (or updated) in the same directory.

---

### 3. Optional: Convert to `.exe`

You can convert this script to an executable (no console window):

```bash
pyinstaller --onefile --noconsole usb_logger_real.py
```

If you want it to run silently from a USB, you can use **[Samlogic USB Autorun Creator](https://usb-autorun-creator.en.softonic.com/)** 

* since bat to exe converted files are caught by virus guard this is the best method

---

### 4. (Optional) Add `autorun.inf` for Legacy Windows

> Note: Autorun from USB is blocked on most modern Windows versions (since Windows 7).
> You can use USB AUTO RUN CREATEOR : https://usb-autorun-creator.en.softonic.com/

Example `autorun.inf`:

```ini
[autorun]
label=Kingston 32GB
icon=pen.ico
open=usb_logger.exe
```

---

## ❗ Disclaimer

This project is intended for **educational** and **authorized** usage only. Logging data from systems without user consent may be illegal.

---

## 📄 License

Free to use and modify for personal or academic use.

```


