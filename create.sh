#!/bin/bash

scope_url=$1

output="report-$(date +%Y-%m-%d-%H:%M:%S).json"

curl --silent --location "${scope_url}/api/report" | jq . > "${output}"

git add "${output}"
git commit --message "Added \`${output}\`"
git push
