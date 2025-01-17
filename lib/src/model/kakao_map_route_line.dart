part of '../../flutter_kakao_maps.dart';

class KakaoMapRouteLine {
  final Set<KakaoMapRouteLineStyle>? lineStyles;
  final Set<KakaoMapPoint>? routeLines;

  const KakaoMapRouteLine({
    this.lineStyles = const {KakaoMapRouteLineStyle()},
    this.routeLines = const {},
  });
}

extension KakaoMapRouteLineExtension on KakaoMapRouteLine {
  Map<String, dynamic> toMap() => {
        'lineStyles': lineStyles?.map((e) => e.toMap()).toList(),
        'points': routeLines?.map((e) => e.toMap()).toList()
      };
}
