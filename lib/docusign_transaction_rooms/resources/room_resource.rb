module DocusignTransactionRooms
  class RoomResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # GET     /v1/rooms
      action :all do
        verb :get
        query_keys :dateRangeType, :startDate, :endDate, :count, :startPosition
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms"
        handler(200) { |response| RoomMapping.extract_collection(response.body, :read) }
      end

      # POST    /v1/rooms
      action :create do
        verb :post
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms"
        body { |object| RoomMapping.representation_for(:create, object) }
        handler(201) { |response| RoomMapping.extract_single(response.body, :read) }
      end

      # POST    /v1/rooms
      action :create_with_minimum_attributes do
        verb :post
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms"
        body do |object|
          proc = Proc.new { |k, v| v.kind_of?(Hash) ? (v.delete_if(&proc); nil) : v.nil? }
          RoomMapping.hash_for(:minimalist_create, object).delete_if(&proc).to_json
        end
        handler(201) { |response| RoomMapping.extract_single(response.body, :read) }
      end

      # DELETE  /v1/rooms/{id}
      action :destroy do
        verb :delete
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id"
        handler(204) { |_| true }
      end

      # GET     /v1/rooms/{id}
      action :find do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id"
        handler(200) { |response| RoomMapping.extract_single(response.body, :read) }
      end

      # PATCH   /v1/rooms/{id}
      # action :patch do
      #   verb :patch
      #   body { |object| RoomMapping.representation_for(:patch, object) }
      #   path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id"
      #   handler(200) { |response| RoomMapping.extract_single(response.body, :read) }
      # end

      # PUT     /v1/rooms/{id}
      action :update do
        verb :put
        body { |object| RoomMapping.representation_for(:update, object) }
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id"
        handler(200) { |response| RoomMapping.extract_single(response.body, :read) }
      end

      # GET     /v1/rooms/{id}/activity
      action :activity do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/activity"
        handler(200) { |response| RoomActivityMapping.extract_collection(response.body, :read) }
      end

      # PUT     /v1/rooms/{id}/approval
      action :approval do
        verb :put
        body { |object| RoomApprovalMapping.representation_for(:update, object) }
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/approval"
        handler(200) { |response| response.body }
      end

      # GET     /v1/rooms/{id}/documents
      action :documents do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/documents"
        handler(200) { |response| RoomDocumentMapping.extract_collection(response.body, :read) }
      end

      # POST    /v1/rooms/{id}/documents
      action :create_document do
        verb :post
        # body { |object| RoomDocumentMapping.representation_for(:update, object) }
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/documents"
        handler(200) { |response| response.body }
      end

      # PUT     /v1/rooms/{id}/rejection
      action :rejection do
        verb :put
        body { |object| RoomRejectionMapping.representation_for(:update, object) }
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/rejection"
        handler(200) { |response| response.body }
      end

      # GET     /v1/rooms/{id}/roomFields
      action :room_fields do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/roomFields"
        handler(200) { |response| JSON.parse(response.body) }
      end

      # PUT     /v1/rooms/{id}/submission
      action :submission do
        verb :put
        body { |object| RoomSubmissionMapping.representation_for(:update, object) }
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/submission"
        handler(200) { |response| response.body }
      end

      # GET     /v1/rooms/{id}/task_lists
      action :task_lists do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/task_lists"
        handler(200) { |response| RoomTaskListMapping.extract_collection(response.body, :read) }
      end

      # POST    /v1/rooms/{id}/task_lists
      action :create_task_list do
        verb :post
        body { |object| RoomTaskListMapping.representation_for(:update, object) }
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/task_lists"
        handler(200) { |response| RoomTaskListMapping.extract_collection(response.body, :read) }
      end

      # GET     /v1/rooms/{id}/users
      action :users do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/users"
        handler(200) { |response| UserMapping.extract_collection(response.body, :read) }
      end

      # POST    /v1/rooms/{id}/users
      action :invite_user do
        verb :post
        body { |object| UserMapping.representation_for(:update, object) }
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/users"
        handler(201) { |response| UserMapping.extract_single(response.body, :read) }
      end

      # DELETE  /v1/rooms/{id}/users/{userId}
      action :remove_user do
        verb :delete
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/users/:user_id"
        handler(204) { |_| true }
      end

      # POST    /v1/rooms/{id}/users/{userId}
      action :add_user do
        verb :post
        body { |object| UserMapping.representation_for(:add_user, object) }
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/users/:user_id"
        handler(201) { |response| UserMapping.extract_single(response.body, :read) }
      end

      # GET    /v1/rooms/{id}/folders
      action :folders do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/folders"
        handler(200) { |response| FolderMapping.extract_collection(response.body, :read) }
      end

      # POST   /v1/rooms/{id}/folders
      action :create_folder do
        verb :post
        body { |object| FolderMapping.representation_for(:create, object) }
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/folders"
        handler(200) { |response| FolderMapping.extract_single(response.body, :read) }
      end

      # DELETE /v1/rooms/{id}/folders/{folderId}
      action :destroy_folder do
        verb :delete
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/folders/:folder_id"
        handler(204) { |_| true }
      end

      # GET    /v1/rooms/{id}/folders/{folderId}
      action :find_folder do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/folders/:folder_id"
        handler(200) { |response| FolderMapping.extract_single(response.body, :read) }
      end

      # PUT    /v1/rooms/{id}/folders/{folderId}
      action :update_folder do
        verb :put
        body { |object| FolderMapping.representation_for(:update, object) }
        path "#{DocusignTransactionRooms.configuration.path_url}/rooms/:id/folders/:folder_id"
        handler(200) { |response| FolderMapping.extract_collection(response.body, :read) }
      end
    end

  end
end
