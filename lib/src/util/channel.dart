part of 'package:flutter_kakao_maps/flutter_kakao_maps.dart';

String _createViewMethodChannelName(int id) => "$_kakaoMapViewViewId#$id";

extension StatusExtension on String {
  KakaoMapGestureType toStatus() {
    return KakaoMapGestureType.values.firstWhere(
      (e) => e.name.toLowerCase() == toLowerCase(),
      orElse: () => KakaoMapGestureType.unknown,
    );
  }
}
