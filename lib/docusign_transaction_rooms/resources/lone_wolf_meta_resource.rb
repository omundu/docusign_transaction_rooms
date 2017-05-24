module DocusignTransactionRooms
  class LoneWolfMetaResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      default_handler(:ok) {|response| MetaMapping.extract_collection(response.body, :lone_wolf) }

      # GET /v1/lonewolf/meta/agents/{roomId}
      action :agents do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/lonewolf/meta/agents/:room_id"
        handler(200) { |response| MetaMapping.extract_collection(response.body, :read) }
      end

      # GET /v1/lonewolf/meta/cansubmit/{roomId}
      action :can_submit do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/lonewolf/meta/cansubmit/:room_id"
        handler(200) { |response| JSON.parse(response.body) }
      end

      # GET /v1/lonewolf/meta/classification_types/{roomId}
      action :classification_types do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/lonewolf/meta/classification_types/:room_id"
      end

      # GET /v1/lonewolf/meta/contact_types/{roomId}
      action :contact_types do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/lonewolf/meta/contact_types/:room_id"
      end

      # GET /v1/lonewolf/meta/end_code_types/{roomId}
      action :end_code_types do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/lonewolf/meta/end_code_types/:room_id"
        handler(200) { |response| MetaMapping.extract_collection(response.body, :read) }
      end

      # GET /v1/lonewolf/meta/property_types/{roomId}
      action :property_types do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/lonewolf/meta/property_types/:room_id"
      end

    end

  end
end
