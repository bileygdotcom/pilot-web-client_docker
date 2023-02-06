#!/bin/bash

printf "  \"PilotServer\": {\n    \"Url\": \"$SERVER\",\n    \"Database\": \"$DATABASE\",\n    \"LicenseCode\": \"$LICENSE\",\n  },\n\n" > appsettings_p2
cat appsettings_p1 appsettings_p2 appsettings_p3 > appsettings.json
