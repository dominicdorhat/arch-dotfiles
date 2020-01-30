# Network Manager

## Wifi 
### nmcli

list nearby wifi networks: </br>
`nmcli device wifi list`

connect to a wifi network: </br>
`nmcli device wifi connect SSID  password password`

show list of connected interfaces via UUID </br>
`nmcli connection show`

turn off wifi </br>
`nmcli radio wifi off`

list all network devices: </br>
`nmcli device`

## connecting to eduroam 

```bash
sudo wpa_supplicant -c /path/to/wpa_config/file -i wifi_interface -B

# example
sudo wpa_supplicant -c /etc/wpa_supplicant/wpa_supplicant.conf -i wlp0s20f3 -B 

dhcpcd
```

links:

- https://bbs.archlinux.org/viewtopic.php?id=182937
- https://bbs.archlinux.org/viewtopic.php?id=190651