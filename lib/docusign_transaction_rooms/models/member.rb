module DocusignTransactionRooms
  class Member < BaseModel
    attribute :id
    attribute :profile, Profile
    attribute :isLockedOut
    attribute :status
    attribute :lockedOutReason
    attribute :agent, Agent
    attribute :manager, Manager
    attribute :permissionProfileId
  end
end

# Collection
# {
#   "id": 0,
#   "profile": {
#     "email": "string",
#     "firstName": "string",
#     "lastName": "string"
#   },
#   "isLockedOut": true,
#   "status": "string"
# }

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
