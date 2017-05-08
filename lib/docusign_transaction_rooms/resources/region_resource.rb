module DocusignTransactionRooms
  class RegionResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # GET /v1/regions
      action :all do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/regions"
        handler(200) { |response| RegionMapping.extract_collection(response.body, :read) }
      end

    end

  end
end
