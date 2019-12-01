# libpebble2 Flutter Plugin UNDER DEVELOPMENT

This repo is a plugin for Flutter that makes the libpebble2 python library available to Dart code.

It is written in [Rust](https://rust-lang.org) in order to build a shared library that can be used for [Android](https://www.android.com/) and [iOS](https://www.apple.com/ios).


Libpebble2 docs: [link](https://libpebble2.readthedocs.io/en/stable/)

## How to Compile for iOS

#### The Only Step
``` bash
# run from the "rusty_libpebble2/rust" directory
bash scripts/ios_build.sh
```

## How to Compile for Android

#### Step 1
``` bash
# run from the "rusty_libpebble2/rust" directory
bash scripts/android_build.sh
```
#### Step 2
- Open the "rusty_libpebble2/android" directory in Android Studio.
- Locate the horizontal Gradle tab on the right side of Android Studio and click it.
- Run the build command under rusty-libpebble2-lib > build > build.
- Copy-paste "rusty_libpebble2/android/rusty-libpebble2-lib/build/src/outputs/aar/rusty-libpebble2-lib-release.aar" file to "rusty_libpebble2/flutter/android/rusty-libpebble2-lib-release/"


## Important Files

#### rusty_libpebble2/rust/src/lib.rs
- This is the rust code that gets executed when the methods are called from dart.

#### rusty_libpebble2/scripts
- Compiling scripts

#### rusty_libpebble2/ios
- iOS project that can compile and run the rust code without Dart/Flutter.

#### rusty_libpebble2/android
- Android project that can compile and run the rust code without Dart/Flutter.

#### rusty_libpebble2/flutter
- Flutter plugin code

#### rusty_libpebble2/flutter/example
- Flutter app that compiles to demo the plugin

#### rusty_libpebble2/flutter/ios/Classes/SwiftRustyLibpebble2LibPlugin.swift
- Flutter plugin's iOS handlers (the iOS code between Dart and Rust)

#### rusty_libpebble2/flutter/android/src/main/kotlin/com/rebble/rusty_libpebble2_lib/RustyLibpebble2LibPlugin.kt
- Flutter plugin's Android handlers (the Android code between Dart and Rust)

This is a tutorial that will explain the plugin's structure well: [tutorial](https://robertohuertas.com/2019/10/27/rust-for-android-ios-flutter)
