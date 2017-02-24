# We want to support LVM
include_recipe "lvm"

mount "/media/ephemeral0" do
  only_if { ::File.exist?("/media/ephemeral0") }
  device "/dev/xvdb"
  action :umount
end

#filesystem "cassandra" do
#  fstype "ext4"
#  device "/dev/sda1"
#  mount "/var/lib/cassandra"
#  user "cassandra"
#  group "cassandra"
#  ignore_existing true
#  force true
#  action [:create, :enable, :mount]
#end

directory '/var/lib/cassandra' do
  owner "cassandra"
  group "cassandra"
  mode '0755'
  action :create
end

directory '/var/lib/cassandra/data' do
  owner "cassandra"
  group "cassandra"
  mode '0755'
  action :create
end

directory '/var/lib/cassandra/commitlog' do
  owner "cassandra"
  group "cassandra"
  mode '0755'
  action :create
end

