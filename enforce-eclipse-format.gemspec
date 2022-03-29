lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "version"
Gem::Specification.new do |spec|
  spec.name = "enforce-eclipse-format"
  spec.version = ENFORCE_ECLIPSE_FORMAT::VERSION
  spec.authors = ["Niklaus Giger"]
  spec.email = ["niklaus.giger@memberfsf.org"]
  spec.required_ruby_version = ">= 2.6.0"
  spec.licenses = ["MIT"]
  spec.summary = "Enforce Eclipse Formatting rules. Requires installed eclipse IDE"
  spec.homepage = "https://github.com/ngiger/enforce-eclipse-format"

  spec.bindir = "bin"
  spec.require_paths = ["lib"]
  spec.executables = ["enforce-eclipse-format"]
  spec.files = ["bin/enforce-eclipse-format"] + Dir.glob("formats/*.xml") + Dir.glob("lib/*.rb")
  spec.add_dependency "optimist", "~>3.0.1"
  spec.add_development_dependency "standardrb", "~>1.0.1"
end
