module DocusignTransactionRooms
  
  class RoomContact < BaseModel
    attribute :roomContactId
    attribute :roomId
    attribute :roomContactTypeId
    attribute :contactIndex
    attribute :name
    attribute :company
    attribute :email
    attribute :businessPhone
    attribute :phone
    attribute :cellPhone
    attribute :address1
    attribute :address2
    attribute :city
    attribute :stateId
    attribute :postalCode
    attribute :countryId
    attribute :side
    attribute :roomContactType, RoomContactType
  end
  
end