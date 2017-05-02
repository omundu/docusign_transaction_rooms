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
        property :permissionProfileId
      end

      scoped :create do
        property :profile, include: ProfileMapping
        property :agent, include: AgentMapping
      end

      scoped :update do
        property :agent, include: AgentMapping
        property :manager, include: ManagerMapping
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


# {
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
