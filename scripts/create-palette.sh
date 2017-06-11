#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/palettes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "palette": {
      "color1": "'"${COLOR1}"'",
      "color2": "'"${COLOR2}"'",
      "color3": "'"${COLOR2}"'",
      "color4": "'"${COLOR2}"'"
    }
  }'

echo



# COLOR1='#f08080' COLOR2='#bed5d6' COLOR3='#eaedf5' COLOR4='#ffff99' TOKEN=BAhJIiVhODYwMjVjYTZhNTQ3MWQ5ZWNmNDg4NmZiMWE1NDE3MgY6BkVG--abf9fa3214ea36fda5e96e7748940a7da6c96236 sh scripts/create-palette.sh

# $ COLOR1='#f08080' COLOR2='#bed5d6' COLOR3='#eaedf5' COLOR4='#ffff99' TOKEN=BAhJIiVhODYwMjVjYTZhNTQ3MWQ5ZWNmNDg4NmZiMWE1NDE3MgY6BkVG--abf9fa3214ea36fda5e96e7748940a7da6c96236 sh scripts/create-palette.sh
# HTTP/1.1 201 Created
# X-Frame-Options: SAMEORIGIN
# X-XSS-Protection: 1; mode=block
# X-Content-Type-Options: nosniff
# Location: http://localhost:4741/palettes/2
# Content-Type: application/json; charset=utf-8
# ETag: W/"6817e6f7bd4ecc720f44921d09178356"
# Cache-Control: max-age=0, private, must-revalidate
# X-Request-Id: 092db6e5-d901-4155-ae93-9034b7a850cb
# X-Runtime: 0.192357
# Vary: Origin
# Transfer-Encoding: chunked
#
# {"palette":{"id":2,"color1":"#f08080","color2":"#bed5d6","color3":"#bed5d6","color4":"#bed5d6"}}
