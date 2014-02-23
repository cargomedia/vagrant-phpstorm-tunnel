require 'fileutils'

module VagrantPhpStormTunnel
  class Configurator
    def initialize(app, env)
      @app = app
      @env = env
    end

    def link_php_to_phpstorm
      vagrant_root_path = @env[:root_path].to_s

      destination_path = vagrant_root_path + '/.idea/vagrant/php'
      source_path = File.expand_path('../../../data/php', __FILE__)

      if !File.exist? destination_path
        FileUtils.mkdir_p(File.dirname(destination_path))
        File.link(source_path, destination_path)
      end
    end

    def call(env)
      @env = env
      @app.call(env)

      link_php_to_phpstorm
    end
  end
end
