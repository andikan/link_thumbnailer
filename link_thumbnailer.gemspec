# -*- encoding: utf-8 -*-
require File.expand_path('../lib/link_thumbnailer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Pierre-Louis Gottfrois"]
  gem.email         = ["pierrelouis.gottfrois@gmail.com"]
  gem.description   = %q{Ruby gem generating thumbnail images from a given URL.}
  gem.summary       = %q{Ruby gem ranking images from a given URL returning an object containing images and website informations.}
  gem.homepage      = "https://github.com/gottfrois/link_thumbnailer"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "link_thumbnailer"
  gem.require_paths = ["lib"]
  gem.version       = LinkThumbnailer::VERSION

  gem.add_dependency 'nokogiri',              '>= 1.5.5'
  gem.add_dependency 'hashie',                '>= 1.2.0'
  gem.add_dependency 'net-http-persistent',   '>= 2.7'
  gem.add_dependency 'rmagick',               '>= 2.13.1'
  gem.add_dependency 'json',                  '>= 1.7.6'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec',     '>= 2.11.0'
  gem.add_development_dependency 'webmock',   '>= 1.8.10'
  gem.add_development_dependency 'coveralls'
end
