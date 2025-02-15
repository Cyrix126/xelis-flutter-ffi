#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint xelis_flutter.podspec` to validate before publishing.
#
release_tag_name = 'xelis_flutter_apple-v0.0.1'
local_zip_name = "#{release_tag_name}.zip"

framework_name = 'XelisFlutter.xcframework'
remote_zip_name = "#{framework_name}.zip"
url = "https://github.com/Tritonn204/xelis_flutter_ffi/releases/download/#{release_tag_name}/#{remote_zip_name}"
local_zip_name = "#{release_tag_name}.zip"

`
cd Frameworks
rm -rf #{framework_name}

if [ ! -f #{local_zip_name} ]
then
  curl -L #{url} -o #{local_zip_name}
fi

unzip #{local_zip_name}
cd -
`

Pod::Spec.new do |s|
  s.name             = 'xelis_flutter'
  s.version          = '0.0.1'
  s.summary          = 'iOS/macOS Flutter bindings for xelis_flutter'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.public_header_files = 'Classes/**/*.h'
  s.source_files = 'Classes/**/*'
  s.vendored_frameworks = "Frameworks/#{framework_name}"

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'OTHER_LDFLAGS' => '-force_load ${BUILT_PRODUCTS_DIR}/libxelis_flutter.a'
  }

  spec.ios.deployment_target = '12.0'
  spec.osx.deployment_target = '10.1'

  s.dependency 'FlutterMacOS'
end
