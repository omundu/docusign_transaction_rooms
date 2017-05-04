module DocusignTransactionRooms
  class TemplateMapping
    include Kartograph::DSL

    kartograph do
      mapping Template

      scoped :read do
        property :id
        property :name
        property :offices
        property :regions
      end

    end
  end
end

# [
#   {
#     "id": 0,
#     "name": "string",
#     "offices": [
#       {
#         "officeId": 0,
#         "officeName": "string"
#       }
#     ],
#     "regions": [
#       {
#         "regionId": 0,
#         "regionName": "string"
#       }
#     ]
#   }
# ]
