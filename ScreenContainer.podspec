Pod::Spec.new do |spec|
  spec.name = 'ScreenContainer'
  spec.version = '0.4.0'
  spec.homepage = 'https://github.com/mitsuse/screen-container-ios'
  spec.authors = {
    'Tomoya Kose' => 'tomoya@mitsuse.jp'
  }
  spec.summary = 'Provide a default implementation of container view controllers.'
  spec.source = {
    :git => 'git@github.com:mitsuse/screen-container-ios.git',
    :tag => "#{spec.version}",
  }
  spec.ios.deployment_target = '10.0'
  spec.ios.framework = 'UIKit'
  spec.source_files = 'Sources/**/*.swift'
  spec.swift_version = '5.1'
end
