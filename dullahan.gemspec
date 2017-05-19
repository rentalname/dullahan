# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dullahan/version'

Gem::Specification.new do |spec|
  spec.name          = "dullahan"
  spec.version       = Dullahan::VERSION
  spec.authors       = ["rentalname"]
  spec.email         = ["agenda21st@gmail.com"]

  spec.summary       = %q{Headless chrome with capybara}
  spec.description   = %q{Headless chrome with capybara}
  spec.homepage      = "https://github.com/rentalname/dullahan"
  spec.licenses      = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'capybara', "~> 2.0"
  spec.add_runtime_dependency 'selenium-webdriver', "~> 3.4"
  spec.add_runtime_dependency 'imgkit', '~> 1.6'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
