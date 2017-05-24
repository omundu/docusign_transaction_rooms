module DocusignTransactionRooms
  class UserResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # GET  /v1/users/{id}/contact_info
      action :contact_info do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/users/:id/contact_info"
        handler(200) { |response| ContactInfoMapping.extract_single(response.body, :read) }
      end

      # POST /v1/users/{id}/formsTerms
      action :forms_terms do
        verb :post
        path "#{DocusignTransactionRooms.configuration.path_url}/users/:id/formsTerms"
        handler(200) { |_| true }
      end

      # GET  /v1/users/{id}/picture
      action :picture do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/users/:id/picture"
        handler(200) { |response| JSON.parse(response.body) }
      end

      # GET  /v1/users/{id}/profile
      action :profile do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/users/:id/profile"
        handler(200) { |response| ProfileMapping.extract_single(response.body, :read) }
      end
    end

  end
end
