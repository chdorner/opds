# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{opds}
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Benoit Larroque"]
  s.date = %q{2011-12-23}
  s.description = %q{ruby lib to access OPDS feeds}
  s.email = %q{benoit dot larroque at feedbooks dot com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/opds.rb",
    "lib/opds/acquisition_feed.rb",
    "lib/opds/entry.rb",
    "lib/opds/feed.rb",
    "lib/opds/navigation_feed.rb",
    "lib/opds/opds.rb",
    "lib/opds/parser.rb",
    "lib/opds/support/browser.rb",
    "lib/opds/support/linkset.rb",
    "lib/opds/support/logging.rb",
    "opds.gemspec",
    "samples/acquisition.txt",
    "samples/acquisition_opds1_1.txt",
    "samples/entry.txt",
    "samples/navigation.txt",
    "spec/browser_spec.rb",
    "spec/entry_spec.rb",
    "spec/linkset_spec.rb",
    "spec/opdsparser_opds_1_1_spec.rb",
    "spec/opdsparser_spec.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/zetaben/opds}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{ruby lib to read OPDS feeds}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
  end
end

