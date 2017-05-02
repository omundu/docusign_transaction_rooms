module DocusignTransactionRooms
  class ExternalAgentCommissionMapping
    include Kartograph::DSL

    kartograph do
      mapping ExternalAgentCommission

      scoped :read, :create, :update do
        property :firstName
        property :lastName
        property :emailAddresses
        property :companyName
        property :contactTypeId
        property :endCode
        property :commission
      end

    end
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
