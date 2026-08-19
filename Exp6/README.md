# Ex.No 06 – Transfer Files Between Virtual Machines

## Aim
Find a procedure to transfer files from one virtual machine to another virtual
machine.

## Procedure
There are three ways to transfer files between VMs in VirtualBox:

### 1. Copy and Paste / Drag and Drop
With the VM running: **Devices → Drag and Drop → Bidirectional**
(also available: Host to Guest, Guest to Host, Disabled).

### 2. USB Drive
1. Install the VirtualBox Extension Pack from
   https://www.virtualbox.org/wiki/Downloads
2. Insert the USB device.
3. **File → Preferences → Extensions → + →** browse to the Extension Pack →
   **Open → Install**.
4. Confirm USB is enabled under **Settings → USB**.

### 3. Network Share (Shared Folders)
1. Install VirtualBox Guest Additions:
   **Devices → Install Guest Additions** → run the EXE inside the guest.
2. **Devices → Shared Folders → Shared Folders Settings → +**
3. Set **Folder Path** (browse the host OS folder to share).
4. Give the share a name (use the same name in host and guest).
5. Check **Auto-mount** and **Make permanent**, click **OK**.
6. The share appears in the guest OS under Network Locations
   (e.g. Windows Explorer).

## Result
The procedure to transfer files from one virtual machine to another virtual
machine was executed successfully.
