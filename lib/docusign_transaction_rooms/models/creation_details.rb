module DocusignTransactionRooms
  class CreationDetails < BaseModel
    attribute :userId
    attribute :firstName
    attribute :lastName
    attribute :created
  end
end

# "creationDetails": {
#   "userId": 0,
#   "firstName": "string",
#   "lastName": "string",
#   "created": "2017-04-28T19:29:24.564Z"
# }
