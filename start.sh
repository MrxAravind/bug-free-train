wget -qq $CONF
python3 combine.py
<<<<<<< HEAD
alist server & rclone serve webdav --log-file serve.log  --config rclone.conf --no-modtime combine: --addr :5244
=======

nohup rclone serve webdav --config rclone.conf --no-modtime combine: --addr :8080 --vfs-cache-mode full --vfs-cache-max-age 1m0s --buffer-size 64M &
alist admin set spidy
alist server
>>>>>>> c82cea1 (Bug Fix)
