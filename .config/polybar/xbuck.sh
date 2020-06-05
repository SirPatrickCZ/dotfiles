#!/bin/bash
UPDATE=$(xbps-install -nu | wc -l)
echo "XBU $UPDATE"
