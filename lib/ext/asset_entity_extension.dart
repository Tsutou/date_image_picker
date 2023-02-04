import 'dart:io';

import 'package:photo_manager/photo_manager.dart';

extension AssetEntityExtension on AssetEntity {
  bool isScreenShot() {
    /// Link:
    /// * https://github.com/fluttercandies/flutter_photo_manager/blob/98e8f68d1d9f2cba97316383e2f90df7f3648c32/ios/Classes/core/PHAsset%2BPM_COMMON.m#L46
    const iosScreenShotSubType = 4;
    final isIosScreenShot = subtype == iosScreenShotSubType;
    if (Platform.isIOS) {
      return isIosScreenShot;
    } else {
      if (title == null) {
        return false;
      }
      final isScreenShotTitle = title!.toLowerCase().contains("screenshot") ||
          title!.contains("スクリーンショット");

      return isScreenShotTitle;
    }
  }
}
