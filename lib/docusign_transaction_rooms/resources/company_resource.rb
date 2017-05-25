module DocusignTransactionRooms
  class CompanyResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # GET /v1/company/integrations
      action :integrations do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/company/integrations"
        handler(200) { |response| IntegrationMapping.extract_collection(response.body, :read) }
      end

      # GET /v1/company/offices
      action :offices do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/company/offices"
        handler(200) { |response| OfficeMapping.extract_collection(response.body, :read) }
      end

      # GET /v1/company/room_fields
      action :room_fields do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/company/room_fields"
        handler(200) { |response| RoomFieldMapping.extract_collection(response.body, :read) }
      end
    end

  end
end
