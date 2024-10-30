def fr1zeen_exploit():
    # Check if the target device is running Chrome OS version 129
    if get_chrome_os_version() == 129:
        # Bypass enrollment restrictions
        unenroll_device()

        # Grant full access to the Chromebook
        grant_full_access()

        # Reboot the system
        reboot()
    else:
        print("Target device is not running the vulnerable Chrome OS version.")
