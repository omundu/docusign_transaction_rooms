module DocusignTransactionRooms
  class User < BaseModel
    attribute :userId
    attribute :companyName
    attribute :titleName
    attribute :firstName
    attribute :lastName
    attribute :email
    attribute :profileImageUrl
    attribute :roleId
    attribute :transactionSideId
    attribute :documentCount
    attribute :isRegistered
    attribute :isOwner
    attribute :roleName
  end
end

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
