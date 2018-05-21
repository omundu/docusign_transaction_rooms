module DocusignTransactionRooms
  class RoomMapping
    include Kartograph::DSL

    kartograph do
      mapping Room
      root_key plural: 'rooms', scopes: [:read]

      scoped :read do
        property :roomId
        property :viewLink
        property :roomName
        property :status
        property :address
        property :owners
        property :details
        property :auctionDetails
        property :roomImageUrl
        property :integratorData
        property :creationDetails
        property :loneWolfDetails
        property :integrationRoomDetails
      end

      scoped :create do
        property :ownerId
        property :transactionSideId
        property :integratorData
        property :roleId
        property :roomName
        property :address, include: AddressMapping
        property :details, include: DetailsMapping
        property :roomImageUrl
        property :loneWolfDetails, include: LoneWolfDetailsMapping
        property :auctionDetails, include: AuctionDetailsMapping
        property :profitPowerDetails, include: ProfitPowerDetailsMapping
        property :integrationRoomDetails
      end

      scoped :minimalist_create do
        property :transactionSideId
        property :roleId
        property :roomName
        property :address, include: AddressMapping
        property :details, include: DetailsMapping
      end

      scoped :update do
        property :integratorData
        property :roomName
        property :address, include: AddressMapping
        property :details, include: DetailsMapping
        property :roomImageUrl
        property :loneWolfDetails, include: LoneWolfDetailsMapping
        property :auctionDetails, include: AuctionDetailsMapping
        property :profitPowerDetails, include: ProfitPowerDetailsMapping
        property :integrationRoomDetails
      end

    end
  end
end