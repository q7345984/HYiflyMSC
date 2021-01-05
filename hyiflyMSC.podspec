
Pod::Spec.new do |spec|

  spec.name         = "hyiflyMSC"
  spec.version      = "1.1.112"
  spec.summary      = "ghy"

  spec.description  = "ghy--"

  spec.homepage     = "https://github.com/q7345984/HYiflyMSC"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  spec.license      = "MIT"
  #spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  spec.author             = { "葛海艳" => "ge.hy@sand.com.cn" }
  # Or just: spec.author    = "葛海艳"
  # spec.authors            = { "葛海艳" => "ge.hy@sand.com.cn" }
  # spec.social_media_url   = "https://twitter.com/葛海艳"
  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

  spec.source       = { :git => "https://github.com/q7345984/HYiflyMSC.git", :tag => "1.1.112" }
  
  spec.vendored_frameworks = 'source/iflyMSC.framework'
  spec.xcconfig            = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/hyiflyMSC/**\"" }
  #spec.source_files  = "iflyMSC.framework/Headers/*.h"
  # spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "AVFoundation", "SystemConfiguration","Foundation","CoreTelephony","AudioToolbox","UIKit","CoreLocation","Contacts","AddressBook","QuartzCore","CoreGraphics"

  # spec.library   = "libz.tbd"
  # spec.libraries = "z", "c++"

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"
  spec.prepare_command     = <<-EOF
  mkdir source/iflyMSC.framework/Modules
  touch source/iflyMSC.framework/Modules/module.modulemap
  cat <<-EOF > source/iflyMSC.framework/Modules/module.modulemap
  framework module iflyMSC {
      header "IFlyMSC.h"
      header "IFlyAudioSession.h"
      header "IFlyContact.h"
      header "IFlyDataUploader.h"
      header "IFlyDebugLog.h"
      header "IFlyISVDelegate.h"
      header "IFlyISVRecognizer.h"
      header "IFlyRecognizerView.h"
      header "IFlyRecognizerViewDelegate.h"
      header "IFlyResourceUtil.h"
      header "IFlySetting.h"
      header "IFlySpeechConstant.h"
      header "IFlySpeechError.h"
      header "IFlySpeechEvaluator.h"
      header "IFlySpeechEvaluatorDelegate.h"
      header "IFlySpeechEvent.h"
      header "IFlySpeechRecognizer.h"
      header "IFlySpeechRecognizerDelegate.h"
      header "IFlySpeechSynthesizer.h"
      header "IFlySpeechSynthesizerDelegate.h"
      header "IFlySpeechUnderstander.h"
      header "IFlySpeechUtility.h"
      header "IFlyTextUnderstander.h"
      header "IFlyUserWords.h"
      header "IFlyPcmRecorder.h"
      header "IFlyVoiceWakeuper.h"
      header "IFlyVoiceWakeuperDelegate.h"
      header "IFlyIdentityResult.h"
      header "IFlyIdentityVerifier.h"
      header "IFlyIdentityVerifierDelegate.h"
      header "IFlyVerifierUtil.h"
      export *
      link "z"
      link "c++"
  }
  \EOF
  EOF
end
