require 'faraday'
require 'pry'

module DocusignTransactionRooms
  DOCUSIGN_TRANSACTION_ROOMS_API_PATH = 'restapi/v1'

  class Client
    DOCUSIGN_TRANSACTION_ROOMS_API    = 'https://stage.cartavi.com'

    attr_reader :access_token

    def initialize(access_token)
      @access_token = access_token
    end

    def connection
      @faraday ||= Faraday.new connection_options do |req|
        req.adapter :net_http
      end
    end

    def resources
      @resources ||= {}
    end

    def self.resources
      {
        company: CompanyResource,
        documents: DocumentResource,
        inbox: InboxResource,
        members: MemberResource,
        offices: OfficeResource,
        meta: MetaResource,
        rooms: RoomResource,
        templates: TemplateResource,
        titles: TitleResource,
        users: UserResource
      }
    end

    def method_missing(name, *args, &block)
      if self.class.resources.keys.include?(name)
        resources[name] ||= self.class.resources[name].new(connection: connection)
        resources[name]
      else
        super
      end
    end

    private

    def connection_options
      {
        url: DOCUSIGN_TRANSACTION_ROOMS_API,
        headers: {
          content_type: 'application/json',
          authorization: "Bearer #{access_token}"
        }
      }
    end
  end
end
