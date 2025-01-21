part of '../../flutter_kakao_maps.dart';

class KakaoMapRouteLine {
  final String id;
  final String layerId;
  final MethodChannel _viewMethodChannel;

  const KakaoMapRouteLine(this.layerId, this.id, this._viewMethodChannel);

  Future moveRouteLine(KakaoMapPoint point) async {
    await _viewMethodChannel.invokeMethod('moveRouteLine', {
      'point': point.toMap(),
      'lineId': id,
    });
  }

  Future modifyRouteLine(KakaoMapPoint point) async {
    await _viewMethodChannel.invokeMethod('modifyRouteLine', {
      'point': point.toMap(),
      'lineId': id,
    });
  }
}

extension KakaoMapRouteLineExtension on KakaoMapRouteLine {
  Map<String, dynamic> toMap() => {};
}
