#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/palettes"
curl "${API}${URL_PATH}/$WORD" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"


echo


# TOKEN=BAhJIiVhODYwMjVjYTZhNTQ3MWQ5ZWNmNDg4NmZiMWE1NDE3MgY6BkVG--abf9fa3214ea36fda5e96e7748940a7da6c96236 sh scripts/get-palette.sh

#
# $ TOKEN=BAhJIiVhODYwMjVjYTZhNTQ3MWQ5ZWNmNDg4NmZiMWE1NDE3MgY6BkVG--abf9fa3214ea36fda5e96e7748940a7da6c96236 sh scripts/get-palette.sh
# HTTP/1.1 200 OK
# X-Frame-Options: SAMEORIGIN
# X-XSS-Protection: 1; mode=block
# X-Content-Type-Options: nosniff
# Content-Type: application/json; charset=utf-8
# ETag: W/"12af4745042114daa7de6a03618ddc87"
# Cache-Control: max-age=0, private, must-revalidate
# X-Request-Id: ac14a10c-37db-4095-a80e-86041f522c78
# X-Runtime: 0.062617
# Vary: Origin
# Transfer-Encoding: chunked
#
# {"palettes":[{"id":2,"color1":"#f08080","color2":"#bed5d6","color3":"#bed5d6","color4":"#bed5d6"}]}
