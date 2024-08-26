FROM ubuntu:latest
EXPOSE 4443



# Install dependencies
RUN apt-get update && apt-get install -y curl wget python3 python3-pip 
    
RUN curl -o /tmp/megacmd.deb https://mega.nz/linux/repo/xUbuntu_24.04/amd64/megacmd_1.7.0-6.1_amd64.deb && \
 apt-get install /tmp/megacmd.deb -y && \
 rm /tmp/megacmd.deb


# Copy scripts
COPY . .
CMD ["bash", "server.sh"]
