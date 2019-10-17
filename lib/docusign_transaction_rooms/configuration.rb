module DocusignTransactionRooms

  class Configuration
    attr_accessor :api_url
    attr_accessor :path_url

    def initialize
      @api_url  = 'https://demo.rooms.docusign.com'
      @path_url = 'restapi/v1'
    end
  end

  class << self

    def configuration
      @configuration ||= Configuration.new
    end

    def self.configuration=(config)
      @configuration = config
    end

    def configure
      yield(configuration)
    end
    
  end
end
