module DocusignTransactionRooms
  class Template < BaseModel
    attribute :id
    attribute :name
    attribute :offices, Array(TemplateOffice)
    attribute :regions, Array(TemplateRegion)
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
