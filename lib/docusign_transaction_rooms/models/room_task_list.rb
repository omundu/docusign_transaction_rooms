module DocusignTransactionRooms
  class RoomTaskList < BaseModel
    attribute :id
    attribute :name
    attribute :roomId
    attribute :rejectedDate
    attribute :submittedForReviewDate
    attribute :approvalDate
    attribute :canRemove
    attribute :isGeneral
    attribute :reviewStatus
    attribute :status
    attribute :taskListTemplateId
  end
end

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
