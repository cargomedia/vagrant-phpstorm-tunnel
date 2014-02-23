vagrant-phpstorm-tunnel
=======================

`vagrant-phpstorm-tunnel` installs a proxy php binary which can be configured as a php-interpreter in [PHPStorm](http://www.jetbrains.com/phpstorm/).
It will forward all php calls to `php` in the [Vagrant](http://www.vagrantup.com/) VM.

This is a workaround for a missing feature in PHPStorm (see http://youtrack.jetbrains.com/issue/WI-19485).

Installation
------------
```sh
vagrant plugin install vagrant-phpstorm-tunnel
```

PhpStorm
--------
`vagrant-phpstorm-tunnel` will create a file `.idea/vagrant/php` in your vagrant-project.
Select this file as a PHP interpreter in PHPStorm:
![PHPStorm screenshot](docu/phpstorm-interpreter.png)
