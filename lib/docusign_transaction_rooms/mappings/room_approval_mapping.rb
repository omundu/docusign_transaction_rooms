module DocusignTransactionRooms
  class RoomApprovalMapping
    include Kartograph::DSL

    kartograph do
      mapping RoomApproval

      scoped :update do
        property :comment
        property :sendToLoneWolf
      end

    end
  end
end

# {
#   "comment": "string",
#   "sendToLoneWolf": true
# }
