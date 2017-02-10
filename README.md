# vra-demo

This is a basic demo of how to leverage, [knife-vra][knife] and [kitchen-vra][kitchen]
in an Automate `build_cookbook`. It spins up a machine, installs the chefdk via tk, then if
the deliver button is pushed it will use knife to provision a new machine.

There are options to extend this, but it seems the "correct extension" would be to add
a webserver, then an index.html and change it via changing a template.


[knife]: https://github.com/chef-partners/knife-vrealize
[kitchen]: https://github.com/chef-partners/knife-vra
