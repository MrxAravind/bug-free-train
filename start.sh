wget -qq $CONF
mega-login $EMAIL $PASS && mega-webdav / --public
python3 combine.py
nohup rclone serve webdav --config rclone.conf --no-modtime combine: --addr :8888 --vfs-cache-mode full --vfs-cache-max-age 1m0s --buffer-size 64M > rc.log &
ngrok config add-authtoken 2XLq3mGSJbGO1A97c9ITxs4nNKo_7Mj6ubxS5Z71fJMXhqu9x
nohup ngrok http --domain=amazingly-kind-sunbeam.ngrok-free.app 5244 &
alist admin set spidy
alist server
