module DocusignTransactionRooms
  class Access < BaseModel
    attribute :managerTitleId, Access
    attribute :accessLevel, Permissions
    attribute :defaultOffice, Office
    attribute :officeIds
    attribute :regionIds
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
