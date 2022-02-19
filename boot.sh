#!/usr/bin/env bash

echo "Syncing nix store to the persistent volume..."
rsync -av /nix/* /nix_store
mount --bind /nix_store /nix
tail -f /dev/null
