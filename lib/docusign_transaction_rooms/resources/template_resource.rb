module DocusignTransactionRooms
  class TemplateResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # GET /v1/templates/task_lists
      action :task_lists do
        verb :get
        path "#{DocusignTransactionRooms.configuration.path_url}/templates/task_lists"
        handler(200) { |response| TemplateMapping.extract_collection(response.body, :read) }
      end
    end

  end
end
