part of 'package:flutter_kakao_maps/flutter_kakao_maps.dart';

class KakaoMapsSDK {
  static final KakaoMapsSDK instance = KakaoMapsSDK();

  static bool _debug = false;

  final MethodChannel _initMethodChannel =
      const MethodChannel(_initMethodChannelName, JSONMethodCodec());

  static const EventChannel _logEventChannel =
      EventChannel(_logEventChannelName);

  StreamSubscription<dynamic>? _stream;

  Future<void> init({required String appKey, bool debug = false}) async {
    _debug = debug;

    _stream ??= _logEventChannel.receiveBroadcastStream().listen(
      (event) {
        if (_debug) {
          debugPrint(event?.toString());
        }
      },
    );

    await _initMethodChannel.invokeMethod(
      "init",
      {
        "appKey": appKey,
      },
    );
  }

  void dispose() {
    _stream?.cancel();
    _stream = null;
  }
}
