module DocusignTransactionRooms
  
  class RoomContactIntegration < BaseModel
    attribute :integrationTypeId
    attribute :integrationContactType
    attribute :integrationContactId   
  end
  
end

# {
#   "integrationTypeId": "string",
#   "integrationContactType": "string",
#   "integrationContactId": "string"
# }