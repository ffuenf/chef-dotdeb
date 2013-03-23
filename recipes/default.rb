#
# Author::  Achim Rosenhagen (<a.rosenhagen@ffuenf.de>)
# Cookbook Name:: dotdeb
# Recipe:: default
#
# Copyright 2012, Achim Rosenhagen
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if node['platform'] == 'debian'
	include_recipe "apt"
	if node.platform_version.to_f >= 5.0 && node.platform_version.to_f < 6.0
		apt_repository "dotdeb" do
			uri "http://archives.dotdeb.org"
			distribution "lenny"
			components ['all']
			key "http://www.dotdeb.org/dotdeb.gpg"
			action :add
		end
	elsif node.platform_version.to_f >= 4.0 && node.platform_version.to_f < 5.0
		apt_repository "dotdeb" do
			uri "http://archives.dotdeb.org"
			distribution "etch"
			components ['all']
			key "http://www.dotdeb.org/dotdeb.gpg"
			action :add
		end
	elsif node.platform_version.to_f >= 3.0 && node.platform_version.to_f < 4.0
		apt_repository "dotdeb" do
			uri "http://archives.dotdeb.org"
			distribution "sarge"
			components ['all']
			key "http://www.dotdeb.org/dotdeb.gpg"
			action :add
		end
	elsif node.platform_version.to_f >= 2.0 && node.platform_version.to_f < 3.0
		apt_repository "dotdeb" do
			uri "http://archives.dotdeb.org"
			distribution "woody"
			components ['all']
			key "http://www.dotdeb.org/dotdeb.gpg"
			action :add
		end
	else
		if node['dotdeb']['mirror']['enabled']
			apt_repository "dotdeb" do
				uri node['dotdeb']['mirror']['deb']
				distribution "stable"
				components ['all']
				key "http://www.dotdeb.org/dotdeb.gpg"
				action :add
			end
		else
			apt_repository "dotdeb" do
				uri "http://packages.dotdeb.org"
				distribution "stable"
				components ['all']
				key "http://www.dotdeb.org/dotdeb.gpg"
				action :add
			end
		end
		
		# switch php versions
		if node['dotdeb']['php54']
			if node['dotdeb']['mirror']['enabled']
				apt_repository "dotdeb-php54" do
					uri node['dotdeb']['mirror']['deb']
					distribution "squeeze-php54"
					components ['all']
					key "http://www.dotdeb.org/dotdeb.gpg"
					action :add
			else
				apt_repository "dotdeb-php54" do
					uri "http://packages.dotdeb.org"
					distribution "squeeze-php54"
					components ['all']
					key "http://www.dotdeb.org/dotdeb.gpg"
					action :add
				end
			end
		else
			apt_repository "dotdeb-php53" do
				uri "http://php53.dotdeb.org"
				distribution "stable"
				components ['all']
				key "http://www.dotdeb.org/dotdeb.gpg"
				action :add
			end
		end
	end
	execute "update apt sources" do
		command "apt-get update"
		action :run
	end
end