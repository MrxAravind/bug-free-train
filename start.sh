wget -qq https://gist.github.com/MrxAravind/cff83e9fa0d8b3f627e4d049c893b776/raw/b52f03825aeddb9a0e997e8b9d8ff0f685287d35/rclone.conf
mega-login $EMAIL $PASS && mega-webdav / --public
python3 combine.py
ngrok config add-authtoken 2XLq3mGSJbGO1A97c9ITxs4nNKo_7Mj6ubxS5Z71fJMXhqu9x
nohup ngrok http --domain=amazingly-kind-sunbeam.ngrok-free.app 5244 &
nohup alist admin set spidy & alist server &
rclone serve webdav --config rclone.conf --no-modtime combine: --addr :8888 --vfs-cache-mode full --vfs-cache-max-age 1m0s --buffer-size 64M > rc.txt
