module DocusignTransactionRooms
  class RoomFieldMapping
    include Kartograph::DSL

    kartograph do
      mapping RoomField

      scoped :read do
        property :id
        property :name
        property :isShownToAll
        property :isRequiredOnSubmit
        property :isRequiredOnCreate
        property :isVisible
        property :isBuySide
        property :isListSide
        property :isCore
        property :isLoneWolf
        property :roomFieldId
        property :roomFieldName
        property :roomField
      end
    end
  end
end
