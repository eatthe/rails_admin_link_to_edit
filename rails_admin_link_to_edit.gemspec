# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_admin_link_to_edit/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_admin_link_to_edit"
  spec.version       = RailsAdminLinkToEdit::VERSION
  spec.authors       = ["Jeremy Smith"]
  spec.email         = ["jeremy@superplussed.com"]
  spec.summary       = %q{Standardize linking from a resource list to edit and show pages}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
