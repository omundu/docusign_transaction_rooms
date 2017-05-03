module DocusignTransactionRooms
  class RoomTaskListMapping
    include Kartograph::DSL

    kartograph do
      mapping RoomTaskList

      scoped :read do
        property :id
        property :name
        property :roomId
        property :rejectedDate
        property :submittedForReviewDate
        property :approvalDate
        property :canRemove
        property :isGeneral
        property :reviewStatus
        property :status
        property :taskListTemplateId
      end

      scoped :update do
        property :taskListTemplateId
      end

    end
  end
end

# {
#   "taskListTemplateId": 0
# }

# [
#   {
#     "id": 0,
#     "name": "string",
#     "roomId": 0,
#     "rejectedDate": "2017-05-03T13:54:47.695Z",
#     "submittedForReviewDate": "2017-05-03T13:54:47.695Z",
#     "approvalDate": "2017-05-03T13:54:47.695Z",
#     "canRemove": true,
#     "isGeneral": true,
#     "reviewStatus": 0,
#     "status": 0,
#     "taskListTemplateId": 0
#   }
# ]

# [
#   {
#     "id": 0,
#     "name": "string",
#     "roomId": 0,
#     "rejectedDate": "2017-05-03T13:54:47.700Z",
#     "submittedForReviewDate": "2017-05-03T13:54:47.700Z",
#     "approvalDate": "2017-05-03T13:54:47.700Z",
#     "canRemove": true,
#     "isGeneral": true,
#     "reviewStatus": 0,
#     "status": 0,
#     "taskListTemplateId": 0,
#     "tasks": [
#       {
#         "taskId": 0,
#         "roomId": 0,
#         "taskListId": 0,
#         "taskOwner": {
#           "userId": 0,
#           "firstName": "string",
#           "lastName": "string"
#         },
#         "createdDate": "2017-05-03T13:54:47.700Z",
#         "updatedDate": "2017-05-03T13:54:47.700Z",
#         "declinedDate": "2017-05-03T13:54:47.700Z",
#         "approvalDate": "2017-05-03T13:54:47.700Z",
#         "completedDate": "2017-05-03T13:54:47.700Z",
#         "calculatedDueDate": "2017-05-03T13:54:47.700Z",
#         "approvedByUserId": 0,
#         "declinedByUserId": 0,
#         "completedByUserId": 0,
#         "status": "string",
#         "isApproved": true,
#         "isDeclined": true,
#         "isAwaitingReview": true,
#         "canMarkComplete": true,
#         "canMarkIncomplete": true,
#         "canView": true,
#         "canAssignDocuments": true,
#         "canApprove": true,
#         "canReject": true,
#         "canSendReminder": true,
#         "canDelete": true,
#         "canReview": true,
#         "isDocumentTask": true,
#         "canEdit": true,
#         "canRemoveApproval": true,
#         "comment": "string",
#         "documents": [
#           {
#             "placeHolderId": 0,
#             "documentName": "string",
#             "documentId": 0,
#             "placeholderName": "string"
#           }
#         ],
#         "reminders": [
#           {
#             "taskReminderId": 0,
#             "dateTypeId": "string",
#             "dateOffset": 0,
#             "fixedDate": "2017-05-03T13:54:47.700Z"
#           }
#         ],
#         "assignments": [
#           {
#             "assigneeUserId": 0,
#             "isAssignee": true
#           }
#         ],
#         "statusDate": "2017-05-03T13:54:47.700Z",
#         "isNew": true,
#         "displayOrder": 0,
#         "taskActivityCommentCount": 0,
#         "name": "string",
#         "description": "string",
#         "requiresApproval": true,
#         "canAgentDelete": true,
#         "canAgentEdit": true,
#         "dueDateTypeId": "string",
#         "dueDateOffset": 0,
#         "fixedDueDate": "2017-05-03T13:54:47.701Z"
#       }
#     ]
#   }
# ]
