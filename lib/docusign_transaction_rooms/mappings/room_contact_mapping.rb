module DocusignTransactionRooms
  class RoomContactMapping
    include Kartograph::DSL

    kartograph do
      mapping RoomContact

      scoped :read, :minimalist_create do
        property :roomContactId
        property :roomId
        property :roomContactTypeId
        property :contactIndex
        property :name
        property :company
        property :email
        property :businessPhone
        property :phone
        property :cellPhone
        property :address1
        property :address2
        property :city
        property :stateId
        property :postalCode
        property :countryId
        property :side
        property :roomContactType, include: RoomContactTypeMapping
      end
      
      scoped :update do
        property :roomId
        property :roomContactTypeId
        property :contactIndex
        property :name
        property :company
        property :email
        property :businessPhone
        property :phone
        property :cellPhone
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
