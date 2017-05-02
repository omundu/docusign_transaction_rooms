module DocusignTransactionRooms
  class BusinessContact < BaseModel
    attribute :companyName
    attribute :endCode
    attribute :firstName
    attribute :lastName
    attribute :emailAddress
    attribute :contactTypeId
  end
end

# "businessContact": {
#   "companyName": "string",
#   "endCode": "string",
#   "firstName": "string",
#   "lastName": "string",
#   "emailAddress": "string",
#   "contactTypeId": "string"
# }
