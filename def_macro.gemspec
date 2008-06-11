Gem::Specification.new do |s|
  s.name = %q{def_macro}
  s.version = "0.0.1"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Drew Olson"]
  s.date = %q{2008-06-10}
  s.description = %q{Macros for ruby}
  s.email = ["drew@drewolson.org"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/def_macro.rb", "test/test_def_macro.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/dfg59/def_macro/tree/master}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{def_macro}
  s.rubygems_version = %q{1.1.1}
  s.summary = %q{Macros for ruby}
  s.test_files = ["test/test_def_macro.rb"]

  s.add_dependency(%q<ruby2ruby>, [">= 1.1.9"])
  s.add_dependency(%q<need>, [">= 1.1.0"])
  s.add_dependency(%q<hoe>, [">= 1.5.3"])
end
