#
# Be sure to run `pod lib lint XXYUIKitExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XXYUIKitExtension'
  s.version          = '0.0.3'
  s.summary          = 'Easy to create UI with XXYUIKitExtension for OC.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Easy to create UI with XXYUIKitExtension --- OC.
                       DESC

  s.homepage         = 'https://github.com/CoderXuXuYao/XXYUIKitExtension'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CoderXuXuYao' => 'jasondreamxu@163.com' }
  s.source           = { :git => 'https://github.com/CoderXuXuYao/XXYUIKitExtension.git', :tag => s.version }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'XXYUIKitExtension/Classes/**/*'
  
  # s.resource_bundles = {
  #   'XXYUIKitExtension' => ['XXYUIKitExtension/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  # 所需的framework，多个用逗号隔开
  s.frameworks = 'UIKit'
  # 依赖关系，该项目所依赖的其他库，如果有多个需要填写多个s.dependency
  #s.dependency 'Masonry', '~> 1.0.2'
  s.requires_arc = true
end
