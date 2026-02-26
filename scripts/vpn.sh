#!/bin/bash

VPN_DIR="$HOME/open-vpn"

selected=$(ls "$VPN_DIR"/*.ovpn 2>/dev/null | xargs -n1 basename | fzf --prompt="Select VPN: ")

if [ -z "$selected" ]; then
  echo "No VPN selected."
  exit 1
fi

config="$VPN_DIR/$selected"
creds="$VPN_DIR/${selected%.ovpn}.pass"

if [ -f "$creds" ]; then
  sudo openvpn --config "$config" --auth-user-pass "$creds"
else
  sudo openvpn --config "$config" --auth-user-pass
fi
