Pod::Spec.new do |s|

  s.name     = 'libpag-macOS'
  s.version  = '4.3.50'
  s.osx.deployment_target   = '10.13'
  s.summary  = 'libpag SDK'
  s.homepage = 'https://github.com/libpag/libpag-ios'
  s.source   = {:git => 'https://github.com/libpag/pag-mac.git', :tag => s.version.to_s }
  s.license          = { :type => 'Apache License Version 2.0', :file => 'LICENSE' }
  s.author = {'libpag' => 'libpag@tencent.com'}
  s.osx.frameworks = ['ApplicationServices', 'AGL', 'OpenGL', 'QuartzCore', 'Cocoa', 'Foundation', 'VideoToolbox', 'CoreMedia']
  s.osx.libraries = ["iconv", "c++", "compression"]
  s.vendored_frameworks = 'framework/libpag.xcframework'
  s.xcconfig = {
    'VALID_ARCHS' =>  'arm64 x86_64',
  }
end
