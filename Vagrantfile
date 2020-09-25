# /**
# DEVELOPER: IAN KIKU
# DATE: 09/10/2020
# **/

# MULTI-MACHINE CONFIG

Vagrant.configure('2') do |config|
  #   *******************************************************************************
  #   *
  #    # RAILS / RUBY ON RAILS BACKEND SERVER
  #   # First time run: vagrant up rails
  #  # SSH : vangrant ssh rails
  #   *******************************************************************************

  config.vm.define 'rails' do |rails|
    rails.vm.box = 'bento/ubuntu-16.04'
    rails.vm.hostname = 'rails-dev'

    # config.vm.network "private_network", type: "dhcp"
    # rails.vm.network "forwarded_port", guest: 80, host: 3000
    rails.vm.network 'forwarded_port', guest: 3000, host: 8080, host_ip: '127.0.0.1'

    rails.vm.synced_folder './projects/services-api', '/home/vagrant/services-api'

    # Provider-specific configuration
    rails.vm.provider 'virtualbox' do |vb|
      # Don't display the VirtualBox GUI when booting the machine
      vb.gui = false

      # Customize the amount of memory on the VM:
      vb.memory = '1024'
    end

    rails.vm.provision 'shell', path: 'rails-setup.sh', privileged: false

    # # if you choose to use inline shell commands
    # rails.vm.provision 'shell', inline: <<-SHELL
     #write shell commands here
    # SHELL
    
  end

  #
  #   *******************************************************************************
  #   *
  #    # * MERN STACK VM
  #   install expressjs, reactjs, MongoDB, nodejs,
  # First time run: vagrant up mernVM
  # SSH : vangrant ssh mernVM
  #   *******************************************************************************
  #
  config.vm.define 'mernVM' do |mernVM|
    mernVM.vm.box = 'bento/ubuntu-16.04'
    mernVM.vm.hostname = 'mernVM'
    mernVM.vm.network 'forwarded_port', guest: 4000, host: 8081
    mernVM.vm.network 'forwarded_port', guest: 5000, host: 8082

    mernVM.vm.provision 'shell', path: 'mern-stack.sh', privileged: false

    mernVM.vm.synced_folder './projects/webportfolio', '/home/vagrant/webportfolio'
  end

  # #<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  # # DJANGO VM
  # config.vm.define "django" do |django|
  #   django.vm.box = "bento/ubuntu-16.04"
  # end

  # #
  # # FLASK VM
  # config.vm.define "flask" do |flask|
  #   flask.vm.box = "bento/ubuntu-16.04"
  # end

  # #

  # TODO:
  # #
  # # WEB VM
  # config.vm.define "web" do |web|
  #   web.vm.box = "bento/ubuntu-16.04"
  # end

  # #
  # # MOBILE VM
  # config.vm.define "mobile" do |mobile|
  #   mobile.vm.box = "bento/ubuntu-16.04"
  # end

  # #
  # # DB VM
  # config.vm.define "db" do |db|
  #   db.vm.box = "bento/ubuntu-16.04"
  #   # config.vm.network "forwarded_port",  guest: 27017, host: 27017
  # end
end
