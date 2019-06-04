Pod::Spec.new do |spec|
  spec.name         = 'CCGradient'
  spec.version      = '1.0.0'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/cjcoax/CCGradientView'
  spec.authors      = { 'Amir Rezvani' => 'a.h.rezvani@gmail.com' }
  spec.summary      = 'Lightweight, easy to use Gradient view backed by GPU powered CoreAnimation\'s Layer, with 380+ built-in gradient colors, mostly ported from uigradients'
  spec.source       = { :git => 'https://github.com/cjcoax/CCGradientView.git', :tag => spec.version }
  spec.source_files = 'CCGradient/CCGradientView/*.swift'

  spec.ios.deployment_target = '12.2'

  spec.swift_version = '5.0'
end