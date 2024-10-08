#
# Be sure to run `pod lib lint AppsOnAirIOSCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AppsOnAirIOSCore'
  s.version          = '0.1.0'
  s.summary          = 'AppsOnAirIOSCore is for AppsOnAir'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'AppsOnAirIOSCore is used for network related and appId'

  s.homepage         = 'https://github.com/harshil-gandhi-us/AppsOnAirIOSCore'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'harshil-gandhi-16' => 'harshil.gandhi@logicwind.com' }
  s.source           = { :git => 'https://github.com/harshil-gandhi-us/AppsOnAirIOSCore.git', :tag => s.version }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version  = '5.0'
  s.ios.deployment_target = '12.0'

  # s.source_files = '.{h,m,swift}'
  s.source_files = 'AppsOnAirIOSCore/Classes/**/*'
  s.dependency 'ReachabilitySwift'
  
  
  # s.resource_bundles = {
  #   'AppsOnAirIOSCore' => ['AppsOnAirIOSCore/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
