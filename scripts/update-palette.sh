#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/palettes"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "palette": {
      "color1": "'"${COLOR1}"'",
      "color2": "'"${COLOR2}"'",
      "color3": "'"${COLOR2}"'",
      "color4": "'"${COLOR2}"'"
    }
  }'

echo


# ID=2 TOKEN=BAhJIiVhODYwMjVjYTZhNTQ3MWQ5ZWNmNDg4NmZiMWE1NDE3MgY6BkVG--abf9fa3214ea36fda5e96e7748940a7da6c96236 COLOR1='#fffff' COLOR2='#ddddd' COLOR3='#eeeee' COLOR4='#ccccc' sh scripts/update-palette.sh

# chmod u+x

#
# $ ID=2 TOKEN=BAhJIiVhODYwMjVjYTZhNTQ3MWQ5ZWNmNDg4NmZiMWE1NDE3MgY6BkVG--abf9fa3214ea36fda5e96e7748940a7da6c96236 COLOR1='#fffff' COLOR2='#ddddd' COLOR3='#eeeee' COLOR4='#ccccc' scripts/update-palette.sh
# -bash: scripts/update-palette.sh: Permission denied
# ~/wdi/projects/project-colorpal/colorpal-api (resources)
# $ ID=2 TOKEN=BAhJIiVhODYwMjVjYTZhNTQ3MWQ5ZWNmNDg4NmZiMWE1NDE3MgY6BkVG--abf9fa3214ea36fda5e96e7748940a7da6c96236 COLOR1='#fffff' COLOR2='#ddddd' COLOR3='#eeeee' COLOR4='#ccccc' sh scripts/update-palette.sh
# HTTP/1.1 200 OK
# X-Frame-Options: SAMEORIGIN
# X-XSS-Protection: 1; mode=block
# X-Content-Type-Options: nosniff
# Content-Type: application/json; charset=utf-8
# ETag: W/"77faaece34a325d588e9eb081d0f042c"
# Cache-Control: max-age=0, private, must-revalidate
# X-Request-Id: 843cbc08-b4a4-4a63-9119-d8b0274e06ae
# X-Runtime: 0.098927
# Vary: Origin
# Transfer-Encoding: chunked
#
# {"palette":{"id":2,"color1":"#fffff","color2":"#ddddd","color3":"#ddddd","color4":"#ddddd"}}
