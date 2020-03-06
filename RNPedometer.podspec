require "json"
version = JSON.parse(File.read("package.json"))["version"]

Pod::Spec.new do |s|
  s.name         = "RNPedometer"
  s.version      = version
  s.description  = "Provide Pedometer to your React Native application"
  s.homepage     = "https://github.com/intechgrp/react-native-pedometer"
  s.summary      = "Pedometer"
  s.license      = "MIT"
  s.author       = { "Aymeric Zanirato" => "aymeric.zanirato@intech.lu" }
  s.ios.deployment_target = "7.0"
  s.source       = { git: "https://github.com/intechgrp/react-native-pedometer", tag: "v" + s.version.to_s }
  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end