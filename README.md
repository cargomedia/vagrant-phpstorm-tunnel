vagrant-phpstorm-tunnel
==============================

`vagrant-phpstorm-tunnel` creates tunnel between [PHPStorm](http://www.jetbrains.com/phpstorm/) and [Vagrant](http://www.vagrantup.com/) machine to allow executing [PHP](http://php.net/) via [SSH](http://en.wikipedia.org/wiki/Secure_Shell)

## Installation

    $ vagrant plugin install vagrant-phpstorm-tunnel

## Vagrantfile

```ruby
Vagrant.require_plugin "vagrant-phpstorm-tunnel"

Vagrant.configure("2") do |config|
    #...
end
```

## PhpStorm

`vagrant-phpstorm-tunnel` will create file `php` in location `./scripts/vagrant/php` relative to `Vagrantfile`. You should configure you `PHP` interpreter by navigate to folder `<path-to-project>/scripts/vagrant`.

## Known issues
* `./scripts/vagrant/php` has wrong permissions. Should be executable. You can change it by navigating to your project and `chmod +x scripts/vagrant/php`.
