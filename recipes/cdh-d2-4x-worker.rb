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
filesystem "data1" do
  fstype "ext4"
  device "/dev/xvdb"
  mount "/data/1"
  action [:create, :enable, :mount]
end
filesystem "data2" do
  fstype "ext4"
  device "/dev/xvdc"
  mount "/data/2"
  action [:create, :enable, :mount]
end
filesystem "data3" do
  fstype "ext4"
  device "/dev/xvdd"
  mount "/data/3"
  action [:create, :enable, :mount]
end
filesystem "data4" do
  fstype "ext4"
  device "/dev/xvde"
  mount "/data/4"
  action [:create, :enable, :mount]
end
filesystem "data5" do
  fstype "ext4"
  device "/dev/xvdf"
  mount "/data/5"
  action [:create, :enable, :mount]
end
filesystem "data6" do
  fstype "ext4"
  device "/dev/xvdg"
  mount "/data/6"
  action [:create, :enable, :mount]
end
filesystem "data7" do
  fstype "ext4"
  device "/dev/xvdh"
  mount "/data/7"
  action [:create, :enable, :mount]
end
filesystem "data8" do
  fstype "ext4"
  device "/dev/xvdi"
  mount "/data/8"
  action [:create, :enable, :mount]
end
filesystem "data9" do
  fstype "ext4"
  device "/dev/xvdj"
  mount "/data/9"
  action [:create, :enable, :mount]
end
filesystem "data10" do
  fstype "ext4"
  device "/dev/xvdk"
  mount "/data/10"
  action [:create, :enable, :mount]
end
filesystem "data11" do
  fstype "ext4"
  device "/dev/xvdl"
  mount "/data/11"
  action [:create, :enable, :mount]
end
filesystem "data12" do
  fstype "ext4"
  device "/dev/xvdm"
  mount "/data/12"
  action [:create, :enable, :mount]
end
