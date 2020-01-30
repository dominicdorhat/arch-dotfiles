# Config

## Code
**Editor**: vim, Code-OSS 
**terminal**: kitty 
**shell**: bash

## GUI
**Display server**: xorg-server

### i3 (for programming)
**WM**: i3-gaps 
**Status Bar**: polybar 
**Window Switcher**: rofi 
**Display Manager**: LightDM 
**Screen Lock**: i3lock-color 
**Fonts**: noto-fonts (Google) 

### KDE (for multimedia)
**Display Manager**: LightDM 
**DE**: KDE Plasma 4 
**WM**: KWin 

## Network
**General Program**: Network Manager 

## Video 
**Drivers**: xf86-video-intel, xf86-video-vesa, mesa 
**Video Player**: TBD 

## Audio
**Drivers**: ALSA, pulseaudio
**Frontends**: pavucontrol
**Music Player**: Spotify (snap)

## Power Management
**Tool**: tlp, powertop 
    **kernel module**: acpi_call 
    **radio manager**: tlp-dw 
        note: `systemd-rfkill.service` and `system-rfkill.socket` is **masked** to allow `tlp-rdw` to work, `NetworkManager-dispatcher.service` is used instead 
**Inactvity**: DPMS

**Throttling Fix**: throttled 

## Others 
- `etckeeper`: keeps tracks of config changes in `/etc` via `git`
- `gscreenshot`: GTK screenshot utility
- `google-drive-ocamlfuse`: for mounting Google Drive onto filesystem

