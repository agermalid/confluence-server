#!/bin/bash
echo "Setup ssl.crt in confluence-server container"
docker exec confluence-server bash -c "chmod +x /integrate-ssl-crt-to-confluence-server.sh; bash /integrate-ssl-crt-to-confluence-server.sh"
echo "Restart confluence-server docker container"
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR
cd ..
cd ..
docker-compose restart confluence-server