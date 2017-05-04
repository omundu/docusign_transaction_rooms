module DocusignTransactionRooms
  class Task < BaseModel
    attribute :taskId
    attribute :roomId
    attribute :taskListId
    attribute :taskOwner, Owner
    attribute :createdDate
    attribute :updatedDate
    attribute :declinedDate
    attribute :approvalDate
    attribute :completedDate
    attribute :calculatedDueDate
    attribute :approvedByUserId
    attribute :declinedByUserId
    attribute :completedByUserId
    attribute :status
    attribute :isApproved
    attribute :isDeclined
    attribute :isAwaitingReview
    attribute :canMarkComplete
    attribute :canMarkIncomplete
    attribute :canView
    attribute :canAssignDocuments
    attribute :canApprove
    attribute :canReject
    attribute :canSendReminder
    attribute :canDelete
    attribute :canReview
    attribute :isDocumentTask
    attribute :canEdit
    attribute :canRemoveApproval
    attribute :comment
    attribute :documents, Array(TaskDocument)
    attribute :reminders, Array(TaskReminder)
    attribute :assignments, Array(TaskAssignment)
    attribute :statusDate
    attribute :isNew
    attribute :displayOrder
    attribute :taskActivityCommentCount
    attribute :name
    attribute :description
    attribute :requiresApproval
    attribute :canAgentDelete
    attribute :canAgentEdit
    attribute :dueDateTypeId
    attribute :dueDateOffset
    attribute :fixedDueDate

    attribute :text
    attribute :value

    attribute :assigneeUserId
    attribute :isAssignee
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
