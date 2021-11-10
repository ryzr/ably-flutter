import 'package:ably_flutter/ably_flutter.dart';

/// Current state of the device in respect of it being a target for
/// push notifications.
///
/// https://docs.ably.io/client-lib-development-guide/features/#RSH8
class LocalDevice extends DeviceDetails {
  /// Device token. Generated locally, if not available.
  String? deviceSecret;

  /// A token generated by Ably to authenticate the device.
  ///
  /// Previously called `deviceToken`, but this was ambiguous because it
  /// overlaps with APNs device token. Now both terms exist in implementations
  /// Use `X-Ably-DeviceToken` when authenticating with Ably.
  String? deviceIdentityToken;

  LocalDevice(
      DeviceDetails deviceDetails, this.deviceSecret, this.deviceIdentityToken)
      : super(
            deviceDetails.id,
            deviceDetails.clientId,
            deviceDetails.platform,
            deviceDetails.formFactor,
            deviceDetails.metadata,
            deviceDetails.push);
}
