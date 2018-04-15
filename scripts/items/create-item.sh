#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/items"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "items": {
      "date": "'"${DATE}"'",
      "description": "'"${DESCRIPTION}"'",
      "energy_needed": "'"${ENERGY}"'",
      "is_completed": "'"${COMPLETED}"'",
      "is_crucial": "'"${CRUCIAL}"'"
    }
  }'

echo
