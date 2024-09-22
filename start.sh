wget -qq $CONF
python3 combine.py
nohup rclone serve webdav --config rclone.conf --no-modtime combine: --addr :8888 --vfs-cache-mode full --vfs-cache-max-age 1m0s --buffer-size 64M > rc.txt &
alist admin set spidy
alist server
