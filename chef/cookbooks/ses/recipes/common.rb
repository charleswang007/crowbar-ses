# Copyright 2012 Dell, Inc.
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
# Cookbook Name:: cinder
# Recipe:: common
#

if %w(rhel suse).include? node[:platform_family]
  package "openstack-cinder"
else
  package "cinder-common"
  package "python-mysqldb"
  package "python-cinder"
end

glance_config = BarclampLibrary::Barclamp::Config.load(
  "openstack",
  "glance",
  node[:cinder][:glance_instance]
)
glance_insecure = CrowbarOpenStackHelper.insecure(glance_config)

nova_config = BarclampLibrary::Barclamp::Config.load(
  "openstack", "nova"
)
nova_insecure = CrowbarOpenStackHelper.insecure(nova_config)

node.save if dirty
