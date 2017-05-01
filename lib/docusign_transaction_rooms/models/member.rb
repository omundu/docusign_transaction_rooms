module DocusignTransactionRooms
  class Member < BaseModel
    attribute :id
    attribute :profile, Profile
    attribute :isLockedOut
    attribute :status
  end
end


# {
#   "id": 0,
#   "isLockedOut": true,
#   "lockedOutReason": "string",
#   "status": "string",
#   "profile": {
#     "email": "string",
#     "firstName": "string",
#     "lastName": "string"
#   },
#   "agent": {
#     "office": {
#       "id": 0
#     }
#   },
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
#   },
#   "permissionProfileId": "string"
# }
