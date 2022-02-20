FROM nixos/nix
RUN nix-env -i mount curl rsync ps flyctl skopeo
COPY boot.sh /boot.sh
COPY rsyncd.conf /etc/rsyncd.conf
CMD /boot.sh
