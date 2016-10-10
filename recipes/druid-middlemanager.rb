#
# Cookbook Name:: filesystem
# Recipe:: example
#
# Copyright 2013 Alex Trull
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# There are several ways you could use this cookbook
# This is the default recipe's contents:

# We want to support LVM
include_recipe "lvm"

# Or we can call the creation of a filesystem directly with the filesystem default LWRP
filesystem "druidmiddlemanager" do
  fstype "ext4"
  device "/dev/xvdi"
  mount "/data"
  user "druid"
  group "druid"
  action [:create, :enable, :mount]
end
