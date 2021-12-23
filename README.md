# test_selecti

A new Flutter project.

## Getting Started

## Overview
1. **[Requirements 📝](#requirements-)**
2. **[Developing 👷](#developing-)**
3. **[Releasing 🏷️](#releasing-)**## Overview
1. **[Requirements 📝](#requirements-)**
2. **[Developing 👷](#developing-)**
3. **[Releasing 🏷️](#releasing-)**

## Requirements 📝
#### To execute this project it is necessary to have the following dependencies installed and configured on your machine:

**Required**
- [Flutter](https://flutter.dev/)
- [Android SDK](https://developer.android.com/studio)
- [IOS SDK](https://developer.apple.com/xcode/)

**Versions**
- [Flutter](https://flutter.dev/) `2.8.0`
- [Dart](https://dart.dev/) `2.12.3`

## Developing 👷
#### Use a local development environment:

1. [Clone this repo](https://docs.gitlab.com/ee/gitlab-basics/start-using-git.html) with git.
2. Install dependencies by running `flutter packages get` or `flutter pub get` within the directory that you cloned (probably `app`).
2. Generate tests `flutter packages pub run build_runner build`.
3. Open any mobile device emulator of your choice.
4. Execute your app with `flutter run` or F5 (debug mode).

## Releasing 🏷️

1. [Clone this repo](https://docs.gitlab.com/ee/gitlab-basics/start-using-git.html) with git.
2. Install dependencies by running `flutter packages get` or `flutter pub get` within the directory that you cloned (probably `app`).
3. Build the release files with `flutter build apk`.
4. Find the your release in `build/app/outputs/apk/release` or `build/app/outputs/flutter-apk/release`.