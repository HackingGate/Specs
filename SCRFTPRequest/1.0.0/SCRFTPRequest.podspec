Pod::Spec.new do |s|
  s.name     = 'SCRFTPRequest'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'Simple to use FTP component for iPhone and Mac OS X'
  s.homepage = 'https://github.com/Hackmodford/SCRFTPRequest'
  s.author   = { 'Brandon Butler' => 'hackmodford@gmail.com' }
  s.source   = { :git => 'https://github.com/Hackmodford/SCRFTPRequest.git', :branch => 'master' }
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  s.source_files = '*.{h,m}'
  s.requires_arc = true
end
