# bash_php_changer
This shell-script changes the php version (at least for Ubuntu Linux) if you ave installed multiple Versions from the [Ondrej-PPA](https://launchpad.net/~ondrej/+archive/ubuntu/php) as described by [Lorna Jane](http://lornajane.net/posts/2016/php-7-0-and-5-6-on-ubuntu).

ALSO WORKS WITH [OH-MY-ZSH](https://github.com/robbyrussell/oh-my-zsh)

## Installation
```
# 1.) Install in /opt for all users
cd /opt

# 2.) Clone from github (use https if you don't have a ssh-key on github)
git clone git@github.com:ueberbit/bash_php_changer.git

# 3.) Create a softlink to the shellscript on your path
sudo ln -s /opt/bash_php_changer/activate-php.sh /usr/local/bin/activate-php

# 4.) Make it executable
sudo chmod +x /usr/local/bin/activate-php
```

## USAGE:
```activate-php [YOUR-VERSION]```

For Example:

```
activate-php 5.6

# To Check: 
php -v

->
PHP 5.6.25-1+deb.sury.org~xenial+1 (cli) 
Copyright (c) 1997-2016 The PHP Group
Zend Engine v2.6.0, Copyright (c) 1998-2016 Zend Technologies
    with Zend OPcache v7.0.6-dev, Copyright (c) 1999-2016, by Zend Technologies
```

