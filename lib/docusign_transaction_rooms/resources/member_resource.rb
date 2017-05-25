module DocusignTransactionRooms
  class MemberResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # GET   /v1/members
      action :all do
        verb :get
        query_keys :q
        path "#{DocusignTransactionRooms.configuration.path_url}/members"
        handler(200) { |response| MemberMapping.extract_collection(response.body, :read) }
      end

      # GET    /v1/members/{id}
      action :find do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/members/:id"
        handler(200) { |response| MemberMapping.extract_single(response.body, :read) }
      end

      # POST  /v1/members
      action :create do
        verb :post
        path "#{DocusignTransactionRooms.configuration.path_url}/members"
        body { |member| MemberMapping.representation_for(:create, member) }
        handler(200) { |response| response.body }
      end

      # DELETE /v1/members/{id}
      action :destroy do
        verb :delete
        path "#{DocusignTransactionRooms.configuration.path_url}/members/:id"
        handler(204) { |_| true }
      end

      # PUT    /v1/members/{id}
      action :update do
        verb :put
        body {|member| MemberMapping.representation_for(:update, member) }
        path "#{DocusignTransactionRooms.configuration.path_url}/members/:id"
        handler(200) { |response| MemberMapping.extract_single(response.body, :read) }
      end
    end

  end
end
