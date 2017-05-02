module DocusignTransactionRooms
  class AuctionDetailsMapping
    include Kartograph::DSL

    kartograph do
      mapping AuctionDetails

     scoped :read, :create, :update do
      property :itemNumber
      property :winningBid
      property :buyersPremium
      property :totalPurchasePrice
      property :subjectToSellerConf
      property :sellerDecisionTypeId
      property :subjectToDecisionDate
      property :contractSentToSellerDate
      property :sellerExecutedContractDate
      property :deedSentToSellerDate
      property :deedRecvdFromSellerDate
      property :prelimHudSentSellerDate
      property :prelimHudRecvdFromSellerDate
      end
    end
  end
end

# "auctionDetails": {
#   "itemNumber": "string",
#   "winningBid": 0,
#   "buyersPremium": 0,
#   "totalPurchasePrice": 0,
#   "subjectToSellerConf": true,
#   "sellerDecisionTypeId": "string",
#   "subjectToDecisionDate": "2017-05-02T13:45:51.386Z",
#   "contractSentToSellerDate": "2017-05-02T13:45:51.386Z",
#   "sellerExecutedContractDate": "2017-05-02T13:45:51.386Z",
#   "deedSentToSellerDate": "2017-05-02T13:45:51.386Z",
#   "deedRecvdFromSellerDate": "2017-05-02T13:45:51.386Z",
#   "prelimHudSentSellerDate": "2017-05-02T13:45:51.386Z",
#   "prelimHudRecvdFromSellerDate": "2017-05-02T13:45:51.386Z"
# }
