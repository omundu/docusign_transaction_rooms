module DocusignTransactionRooms
  class Inbox < BaseModel
    attribute :id
    attribute :name
    attribute :contentType
    attribute :createdDate
    attribute :fileSize
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
