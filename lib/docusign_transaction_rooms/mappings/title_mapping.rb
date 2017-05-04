module DocusignTransactionRooms
  class TitleMapping
    include Kartograph::DSL

    kartograph do
      mapping Title

      scoped :read do
        property :id
        property :title
        property :description
      end

    end
  end
end

# {
#   "id": 0,
#   "title": "string",
#   "description": "string"
# }
