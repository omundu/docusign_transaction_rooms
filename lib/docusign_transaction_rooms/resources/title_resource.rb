module DocusignTransactionRooms
  class TitleResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # GET /v1/titles
      action :all do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/titles"
        handler(200) { |response| TitleMapping.extract_collection(response.body, :read) }
      end

      # GET /v1/titles/{id}
      action :find do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/titles/:id"
        handler(200) { |response| TitleMapping.extract_single(response.body, :read) }
      end

    end

  end
end
