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

  # FIXME: Generates warning
  # https://github.com/CocoaPods/CocoaPods/issues/9536
  # s.info_plist = {
  #   'CFBundleIdentifier' => 'at.phatbl.Bundles'
  # }

  s.resources = 'Bundles/Assets/**/*.{icns,png}'
  s.resource_bundles = {
    'Secondary' => ['Bundles/Assets/**/*.{icns,png}'],
    'Tertiary' => ['Bundles/Assets/**/*.{icns,png}']
  }

  s.app_spec 'SampleApp' do |app_spec|
    app_spec.source_files = 'Example/Bundles/**/*.swift'
  end

  s.test_spec 'Tests' do |test_spec|
    test_spec.test_type = :unit
    test_spec.requires_app_host = false
    test_spec.source_files = 'Example/Tests/**/*.swift'
    # test_spec.compiler_flags = '-DGDT_LOG_TRACE_ENABLED=1'
    test_spec.dependency 'Quick'
    test_spec.dependency 'Nimble'
    test_spec.scheme = {
      launch_arguments: [ 'arg1', 'arg2' ],
      environment_variables: { 'FOO' => 'BAR' },
      code_coverage: true
    }
  end
end
