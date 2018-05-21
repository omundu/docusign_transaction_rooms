module DocusignTransactionRooms
  
  class RoomContactType < BaseModel
    attribute :roomContactTypeId
    attribute :roomContactTypeName
    attribute :contactIndex
    attribute :updatedDisplayName
    attribute :roomContactIntegrations, Array(RoomContactIntegration)
    
  end
  
end

# "roomContactType": {
#   "roomContactTypeId": "string",
#   "roomContactTypeName": "string",
#   "contactIndex": 0,
#   "updatedDisplayName": "string",
#   "roomContactIntegrations": [
#     {
#       "integrationTypeId": "string",
#       "integrationContactType": "string",
#       "integrationContactId": "string"
#     }
#   ]
# }