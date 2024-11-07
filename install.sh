#!/bin/bash

ROOT_UID=0
DEST_DIR=
CRLN_DIR="AnyaCursors/cursors"
tar -xvf Misc/CrLn.tar.xz -C $CRLN_DIR
# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.icons/"
  mkdir -p $DEST_DIR
fi

# Remove folder if existing
if [ -d "$DEST_DIR/AnyaCursors" ]; then
  rm -rf "$DEST_DIR/AnyaCursors"
fi
cp -rf AnyaCursors/ $DEST_DIR/AnyaCursors

echo "Finished..."
