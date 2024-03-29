#
# Cookbook:: build_cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'chefdk::default'

bash "install some vmware plugins" do
  user "root"
  cwd "/tmp"
  creates "maybe"
  code <<-EOH
  STATUS=0
    chef gem install knife-vrealize || STATUS=1
    chef gem install kitchen-vra || STATUS=1
  exit $STATUS
  EOH
end
