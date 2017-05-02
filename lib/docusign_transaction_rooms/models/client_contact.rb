module DocusignTransactionRooms
  class ClientContact < BaseModel
    attribute :firstName
    attribute :lastName
    attribute :emailAddress
    attribute :contactTypeId
  end
end

# "clientContact": {
#   "firstName": "string",
#   "lastName": "string",
#   "emailAddress": "string",
#   "contactTypeId": "string"
# }
