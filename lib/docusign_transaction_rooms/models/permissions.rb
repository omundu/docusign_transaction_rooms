module DocusignTransactionRooms
  class Permissions < BaseModel
    attribute :isVisibleInTransactionRooms
    attribute :canDeleteCompanyRooms
    attribute :canDeleteCompanyDocuments
    attribute :canManageCompanyRooms
    attribute :canManageCompanyAccount
    attribute :canManageCompanySharedLibrary
    attribute :canManageCompanyMembers
    attribute :canCloseCompanyRooms
    attribute :canApproveCompanyChecklists
    attribute :autoAccessToCompanyRooms
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
