vagrant-phpstorm-tunnel
=======================
`vagrant-phpstorm-tunnel` installs a proxy php binary which can be configured as a php-interpreter in [PhpStorm](http://www.jetbrains.com/phpstorm/).
It will forward all php calls to `php` in the [Vagrant](http://www.vagrantup.com/) VM.

This is a workaround for a missing feature in PhpStorm (see http://youtrack.jetbrains.com/issue/WI-19485).

Installation
------------
```sh
vagrant plugin install vagrant-phpstorm-tunnel
```

PhpStorm
--------
`vagrant-phpstorm-tunnel` will create a file `.idea/vagrant/php` in your vagrant-project.
Select this file as a PHP interpreter in PhpStorm:
![PhpStorm screenshot](docu/phpstorm-interpreter.png)

Limitations
-----------
The plugin assumes your project is shared as `/vagrant` in the VM.
It will copy PhpStorm's helper-scripts into `.idea/vagrant/tmp/` to make them accessible from within the VM.
