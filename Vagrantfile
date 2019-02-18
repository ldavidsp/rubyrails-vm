require 'json'
require 'yaml'

VAGRANTFILE_API_VERSION ||= "2"
conf_dir = $confDir ||= File.expand_path("scripts", File.dirname(__FILE__))
rails_yml = File.expand_path("rubyrails.yaml", File.dirname(__FILE__))
require File.expand_path(conf_dir + '/rails.rb')

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  if File.exist? rails_yml
    settings = YAML::load(File.read(rails_yml))
  else
    abort "Ruby Rails settings file not found in " + File.dirname(__FILE__)
  end

  RubyRails.configure(config, settings)
end
