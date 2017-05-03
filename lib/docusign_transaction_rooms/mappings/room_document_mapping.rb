module DocusignTransactionRooms
  class RoomDocumentMapping
    include Kartograph::DSL

    kartograph do
      mapping RoomDocument
      root_key plural: 'documents', scopes: [:read]

      scoped :read do
        property :id
        property :name
        property :contentType
        property :ownerId
        property :externalProviderId
        property :isVirtual
        property :fileSize
        property :owner
        property :creationDetails
        property :folderId
        property :folderName
        property :isNew
        property :canRename
        property :canCopy
        property :canMove
        property :canEmail
        property :canFax
        property :canCreateEnvelope
        property :canDownload
        property :canPrint
        property :canDelete
        property :canReview
        property :canAssignToTaskList
        property :canRemoveFromTaskList
        property :canSplit
        property :canCombine
        property :canEdit
        property :peopleWithAccess
        property :isSigned
        property :links
      end

    end
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
