module DocusignTransactionRooms
  class InboxResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # GET /v1/inbox
      action :all do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/inbox"
        handler(200) { |response| TitleMapping.extract_collection(response.body, :read) }
      end

    end

  end
end
