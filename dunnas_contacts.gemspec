require_relative "lib/dunnas_contacts/version"

Gem::Specification.new do |spec|
  spec.name        = "dunnas_contacts"
  spec.version     = DunnasContacts::VERSION
  spec.authors     = ["Isadora Dantas"]
  spec.email       = ["devisaah@gmail.com"]
  spec.homepage    = "https://github.com/devisaah/dunnas_contacts"
  spec.summary     = "Contacts feature for DunnasCRM."
  spec.description = "Contacts feature for DunnasCRM"
    spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/devisaah/dunnas_contacts.git"
  spec.metadata["changelog_uri"] = "https://github.com/devisaah/dunnas_contacts/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.3"
end
