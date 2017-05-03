module DocusignTransactionRooms
  class RoomDocument < BaseModel
    attribute :id
    attribute :name
    attribute :contentType
    attribute :ownerId
    attribute :externalProviderId
    attribute :isVirtual
    attribute :fileSize
    attribute :owner
    attribute :creationDetails
    attribute :folderId
    attribute :folderName
    attribute :isNew
    attribute :canRename
    attribute :canCopy
    attribute :canMove
    attribute :canEmail
    attribute :canFax
    attribute :canCreateEnvelope
    attribute :canDownload
    attribute :canPrint
    attribute :canDelete
    attribute :canReview
    attribute :canAssignToTaskList
    attribute :canRemoveFromTaskList
    attribute :canSplit
    attribute :canCombine
    attribute :canEdit
    attribute :peopleWithAccess
    attribute :isSigned
    attribute :links
  end
end

# {
#   "documents": [
#     {
#       "id": 0,
#       "name": "string",
#       "contentType": "string",
#       "ownerId": 0,
#       "externalProviderId": "string",
#       "isVirtual": true,
#       "fileSize": "string",
#       "owner": {
#         "userId": 0,
#         "firstName": "string",
#         "lastName": "string",
#         "companyName": "string",
#         "imageSrc": "string"
#       },
#       "creationDetails": {
#         "created": "2017-05-02T17:29:19.442Z"
#       },
#       "folderId": 0,
#       "folderName": "string",
#       "isNew": true,
#       "canRename": true,
#       "canCopy": true,
#       "canMove": true,
#       "canEmail": true,
#       "canFax": true,
#       "canCreateEnvelope": true,
#       "canDownload": true,
#       "canPrint": true,
#       "canDelete": true,
#       "canReview": true,
#       "canAssignToTaskList": true,
#       "canRemoveFromTaskList": true,
#       "canSplit": true,
#       "canCombine": true,
#       "canEdit": true,
#       "peopleWithAccess": 0,
#       "isSigned": true,
#       "links": [
#         {
#           "name": "string",
#           "url": "string"
#         }
#       ]
#     }
#   ],
#   "links": [
#     {
#       "name": "string",
#       "url": "string"
#     }
#   ]
# }
