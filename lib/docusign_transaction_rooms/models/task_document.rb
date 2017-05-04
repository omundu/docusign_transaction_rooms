module DocusignTransactionRooms
  class TaskDocument < BaseModel
    attribute :placeHolderId
    attribute :documentName
    attribute :documentId
    attribute :placeholderName
  end
end

#   "documents": [
#     {
#       "placeHolderId": 0,
#       "documentName": "string",
#       "documentId": 0,
#       "placeholderName": "string"
#     }
#   ]
