part of '../../flutter_kakao_maps.dart';

class KakaoMapPoi {
  final String id;
  final String layerId;
  final MethodChannel? _viewMethodChannel;

  const KakaoMapPoi(this.layerId, this.id, this._viewMethodChannel);

  Future<KakaoMapPoi> movePoi({
    required KakaoMapPoint at,
    required String poiId,
    int milliseconds = 0x400,
  }) async {
    final poiID = await _viewMethodChannel?.invokeMethod(
      "movePoi",
      {
        "layerID": layerId,
        'poiID': poiId,
        'milliseconds': milliseconds,
        "at": at.toMap(),
      },
    );

    return KakaoMapPoi(layerId, poiID, _viewMethodChannel);
  }

  /// Poi 삭제
  ///
  /// [poi] poi 객체
  Future<void> removePoi({required KakaoMapPoi poi}) async {
    await _viewMethodChannel?.invokeMethod("removePoi", {
      "layerID": layerId,
      "poiID": poi.id,
    });
  }

  /// PoiIconStyle 변경
  ///
  /// [styleID] style 아이디
  Future<void> changePoiIconStyle({
    required String styleID,
  }) async {
    await _viewMethodChannel?.invokeMethod("changePoiIconStyle", {
      "layerID": layerId,
      "poiID": id,
      "styleID": styleID,
    });
  }
}
