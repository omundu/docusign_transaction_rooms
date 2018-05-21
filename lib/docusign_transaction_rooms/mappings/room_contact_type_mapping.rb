module DocusignTransactionRooms
  class RoomContactTypeMapping
    include Kartograph::DSL
    
    kartograph do
      mapping RoomContactType
      
      scoped :read, :minimalist_create do
        property :roomContactTypeId
        property :roomContactTypeName
        property :contactIndex
        property :updatedDisplayName
        property :roomContactIntegrations, plural: true, include: RoomContactIntegrationMapping
      end
      
    end
  end
end
