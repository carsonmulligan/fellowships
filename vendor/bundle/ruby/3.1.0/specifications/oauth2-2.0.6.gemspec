# -*- encoding: utf-8 -*-
# stub: oauth2 2.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = "oauth2".freeze
  s.version = "2.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/oauth-xx/oauth2/issues", "changelog_uri" => "https://github.com/oauth-xx/oauth2/blob/v2.0.6/CHANGELOG.md", "documentation_uri" => "https://www.rubydoc.info/gems/oauth2/2.0.6", "homepage_uri" => "https://github.com/oauth-xx/oauth2", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/oauth-xx/oauth2/tree/v2.0.6", "wiki_uri" => "https://github.com/oauth-xx/oauth2/wiki" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Peter Boling".freeze, "Erik Michaels-Ober".freeze, "Michael Bleigh".freeze]
  s.bindir = "exe".freeze
  s.date = "2022-07-13"
  s.description = "A Ruby wrapper for the OAuth 2.0 protocol built with a similar style to the original OAuth spec.".freeze
  s.email = ["peter.boling@gmail.com".freeze]
  s.homepage = "https://github.com/oauth-xx/oauth2".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "\nYou have installed oauth2 version OAuth2::Version, congratulations!\n\nThere are BREAKING changes, but most will not encounter them, and updating your code should be easy!\n\nPlease see:\n\u2022 https://github.com/oauth-xx/oauth2#what-is-new-for-v20\n\u2022 https://github.com/oauth-xx/oauth2/blob/master/CHANGELOG.md\n\nPlease report issues, and support the project! Thanks, |7eter l-|. l3oling\n\n".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.0".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "A Ruby wrapper for the OAuth 2.0 protocol.".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<faraday>.freeze, [">= 0.17.3", "< 3.0"])
    s.add_runtime_dependency(%q<jwt>.freeze, [">= 1.0", "< 3.0"])
    s.add_runtime_dependency(%q<multi_xml>.freeze, ["~> 0.5"])
    s.add_runtime_dependency(%q<rack>.freeze, [">= 1.2", "< 3"])
    s.add_runtime_dependency(%q<rash_alt>.freeze, [">= 0.4", "< 1"])
    s.add_runtime_dependency(%q<version_gem>.freeze, ["~> 1.1"])
    s.add_development_dependency(%q<addressable>.freeze, [">= 2"])
    s.add_development_dependency(%q<backports>.freeze, [">= 3"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 2"])
    s.add_development_dependency(%q<rake>.freeze, [">= 12"])
    s.add_development_dependency(%q<rexml>.freeze, [">= 3"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 3"])
    s.add_development_dependency(%q<rspec-block_is_expected>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-pending_for>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-stubbed_env>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop-lts>.freeze, ["~> 8.0"])
    s.add_development_dependency(%q<silent_stream>.freeze, [">= 0"])
  else
    s.add_dependency(%q<faraday>.freeze, [">= 0.17.3", "< 3.0"])
    s.add_dependency(%q<jwt>.freeze, [">= 1.0", "< 3.0"])
    s.add_dependency(%q<multi_xml>.freeze, ["~> 0.5"])
    s.add_dependency(%q<rack>.freeze, [">= 1.2", "< 3"])
    s.add_dependency(%q<rash_alt>.freeze, [">= 0.4", "< 1"])
    s.add_dependency(%q<version_gem>.freeze, ["~> 1.1"])
    s.add_dependency(%q<addressable>.freeze, [">= 2"])
    s.add_dependency(%q<backports>.freeze, [">= 3"])
    s.add_dependency(%q<bundler>.freeze, [">= 2"])
    s.add_dependency(%q<rake>.freeze, [">= 12"])
    s.add_dependency(%q<rexml>.freeze, [">= 3"])
    s.add_dependency(%q<rspec>.freeze, [">= 3"])
    s.add_dependency(%q<rspec-block_is_expected>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-pending_for>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-stubbed_env>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop-lts>.freeze, ["~> 8.0"])
    s.add_dependency(%q<silent_stream>.freeze, [">= 0"])
  end
end
