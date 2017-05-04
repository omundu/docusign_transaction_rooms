module DocusignTransactionRooms
  class TaskResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      # DELETE /v1/tasks/{id}
      action :destroy do
        verb :delete
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id"
        handler(204) { |_| true }
      end

      # GET    /v1/tasks/{id}
      action :find do
        verb :get
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id"
        handler(200) { |response| TaskMapping.extract_single(response.body, :read) }
      end

      # PATCH  /v1/tasks/{id}
      # action :patch do
      #   verb :patch
      #   path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id"
      #   handler(200) { |response| TaskListMapping.extract_single(response.body, :read) }
      # end

      # PUT    /v1/tasks/{id}
      action :update do
        verb :put
        body { |object| TaskMapping.representation_for(:update, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id"
        handler(200) { |response| TaskMapping.extract_single(response.body, :read) }
      end

      # DELETE /v1/tasks/{id}/approval
      action :remove_approval do
        verb :delete
        body { |object| TaskMapping.representation_for(:approval, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id/approval"
        handler(204) { |_| true }
      end

      # POST   /v1/tasks/{id}/approval
      action :approve_task do
        verb :post
        body { |object| TaskMapping.representation_for(:approval, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id/approval"
        handler(201) { |response| TaskMapping.extract_single(response.body, :read) }
      end

      # POST   /v1/tasks/{id}/assignments
      action :create_task_assingment do
        verb :post
        body { |object| TaskMapping.representation_for(:assignment, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id/assignments"
        handler(200) { |response| TaskMapping.extract_single(response.body, :read) }
      end

      # PUT    /v1/tasks/{id}/assignments
      action :update_task_assingment do
        verb :put
        body { |object| TaskMapping.representation_for(:assignment, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id/assignments"
        handler(200) { |response| TaskMapping.extract_single(response.body, :read) }
      end

      # DELETE /v1/tasks/{id}/assignments/{assigneeId}
      action :remove_task_assingment do
        verb :delete
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id/assignments/:assignee_id"
        handler(204) { |_| true }
      end

      # POST   /v1/tasks/{id}/completion
      action :complete_task do
        verb :post
        body { |object| TaskMapping.representation_for(:approval, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id/completion"
        handler(200) { |response| TaskMapping.extract_single(response.body, :read) }
      end

      # POST   /v1/tasks/{id}/placeholders
      action :add_placeholder do
        verb :post
        body { |object| TaskMapping.representation_for(:placeholder, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id/placeholders"
        handler(201) { |response| TaskMapping.extract_single(response.body, :read) }
      end

      # DELETE /v1/tasks/{id}/placeholders/{placeholderId}
      action :remove_placeholder do
        verb :delete
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id/placeholders/:placeholder_id"
        handler(204) { |_| true }
      end

      # PUT    /v1/tasks/{id}/placeholders/{placeholderId}
      action :update_placeholder do
        verb :put
        body { |object| TaskMapping.representation_for(:placeholder_name, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id/placeholders/:placeholder_id"
        handler(200) { |response| TaskMapping.extract_single(response.body, :read) }
      end

      # DELETE /v1/tasks/{id}/placeholders/{placeholderId}/document
      action :unassign_document do
        verb :delete
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id/placeholders/:placeholder_id/document"
        handler(204) { |_| true }
      end

      # POST   /v1/tasks/{id}/placeholders/{placeholderId}/document
      action :assign_document do
        verb :post
        body { |object| TaskMapping.representation_for(:document, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id/placeholders/:placeholder_id/document"
        handler(201) { |response| TaskMapping.extract_single(response.body, :read) }
      end

      # POST   /v1/tasks/{id}/rejection
      action :reject_task do
        verb :post
        body { |object| TaskMapping.representation_for(:approval, object) }
        path "#{DOCUSIGN_TRANSACTION_ROOMS_API_PATH}/tasks/:id/rejection"
        handler(201) { |response| TaskMapping.extract_single(response.body, :read) }
      end

    end

  end
end
