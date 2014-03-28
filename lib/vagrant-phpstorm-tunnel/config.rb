module VagrantPhpstormTunnel
  class Config < Vagrant.plugin(2, :config)

    attr_accessor :project_home, :command_prefix

    def project_home=(path)
      @project_home = path
    end

    def command_prefix=(command)
      @command_prefix = command
    end

    def to_hash
      {
          :project_home => project_home,
          :command_prefix => command_prefix
      }
    end
  end
end
