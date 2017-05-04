module DocusignTransactionRooms
  class Meta < BaseModel
    attribute :id
    attribute :name
    attribute :displayOrder
    attribute :code
  end
end

# {
#   "entities": [
#     {
#       "id": "string",
#       "name": "string",
#       "displayOrder": 0
#     }
#   ]
# }
