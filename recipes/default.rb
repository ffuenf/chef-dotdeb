#
# Author::  Achim Rosenhagen (<a.rosenhagen@ffuenf.de>)
# Author::  Yevhen Viktorov (<yev@bdhr.co>)
# Cookbook Name:: dotdeb
# Recipe:: default
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if node['platform'] == 'debian'
  include_recipe 'apt'
  # switch php versions
  if node['dotdeb']['distribution'] != 'jessie'
    if node['dotdeb']['php_version'] == '5.6'
      apt_repository 'dotdeb-php56' do
        uri node['dotdeb']['uri']
        distribution "#{node['dotdeb']['distribution']}-php56"
        components ['all']
        key node['dotdeb']['gpg-key']
        cookbook 'dotdeb'
        action :add
      end
    elsif node['dotdeb']['php_version'] == '5.6-zts'
      apt_repository 'dotdeb-php56-zts' do
        uri node['dotdeb']['uri']
        distribution "#{node['dotdeb']['distribution']}-php56-zts"
        components ['all']
        key node['dotdeb']['gpg-key']
        cookbook 'dotdeb'
        action :add
      end
    elsif node['dotdeb']['php_version'] == '5.5'
      apt_repository 'dotdeb-php55' do
        uri node['dotdeb']['uri']
        distribution "#{node['dotdeb']['distribution']}-php55"
        components ['all']
        key node['dotdeb']['gpg-key']
        cookbook 'dotdeb'
        action :add
      end
    elsif node['dotdeb']['php_version'] == '5.4'
      apt_repository 'dotdeb-php54' do
        uri node['dotdeb']['uri']
        distribution "#{node['dotdeb']['distribution']}-php54"
        components ['all']
        key node['dotdeb']['gpg-key']
        cookbook 'dotdeb'
        action :add
      end
    end
  end

  apt_repository 'dotdeb' do
    uri node['dotdeb']['uri']
    distribution node['dotdeb']['distribution']
    components ['all']
    key node['dotdeb']['gpg-key']
    cookbook 'dotdeb'
    action :add
  end
end
