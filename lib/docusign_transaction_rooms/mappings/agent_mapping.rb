module DocusignTransactionRooms
  class AgentMapping
    include Kartograph::DSL

    kartograph do
      mapping Agent
      root_key singular: 'agent', scopes: [:read]

      scoped :read do
        property :office, include: OfficeMapping
      end

      scoped :create, :update do
        property :office, include: OfficeMapping
      end

    end
  end
end
