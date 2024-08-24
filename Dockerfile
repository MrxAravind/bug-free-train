FROM ubuntu:latest

EXPOSE 5244



# Install dependencies
RUN apt-get update && apt-get install -y curl wget python3 python3-pip 
RUN python3 -m pip install configparser --break-system-packages
    
RUN \
 apt-get install wget curl unzip tar -y && \
 wget -q https://downloads.rclone.org/rclone-current-linux-amd64.zip && \
 unzip ./rclone-current-linux-amd64.zip && \
 mv ./rclone-*-linux-amd64/rclone /usr/bin

 RUN \
 wget -q https://github.com/alist-org/alist/releases/download/v3.36.0/alist-linux-amd64.tar.gz && \
 tar -zxvf alist-linux-amd64.tar.gz && \
 chmod +x alist && \
 mv alist /usr/bin

 RUN curl -o /tmp/megacmd.deb https://mega.nz/linux/repo/xUbuntu_24.04/amd64/megacmd_1.7.0-6.1_amd64.deb && \
 apt-get install /tmp/megacmd.deb -y && \
 rm /tmp/megacmd.deb


# Copy scripts
COPY . .

# Start script
CMD ["bash", "start.sh"]
