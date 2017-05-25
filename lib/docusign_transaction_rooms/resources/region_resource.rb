module DocusignTransactionRooms
  class RegionResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # GET /v1/regions
      action :all do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/regions"
        handler(200) { |response| RegionMapping.extract_collection(response.body, :read) }
      end

    end

  end
end
