module DocusignTransactionRooms
  class OfficeResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # GET  /v1/offices
      action :all do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/offices"
        handler(200) { |response| OfficeMapping.extract_collection(response.body, :read) }
      end
    end

  end
end
