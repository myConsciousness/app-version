// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
          child: AppVersion(),
        ),
      );
}
