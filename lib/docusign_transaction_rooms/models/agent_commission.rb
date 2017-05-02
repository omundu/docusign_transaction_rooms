module DocusignTransactionRooms
  class AgentCommission < BaseModel
    attribute :agentId
    attribute :endCode
    attribute :endCount
    attribute :commission
  end
end

# "agentCommission": {
#   "agentId": "string",
#   "endCode": "string",
#   "endCount": 0,
#   "commission": 0
# }
