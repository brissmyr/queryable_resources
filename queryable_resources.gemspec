# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "queryable_resources/version"

Gem::Specification.new do |s|
  s.name        = "queryable_resources"
  s.version     = QueryableResources::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Queryable Resources makes it possible to ask custom queries on Mongoid resources without need for server implementation"
  s.email       = "brissmyr@popdevelop.com"
  s.homepage    = "http://github.com/brissmyr/queryable_resources"
  s.description = "Queryable Resources makes it possible to ask custom queries on Mongoid resources without need for server implementation"
  s.authors     = ['Johan Brissmyr']

  s.rubyforge_project = "queryable_resources"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
