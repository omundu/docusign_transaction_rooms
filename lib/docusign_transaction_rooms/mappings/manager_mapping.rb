module DocusignTransactionRooms
  class ManagerMapping
    include Kartograph::DSL

    kartograph do
      mapping Manager
      root_key singular: 'manager', scopes: [:read]

      scoped :read do
        property :access, include: AccessMapping
        property :permissions, include: PermissionsMapping
      end

      scoped :create, :update do
        property :access, include: AccessMapping
        property :permissions, include: PermissionsMapping
      end

    end
  end
end

#   "manager": {
#     "access": {
#       "managerTitleId": 0,
#       "accessLevel": "string",
#       "defaultOffice": {
#         "id": 0
#       },
#       "officeIds": [
#         0
#       ],
#       "regionIds": [
#         0
#       ]
#     },
#     "permissions": {
#       "isVisibleInTransactionRooms": true,
#       "canDeleteCompanyRooms": true,
#       "canDeleteCompanyDocuments": true,
#       "canManageCompanyRooms": true,
#       "canManageCompanyAccount": true,
#       "canManageCompanySharedLibrary": true,
#       "canManageCompanyMembers": true,
#       "canCloseCompanyRooms": true,
#       "canApproveCompanyChecklists": true,
#       "autoAccessToCompanyRooms": true
#     }
#   }
