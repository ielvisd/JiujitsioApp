# -*- encoding: utf-8 -*-
# stub: rubygems-update 3.0.6 ruby hide_lib_for_update

Gem::Specification.new do |s|
  s.name = "rubygems-update".freeze
  s.version = "3.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["hide_lib_for_update".freeze]
  s.authors = ["Jim Weirich".freeze, "Chad Fowler".freeze, "Eric Hodel".freeze, "Luis Lavena".freeze, "Aaron Patterson".freeze, "Samuel Giddins".freeze, "Andr\u00E9 Arko".freeze, "Evan Phoenix".freeze, "Hiroshi SHIBATA".freeze]
  s.date = "2019-08-16"
  s.description = "A package (also known as a library) contains a set of functionality\n  that can be invoked by a Ruby program, such as reading and parsing an XML file. We call\n  these packages 'gems' and RubyGems is a tool to install, create, manage and load these\n  packages in your Ruby environment. RubyGems is also a client for RubyGems.org, a public\n  repository of Gems that allows you to publish a Gem that can be shared and used by other\n  developers. See our guide on publishing a Gem at guides.rubygems.org".freeze
  s.email = ["".freeze, "".freeze, "drbrain@segment7.net".freeze, "luislavena@gmail.com".freeze, "aaron@tenderlovemaking.com".freeze, "segiddins@segiddins.me".freeze, "andre@arko.net".freeze, "evan@phx.io".freeze, "hsbt@ruby-lang.org".freeze]
  s.executables = ["update_rubygems".freeze]
  s.extra_rdoc_files = ["History.txt".freeze, "LICENSE.txt".freeze, "MAINTAINERS.txt".freeze, "MIT.txt".freeze, "Manifest.txt".freeze, "README.md".freeze, "UPGRADING.md".freeze, "POLICIES.md".freeze, "CODE_OF_CONDUCT.md".freeze, "CONTRIBUTING.md".freeze, "bundler/CHANGELOG.md".freeze, "bundler/CODE_OF_CONDUCT.md".freeze, "bundler/CONTRIBUTING.md".freeze, "bundler/LICENSE.md".freeze, "bundler/README.md".freeze, "hide_lib_for_update/note.txt".freeze]
  s.files = ["CODE_OF_CONDUCT.md".freeze, "CONTRIBUTING.md".freeze, "History.txt".freeze, "LICENSE.txt".freeze, "MAINTAINERS.txt".freeze, "MIT.txt".freeze, "Manifest.txt".freeze, "POLICIES.md".freeze, "README.md".freeze, "UPGRADING.md".freeze, "bin/update_rubygems".freeze, "bundler/CHANGELOG.md".freeze, "bundler/CODE_OF_CONDUCT.md".freeze, "bundler/CONTRIBUTING.md".freeze, "bundler/LICENSE.md".freeze, "bundler/README.md".freeze, "hide_lib_for_update/note.txt".freeze]
  s.homepage = "https://rubygems.org".freeze
  s.licenses = ["Ruby".freeze, "MIT".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze, "--title=RubyGems Update Documentation".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "RubyGems is a package management framework for Ruby.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<builder>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 6.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.60.0"])
    else
      s.add_dependency(%q<builder>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 6.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.60.0"])
    end
  else
    s.add_dependency(%q<builder>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 6.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.60.0"])
  end
end
