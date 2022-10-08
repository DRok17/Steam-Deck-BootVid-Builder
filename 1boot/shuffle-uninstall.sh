#!/bin/bash

systemctl --user disable --now shuffle.service
rm z-Service-Installed.txt
