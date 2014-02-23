Gem::Specification.new do |s|
  s.name        = 'vagrant-phpstorm-tunnel'
  s.version     = '0.0.4'
  s.summary     = 'PhpStorm-Vagrant tunnel'
  s.description = 'Creates tunnel between PhpStorm and Vagrant machine to allow execute PHP via SSH'
  s.authors     = ['Cargo Media', 'kris-lab', 'njam']
  s.email       = 'hello@cargomedia.ch'
  s.files       = Dir['LICENSE*', 'README*', '{lib,data}/**/*']
  s.homepage    = 'https://github.com/cargomedia/vagrant-phpstorm-tunnel'
  s.license     = 'MIT'

  s.add_development_dependency 'rake'
end
