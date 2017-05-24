module DocusignTransactionRooms
  class DocumentResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # DELETE /v1/documents/{id}
      action :destory do
        verb :delete
        path "#{DocusignTransactionRooms.configuration.path_url}/documents/:id"
        handler(204) { |_| true }
      end

      # GET /v1/documents/{id}
      action :find do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/documents/:id"
        handler(200) { |response| DocumentMapping.extract_single(response.body, :read) }
      end

      # PUT /v1/documents/{id}
      action :update do
        verb :put
        body { |object| DocumentMapping.representation_for(:update, object) }
        path "#{DocusignTransactionRooms.configuration.path_url}/documents/:id"
        handler(200) { |response| DocumentMapping.extract_single(response.body, :read) }
      end

      # GET /v1/documents/{id}/access
      action :members do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/documents/:id/access"
        handler(200) { |response| UserMapping.extract_collection(response.body, :document_access) }
      end

      # POST /v1/documents/{id}/access
      action :grant_access do
        verb :post
        body { |object| UserMapping.representation_for(:document_access, object) }
        path "#{DocusignTransactionRooms.configuration.path_url}/documents/:id/access"
        handler(200) { |response| UserMapping.extract_single(response.body, :document_access) }
      end

      # DELETE /v1/documents/{id}/access/{userId}
      action :revoke_access do
        verb :delete
        path "#{DocusignTransactionRooms.configuration.path_url}/documents/:id/access/:user_id"
        handler(204) { |_| true }
      end

      # GET /v1/documents/{id}/details
      action :details do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/documents/:id/details"
        handler(200) { |response| DocumentMapping.extract_single(response.body, :read) }
      end
    end

  end
end
