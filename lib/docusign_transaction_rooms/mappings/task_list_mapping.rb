module DocusignTransactionRooms
  class TaskListMapping
    include Kartograph::DSL

    kartograph do
      mapping TaskList

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
        property :value
      end

    end
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
