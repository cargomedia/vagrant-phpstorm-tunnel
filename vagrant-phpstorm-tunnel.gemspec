Gem::Specification.new do |s|
  s.name        = 'vagrant-phpstorm-tunnel'
  s.version     = '0.1.1'
  s.summary     = 'Proxy php-calls from PhpStorm to Vagrant'
  s.description = 'Installs a proxy php binary which can be configured as a php-interpreter in PhpStorm'
  s.authors     = ['Cargo Media', 'kris-lab', 'njam']
  s.email       = 'hello@cargomedia.ch'
  s.files       = Dir['LICENSE*', 'README*', '{lib,data}/**/*']
  s.homepage    = 'https://github.com/cargomedia/vagrant-phpstorm-tunnel'
  s.license     = 'MIT'

  s.add_development_dependency 'rake'
end
