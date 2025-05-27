# DigiYoSDK.podspec - For Cocoapods Distribution using Git Source

Pod::Spec.new do |spec|
  spec.name         = 'DigiYoSDK'
  spec.version      = '1.0.0'
  spec.summary      = 'DigiYoSDK: Multiplatform for BioID'
  spec.homepage     = 'https://github.com/roshkadev/digiyo-ios' # Use the public HTTPS URL here
  spec.license      = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Roshka. All rights reserved.' }
  spec.authors      = { 'Roshka' => 'mobile@roshka.com' }

  # --- Source ---
  spec.source = {
     :http => 'https://github.com/roshkadev/digiyo-ios/releases/download/1.0.0/Digiyo.xcframework.zip', # UPDATE this URL post-release creation.
     :sha256 => '71ed43dc99c8dd235043f59eabc6ad8b249b3ae9c2fc5382e567d21d541b2db5' # UPDATE this with the calculated checksum.
  }
  # --- Platform ---
  spec.ios.deployment_target = '12.0'
  spec.swift_version = '5.9' 

  # --- Framework ---
  spec.vendored_frameworks = 'Digiyo.xcframework'

  # --- Dependencies ---
  spec.libraries = 'c++', 'z' # Include only necessary system libraries

  # Add framework dependencies if needed
  # spec.frameworks = 'UIKit', 'Foundation', 'Security'

  # --- Build Settings ---
  # No script phases or xcconfig needed for binary distribution

end
