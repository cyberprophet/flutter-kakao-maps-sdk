part of 'package:flutter_kakao_maps/flutter_kakao_maps.dart';

/// 언어 종류
enum KakaoMapLanguage {
  /// 한국어
  ko;

  @override
  String toString() {
    switch (this) {
      case KakaoMapLanguage.ko:
        return "ko";
    }
  }
}
