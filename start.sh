#!/bin/sh
set -e

if [ -n "$YT_COOKIES_JSON" ] && [ ! -f "$HOME/app/cookies.json" ]; then
  printf '%s' "$YT_COOKIES_JSON" > "$HOME/app/cookies.json"
  echo "cookies.json written from YT_COOKIES_JSON secret"
fi

export API_PORT="${PORT:-7860}"

cd "$HOME/app/cobalt/api"
exec pnpm start
