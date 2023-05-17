#!/bin/bash

LOG_DIR="/opt/dev/packages"
DAYS_THRESHOLD=30

find "$LOG_DIR" -type f -name "*.tar" -mtime +"$DAYS_THRESHOLD" -exec rm {} \;
