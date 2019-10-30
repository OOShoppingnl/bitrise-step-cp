#!/bin/bash
set -e
set -x
cp -R $cp_from $cp_to
envman add --key NEW_LOCATION -- value $cp_to