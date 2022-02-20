#!/usr/bin/env bash

mkdir -p ${DATA_DIR}/source
echo "Syncing nix store to the persistent volume."
rsync -av /nix/* ${DATA_DIR}/nix_store
echo "Mounting nix store to /nix."
mount --bind /nix_store /nix
echo "Starting rsync daemon."
rsync --daemon --no-detach
