module DocusignTransactionRooms
  class OfficeMapping
    include Kartograph::DSL

    kartograph do
      mapping Office
      root_key plural: 'offices', scopes: [:read]

      scoped :read do
        property :id
        property :name
        property :address
        property :phone
        property :regionId
      end
    end
  end
end

# "{\"offices\":[{\"id\":711,\"name\":\"Boston Logic\",\"address\":{\"address1\":\"81 Wareham Street\",\"address2\":null,\"city\":\"Boston\",\"county\":null,\"stateId\":\"US-MA\",\"postalCode\":\"02118\",\"countryId\":\"US\",\"timeZoneId\":\"eastern\"},\"phone\":null,\"regionId\":null}]}" 
