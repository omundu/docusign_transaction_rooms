module DocusignTransactionRooms
  class Office < BaseModel
    attribute :id
    attribute :name
    attribute :address, Address
    attribute :phone
    attribute :regionId
  end
end


# offices:
# - id: 711
#   name: Boston Logic
#   address:
#     address1: 81 Wareham Street
#     address2: 
#     city: Boston
#     county: 
#     stateId: US-MA
#     postalCode: 02118
#     countryId: US
#     timeZoneId: eastern
#   phone: 
#   regionId: 
