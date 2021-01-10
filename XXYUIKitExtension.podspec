#
# Be sure to run `pod lib lint XXYUIKitExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XXYUIKitExtension'
  s.version          = '0.0.7'
  s.summary          = 'Easy to create UI XXYUIKitExtension with OC.'
  s.description      = <<-DESC
TODO: Easy to create UI XXYUIKitExtension with OC.
                       DESC
  s.homepage         = 'https://github.com/CoderXuXuYao/XXYUIKitExtension'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CoderXuXuYao' => 'jasondreamxu@163.com' }
  s.source           = { :git => 'https://github.com/CoderXuXuYao/XXYUIKitExtension.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.source_files = 'XXYUIKitExtension/Classes/**/*'
  s.resource_bundles = {
    'XXYUIKitExtension' => ['XXYUIKitExtension/Assets/*.png']
  }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'MBProgressHUD'
  s.dependency 'SVProgressHUD'
  
end
