#
# Bundles.podspec
# Bundles
#

Pod::Spec.new do |s|
  s.name             = 'Bundles'
  s.version          = '0.1.0'
  s.summary          = 'Utility for locating bundles associated with a CocoaPod.'

  s.description      = <<-DESC
    Utility for locating bundles associated with a CocoaPod library.
                       DESC

  s.homepage         = 'https://github.com/phatblat/Bundles'
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.author           = { 'Ben Chatelain' => 'ben@octop.ad' }
  s.source           = { git: 'https://github.com/phatblat/Bundles.git', tag: s.version.to_s }
  s.social_media_url = 'https://twitter.com/phatblat'

  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'

  s.swift_version = '5.0'

  s.source_files = 'Bundles/Classes/**/*'
end
