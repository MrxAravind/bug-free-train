wget -qq $CONF
python3 combine.py
mega-login $EMAIL $PASS
mega-webdav ./ --public
nohup rclone serve webdav --config rclone.conf --no-modtime combine: --addr :8080 --vfs-cache-mode full --vfs-cache-max-age 1m0s --buffer-size 64M &
alist admin set spidy
alist server
