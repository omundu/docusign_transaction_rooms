module DocusignTransactionRooms
  class RoomActivity < BaseModel
    attribute :id
    attribute :activityType
    attribute :description
    attribute :activityDate
    attribute :docType
    attribute :roomId
    attribute :actionBy, User
    attribute :affectedUser, User
    attribute :comment
    attribute :taskName
    attribute :documentName
    attribute :isUserImage
    attribute :icoType
    attribute :icoStatus
    attribute :roomActivityTypeId
    attribute :title
    attribute :titleLine2
    attribute :isRegistered
    attribute :userPictureUrl
    attribute :externalProviderId
    attribute :activityCommentCount
    attribute :roomName
    attribute :address, Address
    attribute :roomImageUrl
    attribute :integrationRoomDetails
  end
end

# {
#   "activities": [
#     {
#       "id": 0,
#       "activityType": "string",
#       "description": "string",
#       "activityDate": "2017-05-02T17:29:19.429Z",
#       "docType": "string",
#       "roomId": 0,
#       "actionBy": {
#         "userId": 0,
#         "firstName": "string",
#         "lastName": "string",
#         "companyName": "string"
#       },
#       "affectedUser": {
#         "userId": 0,
#         "firstName": "string",
#         "lastName": "string",
#         "companyName": "string"
#       },
#       "comment": "string",
#       "taskName": "string",
#       "documentName": "string",
#       "isUserImage": true,
#       "icoType": "string",
#       "icoStatus": "string",
#       "roomActivityTypeId": "string",
#       "title": "string",
#       "titleLine2": "string",
#       "isRegistered": true,
#       "userPictureUrl": "string",
#       "externalProviderId": "string",
#       "activityCommentCount": 0,
#       "roomName": "string",
#       "address": {
#         "address1": "string",
#         "address2": "string",
#         "city": "string",
#         "county": "string",
#         "stateId": "string",
#         "postalCode": "string",
#         "countryId": "string",
#         "timeZoneId": "string"
#       },
#       "roomImageUrl": "string",
#       "integrationRoomDetails": {}
#     }
#   ]
# }
