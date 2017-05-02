module DocusignTransactionRooms
  class ProfitPowerDetailsMapping
    include Kartograph::DSL

    kartograph do
      mapping ProfitPowerDetails

      scoped :create, :update do
        property :istingAgent1Unit
        property :istingAgent2Unit
        property :uyerAgent1Unit
        property :uyerAgent2Unit
        property :sProfitPowerEnabled
      end
    end
  end
end

# "profitPowerDetails": {
#   "listingAgent1Unit": 0,
#   "listingAgent2Unit": 0,
#   "buyerAgent1Unit": 0,
#   "buyerAgent2Unit": 0,
#   "isProfitPowerEnabled": true
# }
