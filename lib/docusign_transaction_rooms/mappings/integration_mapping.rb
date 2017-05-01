module DocusignTransactionRooms
  class IntegrationMapping
    include Kartograph::DSL

    kartograph do
      mapping Integration
    end
  end
end
