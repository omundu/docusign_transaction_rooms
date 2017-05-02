module DocusignTransactionRooms
  class Owner < BaseModel
    attribute :userId
    attribute :firstName
    attribute :lastName
    attribute :transactionSideId
  end
end

# "owners": [
#   {
#     "userId": 0,
#     "firstName": "string",
#     "lastName": "string",
#     "transactionSideId": "string"
#   }
# ]
