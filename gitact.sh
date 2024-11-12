#!/bin/bash
token="ghp_555_PERSONAL_ACCESS_TOKEN"
repo="your - username/your - repository"
workflow_file="main.yml"
api_url="https://api.github.com/repos/$repo/actions/workflows/$workflow_file/dispatches"
data='{"ref": "main"}' # 假设你的工作流在main分支，根据实际修改分支名称
curl -X POST -H "Authorization: token $token" -H "Content-Type: application/json" -d "$data" $api_url