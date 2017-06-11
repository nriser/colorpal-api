#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo


# $ EMAIL="TESTING" PASSWORD="TESTPW" sh scripts/sign-in.sh
# HTTP/1.1 200 OK
# X-Frame-Options: SAMEORIGIN
# X-XSS-Protection: 1; mode=block
# X-Content-Type-Options: nosniff
# Content-Type: application/json; charset=utf-8
# ETag: W/"0090485635ec3a01d22673c7815da9eb"
# Cache-Control: max-age=0, private, must-revalidate
# X-Request-Id: 74fcfcdb-e069-4051-be1f-7c8565a829ea
# X-Runtime: 0.772936
# Vary: Origin
# Transfer-Encoding: chunked
#
# {"user":{"id":4,"email":"TESTING","token":"BAhJIiVhODYwMjVjYTZhNTQ3MWQ5ZWNmNDg4NmZiMWE1NDE3MgY6BkVG--abf9fa3214ea36fda5e96e7748940a7da6c96236"}}
