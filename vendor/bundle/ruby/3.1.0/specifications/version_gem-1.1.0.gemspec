# -*- encoding: utf-8 -*-
# stub: version_gem 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "version_gem".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/pboling/version_gem/issues", "changelog_uri" => "https://github.com/pboling/version_gem/blob/v1.1.0/CHANGELOG.md", "documentation_uri" => "https://www.rubydoc.info/gems/version_gem/1.1.0", "homepage_uri" => "https://github.com/pboling/version_gem", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/pboling/version_gem/tree/v1.1.0", "wiki_uri" => "https://github.com/pboling/version_gem/wiki" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Peter Boling".freeze]
  s.bindir = "exe".freeze
  s.date = "2022-06-24"
  s.description = "Versions are good. Versions are cool. Versions will win.".freeze
  s.email = ["peter.boling@gmail.com".freeze]
  s.homepage = "https://github.com/pboling/version_gem".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Enhance your VERSION! Sugar for Version modules.".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop-lts>.freeze, ["~> 8.0", ">= 8.0.2"])
    s.add_development_dependency(%q<rubocop-rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop-performance>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop-lts>.freeze, ["~> 8.0", ">= 8.0.2"])
    s.add_dependency(%q<rubocop-rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop-performance>.freeze, [">= 0"])
  end
end
