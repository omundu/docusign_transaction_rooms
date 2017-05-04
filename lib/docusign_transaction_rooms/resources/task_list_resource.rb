module DocusignTransactionRooms
  class TaskListResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # DELETE /v1/task_lists/{id}
      action :destroy do
        verb :delete
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/task_lists/:id"
        handler(204) { |_| true }
      end

      # GET    /v1/task_lists/{id}
      action :find do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/task_lists/:id"
        handler(200) { |response| TaskListMapping.extract_single(response.body, :read) }
      end

      # POST   /v1/task_lists/{id}/approval
      action :approval do
        verb :post
        body { |object| TaskListMapping.representation_for(:update, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/task_lists/:id/approval"
        handler(201) { |response| TaskListMapping.extract_single(response.body, :read) }
      end

      # POST   /v1/task_lists/{id}/rejection
      action :rejection do
        verb :post
        body { |object| TaskListMapping.representation_for(:update, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/task_lists/:id/rejection"
        handler(201) { |response| TaskListMapping.extract_single(response.body, :read) }
      end

      # POST   /v1/task_lists/{id}/submission
      action :submission do
        verb :post
        body { |object| TaskListMapping.representation_for(:update, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/task_lists/:id/submission"
        handler(201) { |response| TaskListMapping.extract_single(response.body, :read) }
      end
      
      # POST   /v1/task_lists/{id}/tasks
      action :tasks do
        verb :post
        body { |object| TaskListMapping.representation_for(:task, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/task_lists/:id/tasks"
        handler(201) { |response| TaskListMapping.extract_single(response.body, :read) }
      end
    end

  end
end
