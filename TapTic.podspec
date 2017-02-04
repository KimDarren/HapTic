Pod::Spec.new do |s|
  s.name             = "TapTic"
  s.version          = "1.0.1"
  s.summary          = "Use iOS TapTic API easily with Swift."
  s.homepage         = "https://github.com/KimDarren/TapTic"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "KimDarren" => "korean.darren@gmail.com" }
  s.source           = { :git => "https://github.com/KimDarren/TapTic.git",
                         :tag => s.version.to_s }
  s.source_files     = "Sources/*.swift"
  s.requires_arc     = true

  s.ios.deployment_target = "8.0"
end
