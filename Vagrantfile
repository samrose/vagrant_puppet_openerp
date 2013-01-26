Vagrant::Config.run do |config|
  config.vm.host_name = 'local'
  config.vm.box = "lucid32"
  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"
  config.vm.provision :shell, :inline => "/usr/bin/apt-get install -y puppet libaugeas-ruby augeas-tools rubygems"
  config.vm.provision :puppet, :module_path => "modules", :options => "--verbose" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "site.pp"
    puppet.facter = {
      "domain" => "openerp",
      "fqdn" => "local.openerp"
    }
  end
end
