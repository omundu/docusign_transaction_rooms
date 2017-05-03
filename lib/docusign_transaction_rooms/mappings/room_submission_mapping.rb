module DocusignTransactionRooms
  class RoomSubmissionMapping
    include Kartograph::DSL

    kartograph do
      mapping RoomSubmission

      scoped :update do
        property :closingStatusId
        property :comments
      end

    end
  end
end

# {
#   "closingStatusId": "string",
#   "comments": "string"
# }
