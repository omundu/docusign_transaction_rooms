module DocusignTransactionRooms
  class ClientContactMapping
    include Kartograph::DSL

    kartograph do
      mapping ClientContact

      scoped :read, :create, :update do
        property :firstName
        property :lastName
        property :emailAddress
        property :contactTypeId
      end

    end
  end
end

# "clientContact": {
#   "firstName": "string",
#   "lastName": "string",
#   "emailAddress": "string",
#   "contactTypeId": "string"
# }
