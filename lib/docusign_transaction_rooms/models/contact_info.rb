module DocusignTransactionRooms
  class ContactInfo < BaseModel
    attribute :mobilePhone
    attribute :officePhone
    attribute :faxNumber
    attribute :address1
    attribute :address2
    attribute :city
    attribute :stateId
    attribute :postalCode
    attribute :countryId
  end
end

# contact_info
# {
#   "mobilePhone": "string",
#   "officePhone": "string",
#   "faxNumber": "string",
#   "address1": "string",
#   "address2": "string",
#   "city": "string",
#   "stateId": "string",
#   "postalCode": "string",
#   "countryId": "string"
# }
