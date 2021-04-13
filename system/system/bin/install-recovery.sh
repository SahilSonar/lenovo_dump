#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5336e97001910f99ccf4ef8c3bea7dcbd3187ccf; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:55152c03b759ee1296ca1dc63faac8c44b4da64c EMMC:/dev/block/bootdevice/by-name/recovery 5336e97001910f99ccf4ef8c3bea7dcbd3187ccf 67108864 55152c03b759ee1296ca1dc63faac8c44b4da64c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
