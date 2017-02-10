#
# Cookbook:: build_cookbook
# Recipe:: deploy
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['delivery']['change']['stage'] == 'delivered'
  bash "bootstrap a permanent node" do
    cwd delivery_workspace_repo
    code <<-EOH
      STATUS=0
      chef exec knife vra server list | grep active | awk {'print $1'} > tmp.txt
      chef exec knife vra server delete `cat tmp.txt` -P -y
      rm tmp.txt
      sleep 45
      chef exec knife vra server create 3f09a0f7-2511-489b-ad6d-2f293d92cd69 \
        --cpus 1 --memory 4096  --node-ssl-verify-mode none --ssh-password 'admini' \
        --requested-for devmgr@corp.local \
        --subtenant-id d0fb4a04-7099-4ba1-a262-b578e129a758 -x 'admini' \
        -r 'recipe[vra_demo::default]' || STATUS=1
      exit $STATUS
     EOH
  end
end
