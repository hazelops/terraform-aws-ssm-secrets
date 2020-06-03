#!/usr/bin/env bash

# Return code
RET_CODE=0

WORK_DIR=/github/workspace

terraform init
tflint || RET_CODE=1
       
# Finish
if [[ ${RET_CODE} != "0" ]]; then
  echo -e "\n[ERROR] Check log for errors."
  exit 1
else
  # Pass in other cases
  echo -e "\n[INFO] No errors found."
  exit 0
fi
