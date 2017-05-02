module DocusignTransactionRooms
  class RoomResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # GET     /v1/rooms
      action :all do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/rooms"
        handler(200) { |response| RoomMapping.extract_collection(response.body, :read) }
      end

      # POST    /v1/rooms
      action :create do
        verb :post
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/rooms"
        body { |room| RoomMapping.representation_for(:create, room) }
        handler(200) { |response| RoomMapping.extract_single(response.body, :read) }
      end

      # DELETE  /v1/rooms/{id}
      action :destroy do
        verb :delete
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/rooms/:id"
        handler(204) { |_| true }
      end

      # GET     /v1/rooms/{id}
      action :find do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/rooms/:id"
        handler(200) { |response| RoomMapping.extract_single(response.body, :read) }
      end

      # PATCH   /v1/rooms/{id}
      # action :patch do
      #   verb :patch
      #   body { |room| RoomMapping.representation_for(:patch, room) }
      #   path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/rooms/:id"
      #   handler(200) { |response| RoomMapping.extract_single(response.body, :read) }
      # end

      # PUT     /v1/rooms/{id}
      action :update do
        verb :put
        body { |room| RoomMapping.representation_for(:update, room) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/rooms/:id"
        handler(200) { |response| RoomMapping.extract_single(response.body, :read) }
      end


  end
end
