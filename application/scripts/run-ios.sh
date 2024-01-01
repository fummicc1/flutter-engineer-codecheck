#!/bin/bash
targetDeviceName="iPhone 15 Pro"
fvm flutter emulators --launch ios
fvm flutter run -d "$targetDeviceName" --dart-define-from-file=config.json
