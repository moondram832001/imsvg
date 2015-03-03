# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'imsvg/version'

Gem::Specification.new do |spec|
  spec.name          = "imsvg"
  spec.version       = Imsvg::VERSION
  spec.authors       = ["moondram832001"]
  spec.email         = ["moondram832001@gmail.com"]
  spec.summary       = %q{img to svg converter}
  spec.description   = %q{This gem converts any image file into a dual-color svg file}
  spec.homepage      = "https://github.com/moondram832001/imsvg.git"
  spec.requirements << 'ImageMagick && Potrace && Pngnq are required for this gem to function correctly'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  #spec.add_dependency 'MiniMagick'
  spec.add_runtime_dependency 'mini_magick'
  spec.add_runtime_dependency 'pngnq'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
 # spec.add_development_dependency "mini_magick"
end
