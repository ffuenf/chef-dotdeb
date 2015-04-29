default['dotdeb']['uri'] = 'http://packages.dotdeb.org'
default['dotdeb']['gpg-key'] = 'dotdeb.gpg'
default['dotdeb']['distribution'] = node['lsb']['codename']

# if you want to install
# PHP 5.6 on Debian 8 "Jessie", set default['dotdeb']['php_version'] = '5.6' (which is the default version on this release)
# PHP 5.6 on Debian 7 "Wheezy" (without Zend thread safety), set default['dotdeb']['php_version'] = '5.6'
# PHP 5.6 on Debian 7 "Wheezy" (with Zend thread safety), set default['dotdeb']['php_version'] = '5.6-zts'
# PHP 5.5 on Debian 7 "Wheezy", set default['dotdeb']['php_version'] = '5.5'
# PHP 5.4 on Debian 6 "Squeeze", set default['dotdeb']['php_version'] = '5.4'
default['dotdeb']['php_version'] = '5.5'
