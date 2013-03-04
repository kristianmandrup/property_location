$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "property_location/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "property_location"
  s.version     = PropertyLocation::VERSION
  s.authors     = ["Kristian Mandrup"]
  s.email       = ["kmandrup@gmail.com"]
  s.homepage    = "http://www.danrent.dk"
  s.summary     = "Property Location"
  s.description = "Geo location and Mappable via Google Maps etc"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  # s.add_dependency "rails", "~> 3.2.11"
  # s.add_dependency "jquery-rails"
end
