module DocusignTransactionRooms
  class LoneWolfDetailsMapping
    include Kartograph::DSL

    kartograph do
      mapping LoneWolfDetails

      scoped :read, :create, :update do
        property :number
        property :classificationId
        property :propertyTypeId
        property :agentCommission, include: AgentCommissionMapping
        property :agentCommission2, include: AgentCommissionMapping
        property :externalAgentCommission, include: ExternalAgentCommissionMapping
        property :clientContact, include: ClientContactMapping
        property :businessContact, include: BusinessContactMapping
        property :isLoneWolfEnabled
      end

    end
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
