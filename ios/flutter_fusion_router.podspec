#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_fusion_router.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_fusion_router'
  s.version          = '0.0.1'
  s.summary          = 'flutter_fusion_router is a Flutter plugin used to implement mixed stack management based on multiple Flutter Engines and Navigator'
  s.description      = <<-DESC
flutter_fusion_router is a Flutter plugin used to implement mixed stack management based on multiple Flutter Engines and Navigator
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'flutter_fusion_router_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end
