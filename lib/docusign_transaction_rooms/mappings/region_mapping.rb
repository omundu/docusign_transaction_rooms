module DocusignTransactionRooms
  class RegionMapping
    include Kartograph::DSL

    kartograph do
      mapping Region
      root_key plural: 'regions', scopes: [:read]

      scoped :read do
        property :id
        property :name
      end

    end
  end
end

# {
#   "regions": [
#     {
#       "id": 0,
#       "name": "string"
#     }
#   ]
# }
