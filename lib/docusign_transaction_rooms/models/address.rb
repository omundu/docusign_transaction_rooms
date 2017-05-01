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
