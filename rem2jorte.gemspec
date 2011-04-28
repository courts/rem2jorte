# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rem2jorte}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrick Hof"]
  s.date = %q{2011-04-28}
  s.email = %q{courts@offensivethinking.org}
  s.files = ["bin/rem2jorte"]
  s.executables = ["rem2jorte"]
  s.homepage = %q{http://www.offensivethinking.org}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A simple script converting remind -s output to Android's Jorte calendar CSV format}
  s.add_dependency('remparser', '>= 0.0.2')

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3
  end
end
