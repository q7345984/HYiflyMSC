
Pod::Spec.new do |s|

  s.name         = "hyiflyMSC"
  s.version      = "1.1.114"
  s.summary      = "ghy"
  s.description  = "ghy--"
  s.homepage     = "https://github.com/q7345984/HYiflyMSC"
  s.license      = {:type=>"MIT",:file=>"LICENSE"}
  s.author       = { "葛海艳" => "ge.hy@sand.com.cn" }
  #s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/q7345984/HYiflyMSC.git", :tag => "#{s.version}"}
  s.source_files = 'Hy_source/iflyMSC.framework/Headers/*.h'
  s.vendored_frameworks = 'Hy_source/iflyMSC.framework'
end
