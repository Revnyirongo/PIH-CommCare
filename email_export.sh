#!/usr/bin/bash

commcare-export --output-format xlsx --output Chikwawa-export.xlsx --project apzu --query './query_ck.xlsx' --username YourLoginEmailorUsername --auth-mode apikey --password putAPIkeyHere
echo "Created export done!"
echo "Sending mail"
echo "Find Attached copy of Cyclone Anna Data " | mutt -s "Cyclone Anna Data " -a Chikwawa-export.xlsx -- emailToReceivetheExportedDataHere
