module DocusignTransactionRooms
  class BusinessContactMapping
    include Kartograph::DSL

    kartograph do
      mapping BusinessContact

      scoped :read, :create, :update do
        property :companyName
        property :endCode
        property :firstName
        property :lastName
        property :emailAddress
        property :contactTypeId
      end

    end
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
