module DocusignTransactionRooms
  class InboxMapping
    include Kartograph::DSL

    kartograph do
      mapping Inbox

      scoped :read do
        property :id
        property :name
        property :contentType
        property :createdDate
        property :fileSize
      end

    end
  end
end

# [
#   {
#     "id": 0,
#     "name": "string",
#     "contentType": "string",
#     "createdDate": "2017-05-04T07:29:55.765Z",
#     "fileSize": 0
#   }
# ]
