module DocusignTransactionRooms
  class TaskAssignment < BaseModel
    attribute :assigneeUserId
    attribute :isAssignee
  end
end

#   "assignments": [
#     {
#       "assigneeUserId": 0,
#       "isAssignee": true
#     }
#   ]
