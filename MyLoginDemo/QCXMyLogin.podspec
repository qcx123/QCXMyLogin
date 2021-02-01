Pod::Spec.new do |spec|
  spec.name         = "QCXMyLogin"
  spec.version      = "0.0.1"
  spec.summary      = "我的登录SDK"
  spec.homepage     = "https://github.com/qcx123/QCXMyLogin"
  spec.license      = "MIT"
  spec.author             = { "qcx123" => "email@address.com" }
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/qcx123/QCXMyLogin.git", :tag => spec.version }
  spec.source_files  = "QCXMyLogin", "MyLoginDemo/MyLoginDemo/MyLogin/*.{h,m}"
  spec.frameworks = "UIKit"
  spec.vendored_frameworks = "MyLoginDemo/MyLoginDemo/MyLogin/MyLogin/MyLoginSDK.framework","MyLoginDemo/MyLoginDemo/MyLogin/SDK/ALoginSDK.framework","MyLoginDemo/MyLoginDemo/MyLogin/SDK/BLoginSDK.framework"
  spec.requires_arc = true
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  
end
