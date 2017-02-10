name 'vra_demo'
maintainer 'JJ Asghar'
maintainer_email 'jj@chef.io'
license 'Apache 2.0'
description 'Installs/Configures vra_demo'
long_description 'Installs/Configures vra_demo'
version '1.0.1'

%w(ubuntu debian redhat centos).each do |os|
  supports os
end

depends 'chefdk'
