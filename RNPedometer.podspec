require "json"
package = JSON.parse(File.read("package.json"))

Pod::Spec.new do |s|
  s.name         = "RNPedometer"
  s.version      = package['version']
  s.description  = package['description']
  s.homepage     = "https://github.com/intechgrp/react-native-pedometer"
  s.summary      = "Pedometer"
  s.license      = package['license']
  s.author       = package['author']
  s.platform     = :ios, "8.0"
  s.source       = { git: package["repository"]["url"], :tag => s.version }
  s.source_files = "**/*.{h,m}"

  s.dependency "React"
end