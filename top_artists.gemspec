
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "top_artists/version"

Gem::Specification.new do |spec|
  spec.name          = "top_artists"
  spec.version       = TopArtists::VERSION
  spec.authors       = ["'Joana Palero'"]
  spec.email         = ["'joana.palero24@gmail.com'"]

  spec.summary       = "This is a list my favorite top 3 artists for summer 2018."
  spec.description   = "This project will list my favorite top 3 artists with a song title."
  spec.homepage      = "https://www.ranker.com/list/best-rap-albums-2018/ranker-music?ref=gnrtednxtlst&pos=1&ltype=l&l=2657569&g=2&a=0"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = "top_artists"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  
  spec.add_dependency "nokogiri"
end
