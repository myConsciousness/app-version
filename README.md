**_A most easily usable Flutter widget about application version check!_**

[![pub package](https://img.shields.io/pub/v/app_version.svg)](https://pub.dev/packages/app_version)

<!-- TOC -->

- [1. About](#1-about)
  - [1.1. Introduction](#11-introduction)
    - [1.1.1. Install Library](#111-install-library)
    - [1.1.2. Import It](#112-import-it)
    - [1.1.3. Use AppVersion](#113-use-appversion)
    - [1.1.4. How it works](#114-how-it-works)
      - [1.1.4.1. When app version is older](#1141-when-app-version-is-older)
      - [1.1.4.2. When app version is the latest](#1142-when-app-version-is-the-latest)
  - [1.2. License](#12-license)
  - [1.3. More Information](#13-more-information)

<!-- /TOC -->

# 1. About

`AppVersion` is an open-sourced Flutter widget.</br>
With `AppVersion`, you can easily check and display about new version of your application.

## 1.1. Introduction

### 1.1.1. Install Library

**_With Flutter:_**

```terminal
 flutter pub add app_version
```

### 1.1.2. Import It

```dart
import 'package:app_version/app_version.dart';
```

### 1.1.3. Use AppVersion

It's very easy to integrate to your application with using `AppVersion` widget.

```dart
import 'package:app_version/app_version.dart';
import 'package:flutter/material.dart';

class DemoAppVersion extends StatelessWidget {
  const DemoAppVersion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Sample For App Version'),
        ),
        body: const Center(
          child: AppVersion(), // ← Just here
        ),
      );
}
```

### 1.1.4. How it works

#### 1.1.4.1. When app version is older

This widget shows app information and about new version.

<img width="338" alt="スクリーンショット 2021-12-16 9 53 39" src="https://user-images.githubusercontent.com/13072231/146288139-c36d7725-d4db-4fb2-a5c0-fa27688975e2.png">

By tapping this widget, you can display a dialog that prompts user to update. This dialog will only appear if an update is available, and the release notes for the new version will be displayed in the center of the dialog. The user can choose to update now or not, and even if they skip it, they can tap this widget again to display the same dialog.

<img width="270" alt="スクリーンショット 2021-12-16 23 44 22" src="https://user-images.githubusercontent.com/13072231/146393060-bdbaca3b-7a82-406a-b702-0fb3387ffdef.png">

#### 1.1.4.2. When app version is the latest

If the app version is already up-to-date, just indicate the app version information and that this is the latest. You still can tap the widget, but no event will be triggered.

<img width="335" alt="スクリーンショット 2021-12-16 9 58 45" src="https://user-images.githubusercontent.com/13072231/146288508-262a2343-ffae-4862-9e65-c1867beae945.png">

## 1.2. License

```license
Copyright (c) 2021, Kato Shinya. All rights reserved.
Use of this source code is governed by a
BSD-style license that can be found in the LICENSE file.
```

## 1.3. More Information

`AppVersion` was designed and implemented by **_Kato Shinya_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/myConsciousness/app-version/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/app_version/latest/app_version/app_version-library.html)
- [Release Note](https://github.com/myConsciousness/app-version/releases)
- [Bug Report](https://github.com/myConsciousness/app-version/issues)
