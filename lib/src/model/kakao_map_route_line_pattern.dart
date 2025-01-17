part of '../../flutter_kakao_maps.dart';

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
