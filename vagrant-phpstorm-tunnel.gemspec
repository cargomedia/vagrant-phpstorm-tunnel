require File.expand_path('../lib/vagrant-phpstorm-tunnel/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['kris-lab for Cargomedia AG']
  gem.email         = 'hello@cargomedia.ch'
  gem.description   = 'Creates tunnel between PhpStorm and Vagrant machine to allow execute PHP via SSH'
  gem.summary       = 'PhpStorm-Vagrant tunnel'
  gem.homepage      = 'https://github.com/kris-lab/vagrant-phpstorm-tunnel'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'vagrant-phpstorm-tunnel'
  gem.require_paths = ["lib"]
  gem.version       = Vagrant::VagrantPhpStormTunnel::VERSION
  gem.license       = 'MIT'
end
