
Pod::Spec.new do |spec|

  spec.name         = "hyiflyMSC"
  spec.version      = "1.1.113"
  spec.summary      = "ghy"
  spec.description  = "ghy--"
  spec.homepage     = "https://github.com/q7345984/HYiflyMSC"
  spec.license      = "MIT"
  spec.author             = { "葛海艳" => "ge.hy@sand.com.cn" }
  spec.platform     = :ios
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/q7345984/HYiflyMSC.git", :tag => spec.version.to_s }
  spec.vendored_frameworks = '**/*.framework'
  # spec.frameworks = "AVFoundation", "SystemConfiguration","Foundation","CoreTelephony","AudioToolbox","UIKit","CoreLocation","Contacts","AddressBook","QuartzCore","CoreGraphics"

  # spec.libraries = "z", "c++"
  
end
