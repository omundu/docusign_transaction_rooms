module DocusignTransactionRooms
  class RoomField < BaseModel
    attribute :id
    attribute :name
    attribute :isShownToAll
    attribute :isRequiredOnSubmit
    attribute :isRequiredOnCreate
    attribute :isVisible
    attribute :isBuySide
    attribute :isListSide
    attribute :isCore
    attribute :isLoneWolf
    attribute :roomFieldId
    attribute :roomFieldName
    attribute :roomField, RoomFieldDetail
  end
end

#   id: cmmnt
#   name: Comments
#   isShownToAll: true
#   isRequiredOnSubmit: false
#   isRequiredOnCreate: false
#   isVisible: true
#   isBuySide: true
#   isListSide: true
#   isCore: true
#   isLoneWolf: false
#   roomFieldId: cmmnt
#   roomField:
#     roomFieldId: cmmnt
#     name: Comments
#   roomFieldName: Comments
