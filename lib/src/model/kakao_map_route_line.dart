part of '../../flutter_kakao_maps.dart';

class KakaoMapRouteLine {
  List<KakaoMapRouteLineStyle>? lineStyles = [KakaoMapRouteLineStyle()];
  List<KakaoMapPoint>? points = [];

  KakaoMapRouteLine({
    this.lineStyles,
    this.points,
  });
}

extension KakaoMapRouteLineExtension on KakaoMapRouteLine {
  Map<String, dynamic> toMap() => {
        'lineStyles': lineStyles?.map((e) => e.toMap()).toList(),
        'points': points?.map((e) => e.toMap()).toList()
      };
}

class KakaoMapRouteLineStyle {
  double? lineWidth = 4;
  Color? lineColor = const Color(0xFF67A4FF);
  double? strokeWidth = 0;
  Color? strokeColor = const Color(0xFF67A4FF);
  int? zoomLevel;
  KakaoMapRouteLinePattern? linePattern;

  KakaoMapRouteLineStyle({
    this.lineColor,
    this.linePattern,
    this.lineWidth,
    this.strokeColor,
    this.strokeWidth,
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

class KakaoMapRouteLinePattern {
  Uint8List? patternImage;
  Uint8List? symbolImage;
  double? distance;
  bool? pinStart = false;
  bool? pinEnd = false;

  KakaoMapRouteLinePattern({
    this.distance,
    this.patternImage,
    this.pinEnd,
    this.pinStart,
    this.symbolImage,
  });
}

extension KakaoMapRouteLinePatternExtension on KakaoMapRouteLinePattern {
  Map<String, dynamic> toMap() => {
        'patternImage': patternImage,
        'symbolImage': symbolImage,
        'distance': distance,
        'pinStart': pinStart,
        'pinEnd': pinEnd
      };
}
