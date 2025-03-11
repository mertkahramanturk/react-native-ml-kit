# RNMLKitTextRecognition.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNMLKitTextRecognition"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://github.com/a7med-mahmoud/react-native-ml-kit"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Ahmed Mahmoud" => "a7med.mahmoud2004@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/a7med-mahmoud/react-native-ml-kit.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true

  s.dependency "React"
	s.dependency 'GoogleMLKit/TextRecognition', '>= 6.0.0'
	s.dependency 'GoogleMLKit/TextRecognitionChinese', '>= 6.0.0'
	s.dependency 'GoogleMLKit/TextRecognitionDevanagari', '>= 6.0.0'
	s.dependency 'GoogleMLKit/TextRecognitionJapanese', '>= 6.0.0'
	s.dependency 'GoogleMLKit/TextRecognitionKorean', '>= 6.0.0'
  s.dependency 'GoogleDataTransport', '~> 10.0'
	s.dependency 'MLKitCommon', '~> 10.0'
end

