module DocusignTransactionRooms
  class RoomActivityMapping
    include Kartograph::DSL

    kartograph do
      mapping RoomActivity
      root_key plural: 'activities', scopes: [:read]

      scoped :read do
        property :id
        property :activityType
        property :description
        property :activityDate
        property :docType
        property :roomId
        property :actionBy
        property :affectedUser
        property :comment
        property :taskName
        property :documentName
        property :isUserImage
        property :icoType
        property :icoStatus
        property :roomActivityTypeId
        property :title
        property :titleLine2
        property :isRegistered
        property :userPictureUrl
        property :externalProviderId
        property :activityCommentCount
        property :roomName
        property :address
        property :roomImageUrl
        property :integrationRoomDetails
      end

    end
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
