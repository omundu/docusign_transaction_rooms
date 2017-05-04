module DocusignTransactionRooms
  class TaskMapping
    include Kartograph::DSL

    kartograph do
      mapping Task
      root_key singular: 'comment', scopes: [:approval]
      root_key singular: 'assignment', scopes: [:assignment]
      root_key singular: 'placeholder', scopes: [:placeholder]
      root_key singular: 'placeholderName', scopes: [:placeholder_name]
      root_key singular: 'documentId', scopes: [:document]

      scoped :read do
        property :taskId
        property :roomId
        property :taskListId
        property :taskOwner
        property :createdDate
        property :updatedDate
        property :declinedDate
        property :approvalDate
        property :completedDate
        property :calculatedDueDate
        property :approvedByUserId
        property :declinedByUserId
        property :completedByUserId
        property :status
        property :isApproved
        property :isDeclined
        property :isAwaitingReview
        property :canMarkComplete
        property :canMarkIncomplete
        property :canView
        property :canAssignDocuments
        property :canApprove
        property :canReject
        property :canSendReminder
        property :canDelete
        property :canReview
        property :isDocumentTask
        property :canEdit
        property :canRemoveApproval
        property :comment
        property :documents
        property :reminders
        property :assignments
        property :statusDate
        property :isNew
        property :displayOrder
        property :taskActivityCommentCount
        property :name
        property :description
        property :requiresApproval
        property :canAgentDelete
        property :canAgentEdit
        property :dueDateTypeId
        property :dueDateOffset
        property :fixedDueDate
      end

      scoped :update do
        property :name
        property :description
        property :requiresApproval
        property :canAgentDelete
        property :canAgentEdit
        property :dueDateTypeId
        property :dueDateOffset
        property :fixedDueDate
      end

      scoped :approval, :document do
        property :value
      end

      scoped :assignment do
        property :assigneeUserId
        property :isAssignee
      end

      scoped :placeholder, :placeholder_name do
        property :text
      end

    end
  end
end

# {
#   "taskId": 0,
#   "roomId": 0,
#   "taskListId": 0,
#   "taskOwner": {
#     "userId": 0,
#     "firstName": "string",
#     "lastName": "string"
#   },
#   "createdDate": "2017-05-03T22:02:04.666Z",
#   "updatedDate": "2017-05-03T22:02:04.666Z",
#   "declinedDate": "2017-05-03T22:02:04.666Z",
#   "approvalDate": "2017-05-03T22:02:04.666Z",
#   "completedDate": "2017-05-03T22:02:04.666Z",
#   "calculatedDueDate": "2017-05-03T22:02:04.666Z",
#   "approvedByUserId": 0,
#   "declinedByUserId": 0,
#   "completedByUserId": 0,
#   "status": "string",
#   "isApproved": true,
#   "isDeclined": true,
#   "isAwaitingReview": true,
#   "canMarkComplete": true,
#   "canMarkIncomplete": true,
#   "canView": true,
#   "canAssignDocuments": true,
#   "canApprove": true,
#   "canReject": true,
#   "canSendReminder": true,
#   "canDelete": true,
#   "canReview": true,
#   "isDocumentTask": true,
#   "canEdit": true,
#   "canRemoveApproval": true,
#   "comment": "string",
#   "documents": [
#     {
#       "placeHolderId": 0,
#       "documentName": "string",
#       "documentId": 0,
#       "placeholderName": "string"
#     }
#   ],
#   "reminders": [
#     {
#       "taskReminderId": 0,
#       "dateTypeId": "string",
#       "dateOffset": 0,
#       "fixedDate": "2017-05-03T22:02:04.666Z"
#     }
#   ],
#   "assignments": [
#     {
#       "assigneeUserId": 0,
#       "isAssignee": true
#     }
#   ],
#   "statusDate": "2017-05-03T22:02:04.667Z",
#   "isNew": true,
#   "displayOrder": 0,
#   "taskActivityCommentCount": 0,
#   "name": "string",
#   "description": "string",
#   "requiresApproval": true,
#   "canAgentDelete": true,
#   "canAgentEdit": true,
#   "dueDateTypeId": "string",
#   "dueDateOffset": 0,
#   "fixedDueDate": "2017-05-03T22:02:04.667Z"
# }

# updated
# {
#   "name": "string",
#   "description": "string",
#   "requiresApproval": true,
#   "canAgentDelete": true,
#   "canAgentEdit": true,
#   "dueDateTypeId": "string",
#   "dueDateOffset": 0,
#   "fixedDueDate": "2017-05-03T22:02:04.689Z"
# }

# approval
# {
#   "value": "string"
# }

# placeholder
# {
#   "text": "string"
# }

# assignment
# {
#   "assigneeUserId": 0,
#   "isAssignee": true
# }
