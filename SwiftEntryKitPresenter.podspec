Pod::Spec.new do |s|
  s.name = 'SwiftEntryKitPresenter'
  s.version = '2.1.1'
  s.summary = 'A simple banner and pop-up displayer for iOS. Written in Swift.'
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'
  s.requires_arc = true

s.description      = <<-DESC
SwiftEntryKit is a banner presenter library for iOS. It can be used to easily display pop-ups and notification-like views within your iOS apps. SwiftEntryKit is highly customizable but also offers a bunch of beautiful presets that can be themed with your app fonts and colors.
DESC
  s.homepage         = 'https://github.com/astrokin/SwiftEntryKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Daniel Huri' => 'huri000@gmail.com' }
  s.source           = { :git => 'https://github.com/astrokin/SwiftEntryKit.git', :tag => s.version.to_s }
  s.source_files = 'Source/**/*'
  s.frameworks = 'UIKit'
end