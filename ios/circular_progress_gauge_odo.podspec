#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'circular_progress_gauge_odo'
  s.version          = '0.0.1'
  s.summary          = 'Introducing the new &quot;odo&quot; widget in flutter. It simulates a odometer or a speedometer style gauge in mobile application.'
  s.description      = <<-DESC
Introducing the new &quot;odo&quot; widget in flutter. It simulates a odometer or a speedometer style gauge in mobile application.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  
  s.ios.deployment_target = '8.0'
end

