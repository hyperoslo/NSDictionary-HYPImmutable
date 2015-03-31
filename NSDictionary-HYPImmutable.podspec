Pod::Spec.new do |s|
  s.name             = "NSDictionary-HYPImmutable"
  s.summary          = "Mutable operations on NSDictionary that return immutable results"
  s.version          = "0.2"
  s.homepage         = "https://github.com/hyperoslo/NSDictionary-HYPImmutable"
  s.license          = 'MIT'
  s.author           = { "Hyper Interaktiv AS" => "ios@hyper.no" }
  s.source           = { :git => "https://github.com/hyperoslo/NSDictionary-HYPImmutable.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/hyperoslo'
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'Source/**/*'
  s.frameworks = 'Foundation'
end
