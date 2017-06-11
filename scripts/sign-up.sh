#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-up"
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


#
# $ EMAIL="TESTING" PASSWORD="TESTPW" sh scripts/sign-up.sh
# HTTP/1.1 201 Created
# X-Frame-Options: SAMEORIGIN
# X-XSS-Protection: 1; mode=block
# X-Content-Type-Options: nosniff
# Content-Type: application/json; charset=utf-8
# ETag: W/"c15b4f24daea0b374468c24804fe7fda"
# Cache-Control: max-age=0, private, must-revalidate
# X-Request-Id: cb2c7030-44cd-4a0b-b10a-d6e8295422ae
# X-Runtime: 0.494698
# Vary: Origin
# Transfer-Encoding: chunked
#
# {"user":{"id":4,"email":"TESTING"}}
