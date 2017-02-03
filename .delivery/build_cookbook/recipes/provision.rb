#
# Cookbook:: build_cookbook
# Recipe:: provision
#
# Copyright:: 2017, The Authors, All Rights Reserved.

bash "bootstrap a tk node" do
  user "root"
  cwd "/tmp"
  creates "maybe"
  code <<-EOH
  STATUS=0
  chef exec kitchen list || STATUS=1
  exit $STATUS
  EOH
end
