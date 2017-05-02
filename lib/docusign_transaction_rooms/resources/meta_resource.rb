module DocusignTransactionRooms
  class MetaResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      default_handler(:ok) {|response| MetaMapping.extract_collection(response.body, :read) }

      # GET /v1/meta/activity_types
      action :activity_types do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/activity_types"
      end

      # GET /v1/meta/allintegrations
      action :allintegrations do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/allintegrations"
      end

      # GET /v1/meta/closing_statuses
      action :closing_statuses do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/closing_statuses"
      end

      # GET /v1/meta/countries
      action :countries do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/countries"
      end

      # GET /v1/meta/currencies
      action :currencies do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/currencies"
      end

      # GET /v1/meta/envelope_actions
      action :envelope_actions do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/envelope_actions"
      end

      # GET /v1/meta/financing_types
      action :financing_types do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/financing_types"
      end

      # GET /v1/meta/origin_of_lead_types
      action :origin_of_lead_types do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/origin_of_lead_types"
      end

      # GET /v1/meta/property_types
      action :property_types do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/property_types"
      end

      # GET /v1/meta/roles
      action :roles do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/roles"
      end

      # GET /v1/meta/seller_decision_types
      action :seller_decision_types do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/seller_decision_types"
      end

      # GET /v1/meta/special_circumstances_types
      action :special_circumstances_types do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/special_circumstances_types"
      end

      # GET /v1/meta/states
      action :states do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/states"
      end

      # GET /v1/meta/task_date_types
      action :task_date_types do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/task_date_types"
      end

      # GET /v1/meta/timezones
      action :timezones do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/timezones"
      end

      # GET /v1/meta/transaction_sides
      action :transaction_sides do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/meta/transaction_sides"
      end
    end

  end
end
