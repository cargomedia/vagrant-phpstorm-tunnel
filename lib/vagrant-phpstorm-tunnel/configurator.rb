require 'fileutils'

module VagrantPhpStormTunnel
  class Configurator
    def initialize(app, env)
      @app = app
      @env = env

      @root_path = @env[:root_path].to_s
    end

    def is_intellij
      File.exist? @root_path + '/.idea'
    end

    def link_php_to_intellij
      destination_path = @root_path + '/.idea/vagrant/php'
      source_path = File.expand_path('../../../data/php', __FILE__)

      if !File.exist? destination_path
        FileUtils.mkdir_p(File.dirname(destination_path))
        File.link(source_path, destination_path)
        File.chmod(0755, destination_path)
      end
    end

    def call(env)
      @env = env
      @app.call(env)

      if !is_intellij
        raise "Cannot detect intellij environment at #{@root_path}"
      end

      link_php_to_intellij
    end
  end
end
