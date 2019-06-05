Pod::Spec.new do |spec|
  spec.name         = 'CCGradient'
  spec.version      = '1.0.2'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/cjcoax/CCGradientView'
  spec.authors      = { 'Amir Rezvani' => 'a.h.rezvani@gmail.com' }
  spec.summary      = 'Lightweight, easy to use Gradient'
  spec.source       = { :git => 'https://github.com/cjcoax/CCGradientView.git', :tag => spec.version }
  spec.source_files = 'Sources/*.swift'

  spec.ios.deployment_target = '12.2'

  spec.swift_version = '5.0'
end