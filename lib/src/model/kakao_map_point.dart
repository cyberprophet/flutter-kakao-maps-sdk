part of '../../flutter_kakao_maps.dart';

class KakaoMapPoint {
  final double longitude;
  final double latitude;

  const KakaoMapPoint({
    required this.longitude,
    required this.latitude,
  });

  KakaoMapPoint copyWith({
    double? longitude,
    double? latitude,
  }) =>
      KakaoMapPoint(
        longitude: longitude ?? this.longitude,
        latitude: latitude ?? this.latitude,
      );

  factory KakaoMapPoint.fromJson(Map<String, dynamic> json) {
    return KakaoMapPoint(
      longitude: json['longitude'],
      latitude: json['latitude'],
    );
  }
}

extension KakaoMapPointExtension on KakaoMapPoint {
  Map<String, dynamic> toMap() {
    return {
      "latitude": latitude,
      "longitude": longitude,
    };
  }
}
