# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'notch8/setup/version'

Gem::Specification.new do |spec|
  spec.name          = "notch8-setup"
  spec.version       = Notch8::Setup::VERSION
  spec.authors       = ["Rob Kaufman"]
  spec.email         = ["rob@notch8.com"]

  spec.summary       = %q{Set of gems we use for testing and debugging Rails apps}
  spec.description   = %q{Notch8 basic set up, includes better_errros, pry, byebug, guard, rspec and friends.}
  spec.homepage      = "https://github.com/notch8/notch8-setup"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.post_install_message = File.read(File.expand_path('../PostInstall', __FILE__))

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency 'better_errors'
  spec.add_dependency 'binding_of_caller'
  spec.add_dependency 'capybara'
  spec.add_dependency 'database_cleaner'
  spec.add_dependency 'factory_girl_rails'
  spec.add_dependency 'guard-bundler'
  spec.add_dependency 'guard-migrate'
  spec.add_dependency 'guard-rspec'
  spec.add_dependency 'guard-rubocop'
  spec.add_dependency 'guard'
  spec.add_dependency 'guard-livereload', '~> 2.5'
  spec.add_dependency 'launchy'
  spec.add_dependency 'poltergeist'
  spec.add_dependency 'pry'
  spec.add_dependency 'pry-remote'
  spec.add_dependency 'pry-rails'
  spec.add_dependency 'pry-byebug'
  spec.add_dependency 'rack-livereload'
  spec.add_dependency 'rspec-rails'
  spec.add_dependency 'selenium-webdriver'
  spec.add_dependency 'shoulda'

end
