# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'gazpacho/version'

Gem::Specification.new do |s|
  s.name        = 'gazpacho'
  s.version     = Gazpacho::Version::STRING.dup
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Sylvester Keil']
  s.email       = 'http://sylvester.keil.or.at'
  s.homepage    = 'http://github.com/inukshuk/gazpacho'
  s.summary     = 'Export your gherkin features to other formats.'
  s.description = 'Gazpacho lets you export your gherkin features to formats such as YAML, JSON, and XML.'
  s.date        = Time.now

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = s.name

  s.add_dependency('gherkin', ['>= 2.3'])

  s.add_development_dependency('rake', ['>= 0.8'])
  s.add_development_dependency('rspec', ['>= 2.6'])
  s.add_development_dependency('cucumber', ['>= 0.10'])

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_path = "lib"

  s.has_rdoc         = true
  s.extra_rdoc_files = %w{LICENSE README.md History.txt}
  s.rdoc_options     = %w{--charset=UTF-8 --line-numbers --inline-source --title "Gazpacho Documentation" --main README.md --webcvs=http://github.com/inukshuk/gazpacho/tree/master/}
  
end

# vim: syntax=ruby