part of '../../flutter_kakao_maps.dart';

class CameraPosition {
  final double height;
  final double rotationAngle;
  final double tiltAngle;
  final int zoomLevel;
  final KakaoMapPoint position;
  KakaoMapGestureType? gestureType;

  CameraPosition({
    required this.height,
    required this.rotationAngle,
    required this.tiltAngle,
    required this.zoomLevel,
    required this.position,
    this.gestureType,
  });

  factory CameraPosition.fromJson(Map<String, dynamic> json) {
    final rotationAngle = json['rotationAngle'];
    final tiltAngle = json['tiltAngle'];
    final height = json['height'];
    final gestureType = json['gestureType'];

    return CameraPosition(
      gestureType: gestureType is String
          ? gestureType.toStatus()
          : KakaoMapGestureType.unknown,
      height: height is int ? height.toDouble() : height,
      rotationAngle:
          rotationAngle is int ? rotationAngle.toDouble() : rotationAngle,
      tiltAngle: tiltAngle is int ? tiltAngle.toDouble() : tiltAngle,
      zoomLevel: json['zoomLevel'],
      position: KakaoMapPoint.fromJson(json['position']),
    );
  }
}
