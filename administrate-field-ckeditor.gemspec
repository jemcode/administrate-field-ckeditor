$:.push File.expand_path("../lib", __FILE__)

require "administrate/field/ckeditor"

Gem::Specification.new do |gem|
  gem.name = "administrate-field-ckeditor"
  gem.version = Administrate::Field::Ckeditor::VERSION
  gem.authors = ["Rikki Pitt"]
  gem.email = ["rikkipitt@gmail.com"]
  gem.homepage = "https://github.com/jemcode/administrate-field-ckeditor"
  gem.summary = "Plugin for adding ckeditor support in Administrate"
  gem.description = gem.summary
  gem.license = "MIT"

  gem.require_paths = ["lib"]
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.add_dependency "administrate", "~> 0.2.1"
  gem.add_dependency "rails", "~> 4.2"
  gem.add_dependency "ckeditor", "~> 4.1"
end
