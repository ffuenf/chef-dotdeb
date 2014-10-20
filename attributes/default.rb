default['dotdeb']['uri'] = 'http://packages.dotdeb.org'
default['dotdeb']['gpg-key'] = 'dotdeb.gpg'
default['dotdeb']['distribution'] = node['lsb']['codename']

# (Optional) if you want to install PHP 5.4, set the following variable to true:
default['dotdeb']['php54'] = false # for debian 6 (squeeze)

# (Optional) if you want to install PHP 5.5, set the following variable to true:
default['dotdeb']['php55'] = false # for debian 7 (wheezy)

# (Optional) if you want to install PHP 5.6, set the following variable to true:
default['dotdeb']['php56'] = false # for debian 7 (wheezy)
