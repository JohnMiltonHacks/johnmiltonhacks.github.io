#!/usr/bin/env bash

spotx_params=()
spotx_params+=("$@")

primaryURL=$(curl -fsL https://JohnMiltonHacks.github.io/SpotifyX-Bash/spotx.sh)

if [ $? -eq 0 ]; then
  bash <(echo "${primaryURL}") "${spotx_params[@]}"
else
  echo "Primary URL failed, trying backup URL..."
  bash <(curl -sSL https://raw.githubusercontent.com/SpotX-Official/SpotX-Bash/main/spotx.sh) "${spotx_params[@]}"
fi
