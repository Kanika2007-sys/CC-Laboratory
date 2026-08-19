# Ex.No 01 – Virtual Workstation

## Aim
Install VirtualBox/VMware/Equivalent open source cloud workstation with different
flavours of Linux or Windows OS on top of Windows 8 and above.

## Procedure (GUI-based, no source code)
1. Download VirtualBox from https://www.virtualbox.org/wiki/Downloads (Windows hosts).
2. Run the installer, click Next through the Setup Wizard, accept the Custom Setup
   defaults, and confirm the Network Interfaces warning.
3. Click **Install**, then **Finish** to launch VirtualBox.
4. In VirtualBox Manager, click **New**, and fill in:
   - Name: e.g. `Windows 98SE`
   - ISO Image: path to the guest OS ISO
   - Type / Version: matching OS type and version
5. Allocate resources:
   - Base Memory: 512 MB
   - Processors: 1 CPU
6. Create a Virtual Hard Disk (Disk size: 2.00 GB), click **Finish**.
7. Select the VM and click **Start** to boot into the OS installer and complete
   installation.

## Result
VirtualBox installation on a Windows 10 host machine and installation of a
Windows 98 guest operating system were completed successfully.

*(No source code artifacts — this experiment is a GUI installation walkthrough.
See `output.png` for the final desktop screenshot.)*
