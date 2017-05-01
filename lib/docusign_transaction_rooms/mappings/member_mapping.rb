module DocusignTransactionRooms
  class MemberMapping
    include Kartograph::DSL

    kartograph do
      mapping Member
      root_key plural: 'members', scopes: [:read]

      scoped :read do
        property :id
        property :profile
        property :isLockedOut
        property :status
      end
    end
  end
end

# {
#       "id": 0,
#       "profile": {
#         "email": "string",
#         "firstName": "string",
#         "lastName": "string"
#       },
#       "isLockedOut": true,
#       "status": "string"
#     }
