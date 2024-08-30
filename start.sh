wget -qq $CONF
mega-login $EMAIL $PASS && mega-webdav / --public
python3 combine.py
nohup rclone serve webdav --config rclone.conf --no-modtime combine: --addr :8080 --vfs-cache-mode full --vfs-cache-max-age 1m0s --buffer-size 64M &
sudo ngrok config add-authtoken 1r7Rk8GArrzk7cvajVFbQrR2Xid_3krk9Z52WeyLjXEMQ7yHy
nohup sudo ngrok http --domain=comic-lovely-ram.ngrok-free.app 5244 &
alist admin set spidy
alist server
