module DocusignTransactionRooms
  class LoneWolfDetails < BaseModel
    attribute :number
    attribute :classificationId
    attribute :propertyTypeId
    attribute :agentCommission, AgentCommission
    attribute :agentCommission2, AgentCommission
    attribute :externalAgentCommission, ExternalAgentCommission
    attribute :clientContact, ClientContact
    attribute :businessContact, BusinessContact
    attribute :isLoneWolfEnabled
  end
end

# "loneWolfDetails": {
#   "number": "string",
#   "classificationId": "string",
#   "propertyTypeId": "string",
#   "agentCommission": {
#     "agentId": "string",
#     "endCode": "string",
#     "endCount": 0,
#     "commission": 0
#   },
#   "agentCommission2": {
#     "agentId": "string",
#     "endCode": "string",
#     "endCount": 0,
#     "commission": 0
#   },
#   "externalAgentCommission": {
#     "firstName": "string",
#     "lastName": "string",
#     "emailAddresses": "string",
#     "companyName": "string",
#     "contactTypeId": "string",
#     "endCode": "string",
#     "commission": 0
#   },
#   "clientContact": {
#     "firstName": "string",
#     "lastName": "string",
#     "emailAddress": "string",
#     "contactTypeId": "string"
#   },
#   "businessContact": {
#     "companyName": "string",
#     "endCode": "string",
#     "firstName": "string",
#     "lastName": "string",
#     "emailAddress": "string",
#     "contactTypeId": "string"
#   },
#   "isLoneWolfEnabled": true
# }
