# CHANGELOG for dotdeb

This file is used to list changes made in each version of dotdeb.

## 1.1.3

* adjust/exclude php-repositories for Debian 8.0 Jessie

## 1.1.2

* add Yevhen Viktorov (<yev@bdhr.co>) as contributor
* release on supermarket.chef.io

## 1.1.1

* added all different setting for php
* refactore php_version logic
* update/integrate testsuites: test-kitchen, foodcritic, rubocop, travis-ci

## 1.1.0

* update/integrate testsuites: test-kitchen, foodcritic, rubocop, travis-ci
* prepare for release on supermarket.chef.io

## 1.0.1

* added setting for php56 (wheezy)

## 0.0.9

* add node.default['dotdeb']['gpg-key'] to circumvent downtime of website

## 0.0.8:

* set default distribution to debian 7 (wheezy)
* introduce test-kitchen

## 0.0.7:

* added setting for php55 (wheezy)

## 0.0.6:

* added dotdeb components other than php54

## 0.0.5:

* rewrite to set uri and distribution manually
* removed mirror handling

## 0.0.4:

* correct dotdeb mirror and php54 setting

## 0.0.3:

* added dotdeb mirror setting

## 0.0.2:

* added proper apt_repository update

## 0.0.1:

* Initial release of dotdeb