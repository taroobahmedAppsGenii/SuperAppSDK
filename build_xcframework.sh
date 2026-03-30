#!/bin/bash
set -e

SCHEME="SuperAppSDK"
PROJECT="SuperAppSDK.xcodeproj"
BUILD_DIR="build"

rm -rf $BUILD_DIR
mkdir -p $BUILD_DIR

echo "▶️ Building iOS device archive"
xcodebuild archive \
  -project $PROJECT \
  -scheme $SCHEME \
  -destination "generic/platform=iOS" \
  -archivePath $BUILD_DIR/ios_devices \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

echo "▶️ Building iOS simulator archive"
xcodebuild archive \
  -project $PROJECT \
  -scheme $SCHEME \
  -destination "generic/platform=iOS Simulator" \
  -archivePath $BUILD_DIR/ios_simulator \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

echo "▶️ Creating XCFramework"
xcodebuild -create-xcframework \
  -framework $BUILD_DIR/ios_devices.xcarchive/Products/Library/Frameworks/$SCHEME.framework \
  -framework $BUILD_DIR/ios_simulator.xcarchive/Products/Library/Frameworks/$SCHEME.framework \
  -output $BUILD_DIR/$SCHEME.xcframework

echo "▶️ Zipping"
cd $BUILD_DIR
zip -r $SCHEME.xcframework.zip $SCHEME.xcframework

echo "▶️ Generating checksum"
swift package compute-checksum $SCHEME.xcframework.zip > checksum.txt

echo "✅ Done"
