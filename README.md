# Vagrant Box Provisioning for a Flask/Node App

**PS**: This whole README assumes a Mac OS X setup. Please feel free to contribute if you would like to add support for other platforms.

## Getting started

What you need to do:

* clone and setup repo
* setup vagrant box
* package vagrant box
* add vagrant box to list
* use vagrant box

### Prerequisites

* Command line tools for Xcode
* [Brew](http://brew.sh/)
* [Cask](http://caskroom.io/) (brew utility to install apps/binaries like VirtualBox)
* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)
* [Ansible](http://www.ansible.com/)

Once you have `brew` installed you can just run the following commands:

```
brew cask install virtualbox
brew cask install vagrant
brew install ansible
```

and voila!

### Repo setup

```
git clone [insert repo here]
cd [repo name]
cp vagrant.rb.example vagrant.rb
mkdir pkg
```

If you need to, change the settings in `vagrant.rb` to suit your needs (eg. memory allocation).

Also, you might want to update the `requirements.txt` files under `provisioning/node` and `provisioning/python` to contain the dependencies that you need.

### Setup Vagrant Box

All you need to do here is load the Vagrant box:

```
vagrant up
```

### Package & Add Vagrant Box

```
vagrant package --output pkg/[name-of-box]
vagrant box add --name [name-of-box] pkg/[name-of-box]
```

**Example:**

```
vagrant package --output pkg/python-node
vagrant box add --name python-node pkg/python-node
```

### Double check

To make sure all worked properly you can list the local boxes you have:

```
$ vagrant box list                            
[name-of-box]   (virtualbox, 0)
ubuntu/trusty64 (virtualbox, 14.04)
```

**Example:**

```
$ vagrant box list                            
python-node     (virtualbox, 0)
ubuntu/trusty64 (virtualbox, 14.04)
```

### Use Vagrant Box
