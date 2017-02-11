Pod::Spec.new do |s|
  s.name             = "HapTic"
  s.version          = "1.0.2"
  s.summary          = "Use iOS HapTic API easily with Swift."
  s.homepage         = "https://github.com/KimDarren/HapTic"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "KimDarren" => "korean.darren@gmail.com" }
  s.source           = { :git => "https://github.com/KimDarren/HapTic.git",
                         :tag => s.version.to_s }
  s.source_files     = "Sources/*.swift"
  s.requires_arc     = true

  s.ios.deployment_target = "8.0"
end
