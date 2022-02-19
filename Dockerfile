FROM nixos/nix
RUN nix-env -i mount curl rsync ps flyctl skopeo
COPY boot.sh /boot.sh
CMD /boot.sh
