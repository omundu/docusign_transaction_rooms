module DocusignTransactionRooms
  class Profile < BaseModel
    attribute :email
    attribute :firstName
    attribute :lastName

    attribute :companyName
    attribute :timeZoneId
    attribute :webSiteUrl
    attribute :twitterUrl
    attribute :facebookUrl
    attribute :linkedInUrl
  end
end

# "profile": {
#   "email": "string",
#   "firstName": "string",
#   "lastName": "string"
# }

# {
#   "companyName": "Something",
#   "timeZoneId": "mid-atlantic",
#   "webSiteUrl": null,
#   "twitterUrl": null,
#   "facebookUrl": null,
#   "linkedInUrl": null
# }
