module DocusignTransactionRooms
  class Address < BaseModel
    attribute :address1
    attribute :address2
    attribute :city
    attribute :county
    attribute :stateId
    attribute :postalCode
    attribute :countryId
    attribute :timeZoneId
  end
end



#     "address": {
#       "address1": "string",
#       "address2": "string",
#       "city": "string",
#       "county": "string",
#       "stateId": "string",
#       "postalCode": "string",
#       "countryId": "string",
#       "timeZoneId": "string"
#     }
