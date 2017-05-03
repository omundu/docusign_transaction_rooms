module DocusignTransactionRooms
  class RoomRejectionMapping
    include Kartograph::DSL

    kartograph do
      mapping RoomRejection

      scoped :update do
        property :comment
      end

    end
  end
end

# {
#   "comment": "string"
# }
