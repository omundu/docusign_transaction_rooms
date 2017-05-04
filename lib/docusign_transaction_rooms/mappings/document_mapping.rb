module DocusignTransactionRooms
  class DocumentMapping
    include Kartograph::DSL

    kartograph do
      mapping Document

      scoped :read do
        property :id
        property :name
        property :contentType
        property :isNew
        property :createdDate
        property :fileSize
        property :isSigned
        property :ownerId
        property :roomId
        property :folderId
      end

      scoped :update do
        property :name
        property :roomId
        property :folderId
      end

    end
  end
end

# {
#   "id": 0,
#   "name": "string",
#   "contentType": "string",
#   "isNew": true,
#   "createdDate": "2017-05-04T07:29:55.714Z",
#   "fileSize": 0,
#   "isSigned": true,
#   "ownerId": 0,
#   "roomId": 0,
#   "folderId": 0
# }

# {
#   "name": "string",
#   "roomId": 0,
#   "folderId": 0
# }

