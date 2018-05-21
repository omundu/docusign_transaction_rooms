module DocusignTransactionRooms
  class RoomContactIntegrationMapping
    include Kartograph::DSL
    
    kartograph do
      mapping RoomContactIntegration
      
      scoped :read, :minimalist_create do
        property :integrationTypeId
        property :integrationContactType
        property :integrationContactId
      end
      
    end
  end
end