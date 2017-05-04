module DocusignTransactionRooms
  class Document < BaseModel
    attribute :id
    attribute :name
    attribute :contentType
    attribute :isNew
    attribute :createdDate
    attribute :fileSize
    attribute :isSigned
    attribute :ownerId
    attribute :roomId
    attribute :folderId
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
