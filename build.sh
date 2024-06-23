#!/bin/bash
# shellcheck disable=SC2164 disable=SC1090
SHELL_FOLDER=$(cd "$(dirname "$0")" && pwd)
cd "$SHELL_FOLDER"
source <(curl -sSL https://code.kubectl.net/devops/build-project/raw/branch/main/func/log.sh)

bash <(curl https://code.kubectl.net/devops/build-project/raw/branch/main/docker/build.sh) \
  -i "registry.cn-shanghai.aliyuncs.com/iproute/getloli" \
  -v "latest" \
  -r "false" \
  -p "true"
