# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{defmacro}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Drew Olson"]
  s.date = %q{2008-12-02}
  s.description = %q{Macros for ruby}
  s.email = ["drew@drewolson.org"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "README.txt", "Rakefile", "lib/def_macro.rb", "lib/defmacro.rb", "test/test_def_macro.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/dfg59/def_macro/tree/master}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{defmacro}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Macros for ruby}
  s.test_files = ["test/test_def_macro.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ruby2ruby>, [">= 1.1.9"])
      s.add_runtime_dependency(%q<need>, [">= 1.1.0"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.2"])
    else
      s.add_dependency(%q<ruby2ruby>, [">= 1.1.9"])
      s.add_dependency(%q<need>, [">= 1.1.0"])
      s.add_dependency(%q<hoe>, [">= 1.8.2"])
    end
  else
    s.add_dependency(%q<ruby2ruby>, [">= 1.1.9"])
    s.add_dependency(%q<need>, [">= 1.1.0"])
    s.add_dependency(%q<hoe>, [">= 1.8.2"])
  end
end
