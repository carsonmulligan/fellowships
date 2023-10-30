# -*- encoding: utf-8 -*-
# stub: rash_alt 0.4.12 ruby lib

Gem::Specification.new do |s|
  s.name = "rash_alt".freeze
  s.version = "0.4.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["tcocca".freeze, "Shigenobu Nishikawa".freeze]
  s.date = "2022-02-21"
  s.description = "simple extension to Hashie::Mash for rubyified keys, all keys are converted to underscore to eliminate horrible camelCasing".freeze
  s.email = "tom.cocca@gmail.com, shishi@srevo.net".freeze
  s.homepage = "https://github.com/shishi/rash_alt".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.3.7".freeze
  s.summary = "simple extension to Hashie::Mash for rubyified keys".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<hashie>.freeze, [">= 3.4"])
    s.add_development_dependency(%q<rake>.freeze, [">= 13.0.3"])
    s.add_development_dependency(%q<rdoc>.freeze, [">= 6.3.0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 3.4"])
  else
    s.add_dependency(%q<hashie>.freeze, [">= 3.4"])
    s.add_dependency(%q<rake>.freeze, [">= 13.0.3"])
    s.add_dependency(%q<rdoc>.freeze, [">= 6.3.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.4"])
  end
end
