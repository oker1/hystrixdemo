require 'berkshelf/vagrant'

Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # The path to the Berksfile to use with Vagrant Berkshelf
  # config.berkshelf.berksfile_path = "./Berksfile"

  # An array of symbols representing groups of cookbook described in the Vagrantfile
  # to skip installing and copying to Vagrant's shelf.
  # config.berkshelf.only = []

  # An array of symbols representing groups of cookbook described in the Vagrantfile
  # to skip installing and copying to Vagrant's shelf.
  # config.berkshelf.except = []

  config.vm.host_name = "hystrixdemo"

  config.vm.box = "squeeze64"

  config.ssh.max_tries = 40
  config.ssh.timeout   = 120

  # config.vm.boot_mode = :gui


  config.vm.share_folder "war", "/war", "war"

  config.vm.define :dashboard do |config|
    config.vm.network :hostonly, "33.33.33.10"

    config.vm.provision :chef_solo do |chef|
      chef.json = {
      }

      chef.run_list = [
        "recipe[hystrix::tomcat]",
        "recipe[hystrix::dashboard]",
        "recipe[hystrix::turbine]"
      ]
    end
  end

  (1..2).each do |i|
    config.vm.define "web#{i}" do |config|
      config.vm.network :hostonly, "33.33.33.1#{i}"

      config.vm.provision :chef_solo do |chef|
        chef.json = {
        }

        chef.run_list = [
          "recipe[hystrix::tomcat]",
          "recipe[hystrix::geoip]"
        ]
      end
    end
  end
end
