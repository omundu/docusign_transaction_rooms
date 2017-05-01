module DocusignTransactionRooms
  class Manager < BaseModel
    attribute :access, Access
    attribute :permissions, Permissions
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
