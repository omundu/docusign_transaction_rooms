module DocusignTransactionRooms
  class UserMapping
    include Kartograph::DSL

    kartograph do
      mapping User
      root_key plural: 'users', scopes: [:read, :document_access]

      scoped :read do
        property :userId
        property :companyName
        property :titleName
        property :firstName
        property :lastName
        property :email
        property :profileImageUrl
        property :roleId
        property :transactionSideId
        property :documentCount
        property :isRegistered
        property :isOwner
        property :roleName
      end

      scoped :update do
        property :firstName
        property :lastName
        property :email
        property :roleId
        property :transactionSideId
      end

      scoped :add_user do
        property :roleId
        property :transactionSideId
      end

      scoped :document_access do
        property :userId
      end
    end
  end
end

# {
#   "firstName": "string",
#   "lastName": "string",
#   "email": "string",
#   "roleId": "string",
#   "transactionSideId": "string"
# }

# {
#   "roleId": "string",
#   "transactionSideId": "string"
# }

# {
#   "users": [
#     {
#       "userId": 0,
#       "companyName": "string",
#       "titleName": "string",
#       "firstName": "string",
#       "lastName": "string",
#       "email": "string",
#       "profileImageUrl": "string",
#       "roleId": "string",
#       "transactionSideId": "string",
#       "documentCount": 0,
#       "isRegistered": true,
#       "isOwner": true,
#       "roleName": "string"
#     }
#   ]
# }
