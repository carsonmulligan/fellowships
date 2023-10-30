# -*- encoding: utf-8 -*-
# stub: madmin 1.2.8 ruby lib

Gem::Specification.new do |s|
  s.name = "madmin".freeze
  s.version = "1.2.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Oliver".freeze, "Andrea Fomera".freeze]
  s.date = "2023-05-10"
  s.description = "It's an admin, obviously.".freeze
  s.email = ["excid3@gmail.com".freeze, "afomera@hey.com".freeze]
  s.homepage = "https://github.com/excid3/madmin".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "A modern admin for Ruby on Rails apps".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 6.0.3"])
    s.add_runtime_dependency(%q<pagy>.freeze, [">= 3.5"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 6.0.3"])
    s.add_dependency(%q<pagy>.freeze, [">= 3.5"])
  end
end
