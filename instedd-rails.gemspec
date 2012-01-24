# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "instedd_rails/version"

Gem::Specification.new do |s|
  s.name        = "instedd-rails"
  s.version     = InsteddRails::VERSION
  s.authors     = ["Instedd"]
  s.email       = ["support@instedd.org"]
  s.homepage    = "http://bitbucket.org/instedd/platform-common-rails"
  s.summary     = %q{Instedd Platform Common helpers for Rails}
  s.description = %q{This gem unifies all the helpers and common views used by all Instedd applications}

  s.rubyforge_project = "instedd-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("rails", ">= 3.0")
  s.add_dependency("breadcrumbs_on_rails")
end
