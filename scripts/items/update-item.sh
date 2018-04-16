#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "item": {
      "date": "'"${DATE}"'",
      "description": "'"${DESCRIPTION}"'",
      "energy_needed": "'"${ENERGY_NEEDED}"'",
      "is_completed": "'"${IS_COMPLETED}"'",
      "is_crucial": "'"${IS_CRUCIAL}"'"
    }
  }'

echo
