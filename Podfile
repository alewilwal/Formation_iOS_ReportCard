# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'ReportCard' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

pod 'RealmSwift'

  # Pods for ReportCard

  target 'ReportCardTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'ReportCardUITests' do
    inherit! :search_paths
    # Pods for testing
  end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end


end
