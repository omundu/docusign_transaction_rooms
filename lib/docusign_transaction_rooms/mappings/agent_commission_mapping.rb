module DocusignTransactionRooms
  class AgentCommissionMapping
    include Kartograph::DSL

    kartograph do
      mapping AgentCommission

      scoped :read, :create, :update do
        property :agentId
        property :endCode
        property :endCount
        property :commission
      end

    end
  end
end

#   "agentCommission": {
#     "agentId": "string",
#     "endCode": "string",
#     "endCount": 0,
#     "commission": 0
#   },
#   "agentCommission2": {
#     "agentId": "string",
#     "endCode": "string",
#     "endCount": 0,
#     "commission": 0
#   }
