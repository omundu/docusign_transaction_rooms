module DocusignTransactionRooms
  class UserMapping
    include Kartograph::DSL

    kartograph do
      mapping User
      root_key plural: 'users', singular: 'user', scopes: [:read]

      scoped :read do
        property :contact_info, include: ContactInfoMapping
        property :profile, include: ProfileMapping
      end
    end
  end
end
