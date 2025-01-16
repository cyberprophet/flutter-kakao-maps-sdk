# flutter_kakao_maps

KakaoMapsSDK for Flutter

⚠️ 현재 개발 진행중인 패키지입니다.

## Requirements

- Dart sdk: ">=3.1.0 <4.0.0"
- Flutter: ">=3.13.0"
- Android: 6.0(API level 23) 이상 ([참고](https://apis.map.kakao.com/android_v2/docs/getting-started/#sdk-%EC%9A%94%EA%B5%AC%EC%82%AC%EC%96%91))
- iOS: iOS13 이상 ([참고](https://apis.map.kakao.com/ios_v2/docs/getting-started/gettingstarted/#%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD))

## Installation

```
$ flutter pub add flutter_kakao_maps
```

## Configuration

### Android

1. 앱 등록

   먼저, [카카오 개발자 사이트](https://developers.kakao.com/) 에서 지도를 사용 할 앱 등록을 합니다. 자세한 안내는 [앱 등록](https://developers.kakao.com/docs/latest/ko/getting-started/app#create) 을 참고합니다.

2. 키 해시 추가

   마지막으로, 플랫폼 등록 후 키 해시(Key Hash) 를 추가하면 인증을 위한 절차가 끝납니다. 이와 관련 자세한 안내는 [플랫폼 등록](https://developers.kakao.com/docs/latest/ko/getting-started/app#platform) 과 [키 해시](https://developers.kakao.com/docs/latest/ko/getting-started/app#platform-android) 부분을 참고합니다.

3. 프로가드 설정 (선택)

   앱 배포 시, [코드 축소, 난독화, 최적화](https://developer.android.com/build/shrink-code#shrink-code) 를 하는 경우, 카카오지도 SDK를 제외하고 진행하기 위하여 ProGuard 규칙 파일에 다음 코드를 추가합니다.

   ```
   -keep class com.kakao.vectormap.** { *; }
   -keep interface com.kakao.vectormap.**
   ```

### iOS

1. 앱 등록

   먼저, [카카오 개발자 사이트](https://developers.kakao.com/) 에서 지도를 사용 할 앱 등록을 합니다. 자세한 안내는 [앱 등록](https://developers.kakao.com/docs/latest/ko/getting-started/app#create) 을 참고합니다.

2. 프로모션 디스플레이 설정 (선택)

   ProMotion Display가 지원되는 기기에 대해서만 프로모션이 동작합니다. `Info.plist` 에 아래와 같은 필드를 추가합니다.

   ```xml
   <key>CADisableMinimumFrameDurationOnPhone</key>
   <true/>
   ```

### Flutter

1. 네이티브 앱 키 추가

   카카오 개발자 사이트를 통해 앱 등록을 하면 네이티브 앱 키(App Key) 가 발급됩니다. 발급받은 네이티브 앱 키를 main.dart 위치에 아래와 같이 앱키를 추가해서 KakaoMapsSDK.initialize 을 호출합니다. 앱 키 관련 자세한 안내는 [앱 키](https://developers.kakao.com/docs/latest/ko/getting-started/app#app-key) 를 참고합니다. (위치는 권장)

   ```dart
   KakaoMapsSDK.initialize("your_app_key");
   ```
