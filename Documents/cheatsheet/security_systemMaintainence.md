# Security and System Maintainence 

## Security 
### Editing files with sudo 
- running files with `sudo` is dangerous because shell commands can be run from many editors
```bash
sudo --edit filename

# envvironment variable
export SUDO_EDITOR=editor
```
- this creates a copy of the file and writes into it with user priviledges, then only overwrites the original file with root access 

***

## System Maintainence 
### System Upgrade
```bash
pacman -Syu
# never pacman -Sy 
```
- performs a full upgrade of the system, prepare for **post-update** errors 
- ***NEVER PARTIAL UPGRADE*** without advise from upstream developers

#### extra steps for ESP
- for kernel updates and patches, **mount the ESP**, update then copy the new kernel from `\boot` to *ESP*
```bash
cp -a /boot/vmlinuz-linux esp/EFI/arch/
cp -a /boot/initramfs-linux.img esp/EFI/arch/
cp -a /boot/initramfs-linux-fallback.img esp/EFI/arch/
```

### checking for upstream updates
```bash
checkupdates
```
- part of the `pacman-contrib` package 
- helps check for available updates upstream (**doesn't include AUR packages**)


### Checking for errors 
#### list of failed systemd services
```bash
systemctl --failed
```

#### list of error logs 
```bash
journalctl -p 3 -xb 
```
- looks into the log files located in `/var/log`

### Kernel info
```bash
uname -r 
pacman -Q linux
``` 
- to check **booting** kernel and **installed** kernel

### Updating the kernel 
on GPT/UEFI systesm, the ESP may be in another partition that is not `/boot` (e.g. `/boot/efi` or `/efi` (preferred))
- in this case, to prevent kernel locking when updating the kernel, **manually mount** the *ESP*
    - when upgrading the kernel and applying patches, package managers usually do it to `/boot`
- copy the updated kernel and `initramfs` images from `/boot` to the *ESP* or the following alternatives:
    - mount bind
    - `systemd` event triggers
    - filesystem events
    - `mkinitcpio` hooks
    - `pacman` hook