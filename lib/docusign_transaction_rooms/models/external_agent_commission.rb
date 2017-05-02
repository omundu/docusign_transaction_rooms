module DocusignTransactionRooms
  class ExternalAgentCommission < BaseModel
    attribute :firstName
    attribute :lastName
    attribute :emailAddresses
    attribute :companyName
    attribute :contactTypeId
    attribute :endCode
    attribute :commission
  end
end

# "externalAgentCommission": {
#   "firstName": "string",
#   "lastName": "string",
#   "emailAddresses": "string",
#   "companyName": "string",
#   "contactTypeId": "string",
#   "endCode": "string",
#   "commission": 0
# }
