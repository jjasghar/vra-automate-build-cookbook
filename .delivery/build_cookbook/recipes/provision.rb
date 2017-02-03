#
# Cookbook:: build_cookbook
# Recipe:: provision
#
# Copyright:: 2017, The Authors, All Rights Reserved.

bash "bootstrap a tk node" do
  cwd delivery_workspace_repo
  code <<-EOH
  STATUS=0
    chef exec kitchen test || STATUS=1
    exit $STATUS
  EOH
end
