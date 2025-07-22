try:
    import wmi
    import platform
    import getpass
    from datetime import datetime

    # Initialize WMI
    c = wmi.WMI()

    # Get system info
    system_info = c.Win32_ComputerSystem()[0]
    manufacturer = system_info.Manufacturer
    model = system_info.Model

    # Get OS info
    os_info = platform.system() + " " + platform.release()

    # Get user profile path
    user_profile = "C:\\Users\\" + getpass.getuser()

    # Get current timestamp (24-hour format with seconds)
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    # Create log entry
    log_entry = (
        f"{user_profile}  {manufacturer}  {model}  {os_info}  {timestamp}\n"
        "-------------------------------------\n"
    )

except Exception as e:
    with open("device_log.txt", "a") as log_file:
        log_file.write(
            f"ERROR: Couldn't collect data - {e}\n"
            "-------------------------------------\n"
        )
else:
    with open("device_log.txt", "a") as log_file:
        log_file.write(log_entry)
