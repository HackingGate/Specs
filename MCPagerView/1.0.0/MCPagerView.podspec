Pod::Spec.new do |s|
  s.name     = 'MCPagerView'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'Replacement for the UIPageControl with custom images'
  s.homepage = 'https://github.com/Hackmodford/SCRFTPRequest'
  s.author   = { 'Baglan' => 'baglan.dos@gmail.com' }
  s.source   = { :git => 'https://github.com/Baglan/MCPagerView.git', :branch => 'master' }
  s.platform = :ios, '7.0'
  s.source_files = 'Classes/**/*.{h,m}'
  s.requires_arc = true
end
