$:.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cuit_validator"
  s.version     = "0.0.1"
  s.authors     = ["Maximiliano García"]
  s.email       = ["magf.1987@gmail.com"]
  s.homepage    = %q{https://github.com/maxigarciaf/cuit_validator}
  s.summary     = "A cuit validator for Ruby and Rails >= 3"
  s.description = "TODO: Description of CuitValidator."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "activemodel"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
