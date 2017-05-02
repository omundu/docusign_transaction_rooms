module DocusignTransactionRooms
  class AccessMapping
    include Kartograph::DSL

    kartograph do
      mapping Access
      root_key singular: 'access', scopes: [:read]

      scoped :read, :create, :update do
        property :managerTitleId
        property :accessLevel
        property :defaultOffice
        property :officeIds
        property :regionIds
      end

    end
  end
end

# "access": {
#   "managerTitleId": 0,
#   "accessLevel": "string",
#   "defaultOffice": {
#     "id": 0
#   },
#   "officeIds": [
#     0
#   ],
#   "regionIds": [
#     0
#   ]
# }
