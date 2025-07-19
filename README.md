## 🔌 USB Drive Monitor – Python Script

**A lightweight tool that continuously checks for USB/Pen Drive connections on your Windows PC and logs details of every inserted device, including its drive letter, label, and the top-level file and folder names on the drive.**

---

### 📦 Features

* Detects newly inserted USB drives (real-time monitoring)
* Logs:

  * Timestamp
  * Drive letter (e.g., `E:`)
  * USB label (e.g., `SanDisk 32GB`)
  * **Top-level files and folders** from the root directory of the USB drive (does not recursively list files inside subfolders)
* Stores all logs in a single file with timestamps
* Can be added to Windows Startup to run silently
* Can be converted into a standalone `.exe` (optional)

---

### 📁 Log Output

By default, logs are saved in the same directory as the script with the filename (you can change the location if needed):

```
usb_activity_log.txt  
```

Each entry looks like:

```
[2025-07-19 16:38:50] USB inserted: Drive E: | Label: DIMUTH 32GB
File structure:
    [Folder] MyVideos
    [File]   Resume.pdf
    [File]   Song.mp3
    [Folder] Work
----------------------------------------
```

---

### ⚙️ Customizing Log File Location

To change where the logs are saved, open the `.py` file and **edit this line**:

```python
LOG_FILE = "usb_log.txt"
```

For example, to save logs in `D:/usb_logs/`:

```python
LOG_FILE = "D:/usb_logs/usb_log.txt"
```

Ensure the folder exists, or use Python to create it before running.

---

### 🛠️ Convert `.py` to `.exe` (Optional)

You can turn the script into an executable to run independently of Python:

#### 1. Install PyInstaller:

```bash
pip install pyinstaller
```

#### 2. Create `.exe`:

In the folder where your script is:

```bash
pyinstaller --onefile usblogs.py
```

This creates an `.exe` in the `dist/` folder.

#### 3. Add to Startup (optional):

* Press `Win + R`, type `shell:startup`
* Place a shortcut to the `.exe` in that folder

It will run automatically at Windows startup.

---

### 🐍 Requirements (if running from Python)

* Python 3.7+
* Modules:

  * `pywin32`

Install using:

```bash
pip install pywin32
```

---

### ⚠️ Legal & Usage

**Do not copy, rebrand, or redistribute this tool as your own.**
It is meant for educational or administrative use only. Any misuse is the sole responsibility of the user.

© 2025 Dimuth Sakya – All rights reserved.
