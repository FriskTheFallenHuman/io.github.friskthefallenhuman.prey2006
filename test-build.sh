#!/usr/bin/env bash

clear
flatpak-builder --repo=testing-repo --force-clean build-dir io.github.friskthefallenhuman.prey2006.yaml
flatpak --user remote-add --if-not-exists --no-gpg-verify prey06-testing-repo testing-repo
flatpak --user install prey06-testing-repo io.github.friskthefallenhuman.prey2006 -y
flatpak --user install prey06-testing-repo io.github.friskthefallenhuman.prey2006.Debug -y
flatpak update -y
