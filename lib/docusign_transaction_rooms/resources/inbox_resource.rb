module DocusignTransactionRooms
  class InboxResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # GET /v1/inbox
      action :all do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/inbox"
        handler(200) { |response| TitleMapping.extract_collection(response.body, :read) }
      end

    end

  end
end
