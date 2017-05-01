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



# - id: 00000
#   profile:
#     email: person@bostonlogic.com
#     firstName: BL Company
#     lastName: Admin
#   isLockedOut: false
#   status: active
