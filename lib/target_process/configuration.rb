module TargetProcess
  class Configuration
    attr_writer :api_url, :token

    def api_url
      msg = 'There is no api_url for configuration'
      @api_url || raise(TargetProcess::ConfigurationError.new(msg))
    end

    def token
      msg = 'There is no token for configuration'
      @token || raise(TargetProcess::ConfigurationError.new(msg))
    end
  end
end
