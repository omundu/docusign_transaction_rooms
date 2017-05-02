module DocusignTransactionRooms
  class ProfileMapping
    include Kartograph::DSL

    kartograph do
      mapping Profile

      scoped :read do
        property :companyName
        property :timeZoneId
        property :webSiteUrl
        property :twitterUrl
        property :facebookUrl
        property :linkedInUrl
      end

      scoped :create, :update do
        property :email
        property :firstName
        property :lastName
      end
    end
  end
end

# {
#   "companyName": "Something",
#   "timeZoneId": "mid-atlantic",
#   "webSiteUrl": null,
#   "twitterUrl": null,
#   "facebookUrl": null,
#   "linkedInUrl": null
# }

# "profile": {
#   "email": "string",
#   "firstName": "string",
#   "lastName": "string"
# }
