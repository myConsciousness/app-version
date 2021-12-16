// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:new_version/new_version.dart';
import 'package:package_info_plus/package_info_plus.dart';

// Project imports:
import 'package:app_version/src/loading.dart';

/// This widget displays the version information of an application and checks for updates.
class AppVersion extends StatelessWidget {
  const AppVersion({Key? key}) : super(key: key);

  /// Returns subtitle about app version.
  String _buildSubtitle({
    required VersionStatus? versionStatus,
    required PackageInfo packageInfo,
  }) {
    if (versionStatus == null) {
      return '${packageInfo.version}: ${packageInfo.buildNumber}';
    }

    if (versionStatus.canUpdate) {
      return '${packageInfo.version}: ${packageInfo.buildNumber} (Now ${versionStatus.storeVersion} is available)';
    }

    return '${packageInfo.version}: ${packageInfo.buildNumber} (Latest)';
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: PackageInfo.fromPlatform(),
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Loading();
          }

          final packageInfo = snapshot.data;
          final version = NewVersion();

          return FutureBuilder(
            future: version.getVersionStatus(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return const Loading();
              }

              final VersionStatus? status = snapshot.data;

              return ListTile(
                leading: const Icon(Icons.app_settings_alt),
                title: packageInfo.appName,
                subtitle: Text(
                  _buildSubtitle(
                    versionStatus: status,
                    packageInfo: packageInfo,
                  ),
                  style: TextStyle(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.7),
                  ),
                ),
                onTap: () async {
                  if (status == null) {
                    return;
                  }

                  if (!status.canUpdate) {
                    return;
                  }

                  version.showUpdateDialog(
                    context: context,
                    versionStatus: status,
                    dialogText: status.releaseNotes,
                    dialogTitle: 'New Version Is Available!',
                    updateButtonText: 'Update Right Now',
                    dismissButtonText: 'Skip',
                  );
                },
              );
            },
          );
        },
      );
}
