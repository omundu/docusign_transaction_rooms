module DocusignTransactionRooms
  class TaskList < BaseModel
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

    attribute :value
  end
end

# update
# {
#   "value": "string"
# }

# read
# {
#   "id": 0,
#   "name": "string",
#   "roomId": 0,
#   "rejectedDate": "2017-05-03T22:02:04.635Z",
#   "submittedForReviewDate": "2017-05-03T22:02:04.635Z",
#   "approvalDate": "2017-05-03T22:02:04.635Z",
#   "canRemove": true,
#   "isGeneral": true,
#   "reviewStatus": 0,
#   "status": 0,
#   "taskListTemplateId": 0
# }
