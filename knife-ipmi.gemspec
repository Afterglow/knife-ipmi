require File.expand_path('../lib/knife-ipmi/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors		= ["Paul Thomas"]
  gem.email		= ["gems@paulthomas.eu"]
  gem.description	= %q{Interact with ruby-ipmitool using knife}
  gem.summary		= %q{Interact with ruby-ipmitool using knife}
  gem.homepage		= "http://github.com/Afterglow/knife-ipmi"

  gem.file		= `git ls-files`.split($\)
  gem.executables	= gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files	= gem.files.grep(%r{^(test|spec|features)/})
  gem.name		= "knife-ipmi"
  gem.require_paths	= ["lib"]
  gem.version		= Knife::Ipmi::VERSION
end
