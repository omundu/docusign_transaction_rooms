module DocusignTransactionRooms
  class AuctionDetails < BaseModel
    attribute :itemNumber
    attribute :winningBid
    attribute :buyersPremium
    attribute :totalPurchasePrice
    attribute :subjectToSellerConf
    attribute :sellerDecisionTypeId
    attribute :subjectToDecisionDate
    attribute :contractSentToSellerDate
    attribute :sellerExecutedContractDate
    attribute :deedSentToSellerDate
    attribute :deedRecvdFromSellerDate
    attribute :prelimHudSentSellerDate
    attribute :prelimHudRecvdFromSellerDate
  end
end

# "auctionDetails": {
#   "itemNumber": "string",
#   "winningBid": 0,
#   "buyersPremium": 0,
#   "totalPurchasePrice": 0,
#   "subjectToSellerConf": true,
#   "sellerDecisionTypeId": "string",
#   "subjectToDecisionDate": "2017-04-28T19:29:24.564Z",
#   "contractSentToSellerDate": "2017-04-28T19:29:24.564Z",
#   "sellerExecutedContractDate": "2017-04-28T19:29:24.564Z",
#   "deedSentToSellerDate": "2017-04-28T19:29:24.564Z",
#   "deedRecvdFromSellerDate": "2017-04-28T19:29:24.564Z",
#   "prelimHudSentSellerDate": "2017-04-28T19:29:24.564Z",
#   "prelimHudRecvdFromSellerDate": "2017-04-28T19:29:24.564Z"
# }
