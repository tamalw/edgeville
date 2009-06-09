# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{edgeville}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tamal White"]
  s.date = %q{2009-06-09}
  s.description = %q{Gem for accessing player and GE info from the popular MMORPG, Runescape.}
  s.email = %q{tamal@firblitz.com}
  s.extra_rdoc_files = ["CHANGELOG", "lib/edgeville.rb", "README.rdoc"]
  s.files = ["CHANGELOG", "edgeville.gemspec", "init.rb", "lib/edgeville.rb", "Manifest", "Rakefile", "README.rdoc"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/firblitz/edgeville}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Edgeville", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{edgeville}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Gem for accessing player and GE info from the popular MMORPG, Runescape.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
