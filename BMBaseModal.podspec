Pod::Spec.new do |s|
  s.name         = "BMBaseModal"
  s.version      = "0.0.1"
  s.summary      = "Simple Modal Written in Swift"
  s.homepage     = "https://github.com/dnsdesigner/BMBaseModal"

  s.license      = { :type => "MIT", :file => "LICENCE" }
  s.author       = { "Dennis de Oliveira" => "dennis@viacompany.com.br" }
  s.platform     = :ios
  s.ios.deployment_target = '7.1'
  s.source       = { :git => "https://github.com/dnsdesigner/BMBaseModal.git", :tag => "0.0.1" }
  s.source_files  = "Classes/*"
  s.requires_arc = true
end