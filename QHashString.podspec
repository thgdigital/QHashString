Pod::Spec.new do |s|
  s.name         = 'QHashString'
  s.version      = '1.0.1'
  s.ios.deployment_target = '7.0'
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/QianChia/QHashString'
  s.authors      = {'QianChia' => 'qianchia@icloud.com'}
  s.summary      = 'The extension method for NSString Hash'
  s.source       = {:git => 'https://github.com/QianChia/QHashString.git', :tag => s.version}
  s.source_files = 'QHashString'
  s.requires_arc = true
end
