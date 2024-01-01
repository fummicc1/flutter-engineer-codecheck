#!/bin/bash
targetDeviceName="sdk gphone arm64"
fvm flutter run -d "$targetDeviceName" --dart-define-from-file=config.json
