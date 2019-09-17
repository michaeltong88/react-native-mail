require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = pjson["name"]
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/mingmingtong/react-native-mail"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "MingMing Tong" => "mingming8824@outlook.com" }
  s.platform        = :ios, "7.0"
  s.source          = { :git => "https://github.com/mingmingtong/react-native-mail", :tag => "v#{s.version}" }
  s.source_files    = 'RNMail/*.{h,m}'
  
  s.dependency 'React'

end
