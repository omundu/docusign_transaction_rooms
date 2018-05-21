module DocusignTransactionRooms
  
  class RoomContact < BaseModel
    attribute :roomContactId
    attribute :roomId
    attribute :roomContactTypeId
    attribute :contactIndex
    attribute :name
    attribute :company
    attribute :email
    attribute :businessPhone
    attribute :phone
    attribute :cellPhone
    attribute :address1
    attribute :address2
    attribute :city
    attribute :stateId
    attribute :postalCode
    attribute :countryId
    attribute :side
    attribute :roomContactType, RoomContactType
  end
  
end

# "roomContacts": [
#   {
#     "roomContactId": 0,
#     "roomId": 0,
#     "roomContactTypeId": "string",
#     "contactIndex": 0,
#     "name": "string",
#     "company": "string",
#     "email": "string",
#     "businessPhone": "string",
#     "phone": "string",
#     "cellPhone": "string",
#     "address1": "string",
#     "address2": "string",
#     "city": "string",
#     "stateId": "string",
#     "postalCode": "string",
#     "countryId": "string",
#     "side": "string",
#     "roomContactType": {
#       "roomContactTypeId": "string",
#       "roomContactTypeName": "string",
#       "contactIndex": 0,
#       "updatedDisplayName": "string",
#       "roomContactIntegrations": [
#         {
#           "integrationTypeId": "string",
#           "integrationContactType": "string",
#           "integrationContactId": "string"
#         }
#       ]
#     }
#   }
# ]