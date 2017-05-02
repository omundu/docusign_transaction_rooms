module DocusignTransactionRooms
  class PermissionsMapping
    include Kartograph::DSL

    kartograph do
      mapping Permissions
      root_key singular: 'permissions', scopes: [:read]

      scoped :read, :create, :update do
        property :isVisibleInTransactionRooms
        property :canDeleteCompanyRooms
        property :canDeleteCompanyDocuments
        property :canManageCompanyRooms
        property :canManageCompanyAccount
        property :canManageCompanySharedLibrary
        property :canManageCompanyMembers
        property :canCloseCompanyRooms
        property :canApproveCompanyChecklists
        property :autoAccessToCompanyRooms
      end
    end
  end
end

# "permissions": {
#   "isVisibleInTransactionRooms": true,
#   "canDeleteCompanyRooms": true,
#   "canDeleteCompanyDocuments": true,
#   "canManageCompanyRooms": true,
#   "canManageCompanyAccount": true,
#   "canManageCompanySharedLibrary": true,
#   "canManageCompanyMembers": true,
#   "canCloseCompanyRooms": true,
#   "canApproveCompanyChecklists": true,
#   "autoAccessToCompanyRooms": true
# }
