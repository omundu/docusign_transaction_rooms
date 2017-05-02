module DocusignTransactionRooms
  class ProfileMapping
    include Kartograph::DSL

    kartograph do
      mapping Profile
      scoped :create, :update do
        property :email
        property :firstName
        property :lastName
      end
    end
  end
end
