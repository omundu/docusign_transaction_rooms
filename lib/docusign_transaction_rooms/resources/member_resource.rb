module DocusignTransactionRooms
  class MemberResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # GET   /v1/members
      action :all do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/members"
        handler(200) { |response| MemberMapping.extract_collection(response.body, :read) }
      end

  end
end
