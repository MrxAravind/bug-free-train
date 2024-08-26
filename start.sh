python3 combine.py
alist admin set spidy
nohup alist server &
mega-login $EMAIL $PASS
nohup rclone serve webdav --config rclone.conf --no-modtime combine: --addr :8080 --vfs-cache-mode full --vfs-cache-max-age 1m0s --buffer-size 64M &
mega-webdav / --public
