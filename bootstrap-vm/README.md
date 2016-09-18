Having all kinds of trouble provisioning an Ubuntu 16.04 machine with Ansible,
so this bootstrap image is here for me to do some things manually before
creating the rest of the machine with Ansible.

The first problem was setting the network IP with the official Ubuntu 16.04 box,
but switching to the bento box fixed that.

Then the problem was that aptitude isn't installed on Xenial, so that needs to
be installed to get Ansible to work.

Now the problem is that aptitude safe-upgrade insists that there's something
weird going on with Grub and I need to configure the grub-pc package, which I've
tried to do non-interactively, but at this point I'm just manually creating this
box to bootstrap the actual 'inky' box.

After `vagrant up` and `vagrant ssh`:

```
sudo apt-get update
sudo apt-get upgrade

# Choose /dev/sda to install Grub to
# Keep current version of sudoers file (option 'N')

```
