nohup mega-login $EMAIL $PASS && mega-webdav / --public &
python3 combine.py
nohup rclone serve webdav --config rclone.conf --no-modtime combine: --addr :8080 --vfs-cache-mode full --vfs-cache-max-age 1m0s --buffer-size 64M &
nohup ngrok http --domain=comic-lovely-ram.ngrok-free.app 5244 &
alist admin set spidy
alist server
