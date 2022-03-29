lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|

  spec.name = "enforce-eclipse-format"
  spec.version = 0.1
  spec.authors = ["Niklaus Giger"]
  spec.email = ["niklaus.giger@memberfsf.org"]
  spec.required_ruby_version = ">= 2.6.0"

  spec.summary = "Enforce Eclipse Formatting rules. Requires installed eclipse IDE"
  spec.homepage = "https://github.com/ngiger/pre-commit"

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

end
