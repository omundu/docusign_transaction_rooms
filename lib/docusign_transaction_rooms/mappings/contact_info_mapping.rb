module DocusignTransactionRooms
  class ContactInfoMapping
    include Kartograph::DSL

    kartograph do
      mapping ContactInfo

      scoped :read do
        property :mobilePhone
        property :officePhone
        property :faxNumber
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

# {
#   "mobilePhone": null,
#   "officePhone": null,
#   "faxNumber": null,
#   "address1": null,
#   "address2": null,
#   "city": null,
#   "stateId": null,
#   "postalCode": null,
#   "countryId": null
# }
