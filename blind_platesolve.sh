#!/bin/bash

if ! command -v astap_cli >/dev/null 2>&1
then
    sudo apt install astap-cli -y
fi


astap_cli -f "$1" -d /opt/astap/