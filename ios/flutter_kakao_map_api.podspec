#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_kakao_maps.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_kakao_map_api'
  s.version          = '0.4.0'
  s.summary          = 'KakaoMapsSDK for Flutter'
  s.description      = <<-DESC
  KakaoMapsSDK for Flutter
                       DESC
  s.homepage         = 'https://github.com/share-tracker/flutter-kakao-maps'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'cyberprophet' => 'prophet0915@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'flutter_kakao_maps/Sources/flutter_kakao_maps/**/*.swift'
  s.dependency 'Flutter'
  s.dependency 'KakaoMapsSDK','2.12.2'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
