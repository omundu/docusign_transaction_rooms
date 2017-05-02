module DocusignTransactionRooms
  class TransactionPartyMapping
    include Kartograph::DSL

    kartograph do
      mapping TransactionParty

      scoped :read, :create, :update do
        property :company
        property :email
        property :name
        property :homePhone
        property :cellPhone
        property :businessPhone
        property :address1
        property :address2
        property :city
        property :stateId
        property :postalCode
        property :countryId
      end

    end
  end
end

# "seller1": {
#   "company": "string",
#   "email": "string",
#   "name": "string",
#   "homePhone": "string",
#   "cellPhone": "string",
#   "businessPhone": "string",
#   "address1": "string",
#   "address2": "string",
#   "city": "string",
#   "stateId": "string",
#   "postalCode": "string",
#   "countryId": "string"
# },
# "seller2": {
#   "company": "string",
#   "email": "string",
#   "name": "string",
#   "homePhone": "string",
#   "cellPhone": "string",
#   "businessPhone": "string",
#   "address1": "string",
#   "address2": "string",
#   "city": "string",
#   "stateId": "string",
#   "postalCode": "string",
#   "countryId": "string"
# },
# "buyer1": {
#   "company": "string",
#   "email": "string",
#   "name": "string",
#   "homePhone": "string",
#   "cellPhone": "string",
#   "businessPhone": "string",
#   "address1": "string",
#   "address2": "string",
#   "city": "string",
#   "stateId": "string",
#   "postalCode": "string",
#   "countryId": "string"
# },
# "buyer2": {
#   "company": "string",
#   "email": "string",
#   "name": "string",
#   "homePhone": "string",
#   "cellPhone": "string",
#   "businessPhone": "string",
#   "address1": "string",
#   "address2": "string",
#   "city": "string",
#   "stateId": "string",
#   "postalCode": "string",
#   "countryId": "string"
# }
