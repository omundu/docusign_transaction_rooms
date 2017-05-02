module DocusignTransactionRooms
  class Access < BaseModel
    attribute :managerTitleId
    attribute :accessLevel
    attribute :defaultOffice, DefaultOffice
    attribute :officeIds, Array
    attribute :regionIds, Array
  end
end

# "access": {
#   "managerTitleId": 0,
#   "accessLevel": "string",
#   "defaultOffice": {
#     "id": 0
#   },
#   "officeIds": [
#     0
#   ],
#   "regionIds": [
#     0
#   ]
# }
