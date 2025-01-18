part of '../../flutter_kakao_maps.dart';

class KakaoMapView extends StatefulWidget {
  final KakaoMapOptions options;

  final void Function(KakaoMapController controller)? onMapReady;
  final void Function(CameraPosition)? onCameraMove;

  const KakaoMapView({
    super.key,
    this.options = const KakaoMapOptions(),
    this.onMapReady,
    this.onCameraMove,
  });

  @override
  State<StatefulWidget> createState() => _KakaoMapViewState();
}

class _KakaoMapViewState extends State<KakaoMapView> {
  KakaoMapController? _controller;

  @override
  void initState() {
    super.initState();
  }

  void _onPlatformViewCreated(int id) {
    _controller = KakaoMapController(
      id,
      widget.onMapReady,
      widget.onCameraMove,
    );
  }

  @override
  void dispose() {
    _controller?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    assert(
      widget.options.defaultLevel < 22,
      "The maximum zoom level is up to 21.",
    );
    const viewType = _kakaoMapViewViewId;
    final creationParams = widget.options.toMap();
    const creationParamsCodec = JSONMessageCodec();

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return AndroidView(
          viewType: viewType,
          creationParams: creationParams,
          creationParamsCodec: creationParamsCodec,
          onPlatformViewCreated: _onPlatformViewCreated,
        );

      case TargetPlatform.iOS:
        return UiKitView(
          viewType: viewType,
          creationParams: creationParams,
          creationParamsCodec: creationParamsCodec,
          onPlatformViewCreated: _onPlatformViewCreated,
        );

      default:
        throw PlatformException(code: "unsupportedPlatform");
    }
  }
}
