FROM amazonlinux:2023

# Install required packages
RUN yum -y update && \
    yum -y install systemd cronie tar gzip git && \
    systemctl enable crond.service

# Configure systemd
COPY cron.d/* /etc/cron.d
COPY mount-ramdisk.sh /usr/local/bin

# Start cron and systemd
CMD /usr/sbin/init
