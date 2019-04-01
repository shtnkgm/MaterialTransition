# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'MaterialTransition' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  inhibit_all_warnings!
  pod 'Hero'
  pod 'SnapKit'
  pod 'Then'

  # Pods for MaterialTransition

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['GCC_WARN_INHIBIT_ALL_WARNINGS'] = "YES"
        end
    end
end
