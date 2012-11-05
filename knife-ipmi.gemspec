Gem::Specification.new do |gem|
  gem.authors		= ["Paul Thomas"]
  gem.email		= ["gems@paulthomas.eu"]
  gem.description	= %q{Interact with ruby-ipmitool using knife}
  gem.summary		= %q{Interact with ruby-ipmitool using knife}
  gem.homepage		= "http://github.com/Afterglow/knife-ipmi"

  gem.files		= `git ls-files`.split($\)
  gem.name		= "knife-ipmi"
  gem.require_paths	= ["lib"]
  gem.version		= "0.0.1"
end
