module DocusignTransactionRooms
  class MetaInformation < BaseModel
    include Kartograph::DSL

    kartograph do
      mapping MetaInformation
      scoped :read do
        property :resultSetSize
        property :nextUri
        property :previousUri
        property :startPosition
        property :endPosition
      end
    end

    attribute :resultSetSize
    attribute :nextUri
    attribute :previousUri
    attribute :startPosition
    attribute :endPosition
  end
end
