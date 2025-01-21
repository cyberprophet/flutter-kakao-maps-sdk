part of '../../flutter_kakao_maps.dart';

class KakaoMapPolygon {
  final KakaoMapPoint point;
  final Color circleColor;
  final Color holeColor;
  final double circleRadius;
  final double holeRadius;

  const KakaoMapPolygon({
    required this.point,
    this.circleColor = const Color(0xFF67A4FF),
    this.holeColor = const Color(0xFF4C3321),
    this.circleRadius = pi - .75,
    this.holeRadius = pi,
  });
}

extension KakaoMapPolygonExtension on KakaoMapPolygon {
  Map<String, dynamic> toMap() => {
        'position': point.toMap(),
        'circleRadius': circleRadius,
        'circleColor': circleColor.value,
        'polygonRadius': holeRadius,
        'holeColor': holeColor.value
      };
}
