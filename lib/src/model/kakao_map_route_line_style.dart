part of '../../flutter_kakao_maps.dart';

class KakaoMapRouteLineStyle {
  final double? lineWidth;
  final Color? lineColor;
  final double? strokeWidth;
  final Color? strokeColor;
  final int? zoomLevel;
  final KakaoMapRouteLinePattern? linePattern;

  const KakaoMapRouteLineStyle({
    this.lineColor = const Color(0xFF67A4FF),
    this.linePattern,
    this.lineWidth = 4,
    this.strokeColor = const Color(0xFF67A4FF),
    this.strokeWidth = 0,
    this.zoomLevel,
  });
}

extension KakaoMapRouteLineStyleExtension on KakaoMapRouteLineStyle {
  Map<String, dynamic> toMap() => {
        'lineWidth': lineWidth,
        'lineColor': lineColor?.value,
        'strokeWidth': strokeWidth,
        'strokeColor': strokeColor?.value,
        'zoomLevel': zoomLevel,
        'linePattern': linePattern?.toMap()
      };
}
