#!/bin/bash

echo "{
  \"Servers\": {
    \"1\": {
      \"Name\": \"flying\",
      \"Group\": \"Servers\",
      \"Port\": 5432,
      \"Username\": \"$1\",
      \"Password\": \"$2\",
      \"SSLMode\": \"prefer\",
      \"Host\": \"workschedule-postgres\",
      \"MaintenanceDB\": \"postgres\"
    }
  }
}" >> servers.json