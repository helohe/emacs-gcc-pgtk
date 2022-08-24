#!/usr/bin/env sh
docker build -t helohe/emacs-gcc-pgtk:latest .
id=$(docker create helohe/emacs-gcc-pgtk)
docker cp $id:/opt/deploy .
