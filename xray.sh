#!/bin/sh
if [ ! -f UUID ]; then
  UUID="7fec62cf-0a00-48fa-b577-84c08b487f7f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

