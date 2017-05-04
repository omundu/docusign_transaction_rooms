module DocusignTransactionRooms
  class TaskReminder < BaseModel
    attribute :taskReminderId
    attribute :dateTypeId
    attribute :dateOffset
    attribute :fixedDate
  end
end

#   "reminders": [
#     {
#       "taskReminderId": 0,
#       "dateTypeId": "string",
#       "dateOffset": 0,
#       "fixedDate": "2017-05-03T22:02:04.666Z"
#     }
#   ]
