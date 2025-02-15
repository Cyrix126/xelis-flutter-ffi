#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint xelis_flutter.podspec` to validate before publishing.
#
release_tag_name = 'xelis_flutter_apple-v0.0.1'
framework_name = 'XelisFlutter.xcframework'
remote_zip_name = "#{framework_name}.zip"
url = "https://github.com/Tritonn204/xelis_flutter_ffi/releases/download/#{release_tag_name}/#{remote_zip_name}"
local_zip_name = "#{release_tag_name}.zip"
local_framework_path = "Frameworks/#{framework_name}"

# Check if we should do a local build or try download
if ENV['XELIS_FLUTTER_BUILD_LOCAL'] == '1'
  puts "Building #{framework_name} locally as requested by environment variable..."
  build_local = true
else
  # Try downloading first
  system(<<-SCRIPT
    mkdir -p Frameworks
    cd Frameworks
    rm -rf #{framework_name}
    
    if [ ! -f #{local_zip_name} ]; then
      curl -L #{url} -o #{local_zip_name} || exit 1
    fi
    
    unzip -o #{local_zip_name} || exit 1
    cd -
  SCRIPT
  )
  
  # If the download or unzip failed, or framework doesn't exist, fall back to local build
  build_local = !$?.success? || !File.exist?(local_framework_path)
  
  if build_local
    puts "Download failed or framework missing. Falling back to local build..."
  end
end

if build_local
  puts "Building #{framework_name} locally..."
  system(<<-SCRIPT
    cd ..
    ./scripts/apple/build_all.sh || exit 1
    mkdir -p ios/Frameworks macos/Frameworks
    cp -R platform-build/#{framework_name}.zip ios/Frameworks/#{local_zip_name}
    cp -R platform-build/#{framework_name}.zip macos/Frameworks/#{local_zip_name}
    cd ios/Frameworks
    unzip -o #{local_zip_name}
    cd ../../macos/Frameworks
    unzip -o #{local_zip_name}
  SCRIPT
  )
  
  if !$?.success?
    raise "Local build failed. Please ensure your Rust environment is properly configured and build-apple.sh exists."
  end
end

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

  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.11'

  s.dependency 'FlutterMacOS'
end