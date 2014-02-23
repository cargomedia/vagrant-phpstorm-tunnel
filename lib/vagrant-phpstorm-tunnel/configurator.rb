require 'fileutils'

module VagrantPhpstormTunnel
  class Configurator
    def initialize(app, env)
      @app = app
      @env = env

      @root_path = @env[:root_path].to_s
      @home_path = '.idea/vagrant'
    end

    def is_intellij
      File.exist? @root_path + '/.idea'
    end

    def link_php_to_intellij
      destination_path = File.join(@root_path, @home_path, 'php')
      source_path = File.expand_path('../../../data/php', __FILE__)

      FileUtils.rm_rf(@home_path)
      FileUtils.mkdir_p(@home_path)
      File.link(source_path, destination_path)
      File.chmod(0755, destination_path)
    end

    def call(env)
      @env = env
      @app.call(env)

      if is_intellij
        link_php_to_intellij
      end
    end
  end
end
