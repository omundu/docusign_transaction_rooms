module DocusignTransactionRooms
  class AddressMapping
    include Kartograph::DSL

    kartograph do
      mapping Address

      scoped :read, :create, :update, :minimalist_create do
        property :address1
        property :address2
        property :city
        property :county
        property :stateId
        property :postalCode
        property :countryId
        property :timeZoneId
      end

    end
  end
end

# "address": {
#   "address1": "string",
#   "address2": "string",
#   "city": "string",
#   "county": "string",
#   "stateId": "string",
#   "postalCode": "string",
#   "countryId": "string",
#   "timeZoneId": "string"
# }
