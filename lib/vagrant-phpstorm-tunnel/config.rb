module VagrantPhpstormTunnel
  class Config < Vagrant.plugin(2, :config)

    attr_accessor :project_home

    def project_home=(path)
      @project_home = path
    end

    def to_hash
      {
          :project_home => project_home || 'vagrant'
      }
    end
  end
end
