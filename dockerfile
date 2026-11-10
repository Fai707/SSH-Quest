FROM debian:13-slim

RUN useradd --create-home --shell /bin/bash guest


RUN mkdir -p /etc/maintenance/archive/old/important-data \
    && echo "Flag{"$(echo $(date) | base64)"}"'\n send the flag to one of the admins' > /etc/maintenance/archive/old/im>
    && chmod 644 /etc/maintenance/archive/old/important-data/flag.txt

USER guest
WORKDIR /home/guest

CMD ["/bin/bash"]
