module DocusignTransactionRooms
  class Room < BaseModel
    attribute :roomId
    attribute :viewLink
    attribute :roomName
    attribute :status
    attribute :address, Address
    attribute :owners, Array[Owner]
    attribute :details, Details
    attribute :auctionDetails, AuctionDetails
    attribute :roomImageUrl
    attribute :integratorData
    attribute :creationDetails, CreationDetails
    attribute :loneWolfDetails, LoneWolfDetails
    attribute :integrationRoomDetails

    attribute :ownerId
    attribute :transactionSideId
    attribute :roleId
    attribute :profitPowerDetails
  end
end

# [
#   {
#     "roomId": 0,
#     "viewLink": "string",
#     "roomName": "string",
#     "status": "string",
#     "address": {
#       "address1": "string",
#       "address2": "string",
#       "city": "string",
#       "county": "string",
#       "stateId": "string",
#       "postalCode": "string",
#       "countryId": "string",
#       "timeZoneId": "string"
#     },
#     "owners": [
#       {
#         "userId": 0,
#         "firstName": "string",
#         "lastName": "string",
#         "transactionSideId": "string"
#       }
#     ],
#     "details": {
#       "closedDate": "2017-04-28T19:29:24.562Z",
#       "rejectedDate": "2017-04-28T19:29:24.562Z",
#       "dateSubmittedForReview": "2017-04-28T19:29:24.562Z",
#       "latitude": 0,
#       "longitude": 0,
#       "companyId": 0,
#       "officeId": 0,
#       "mlsId": "string",
#       "propertyTypeId": "string",
#       "yearBuilt": 0,
#       "specialCircumstancesId": "string",
#       "originOfLeadId": "string",
#       "listingDate": "2017-04-28T19:29:24.563Z",
#       "listingExpirationDate": "2017-04-28T19:29:24.563Z",
#       "originalListingAmount": 0,
#       "currentListingAmount": 0,
#       "relisting": true,
#       "offerDate": "2017-04-28T19:29:24.563Z",
#       "contractDate": "2017-04-28T19:29:24.563Z",
#       "contractAmount": 0,
#       "bindingDate": "2017-04-28T19:29:24.563Z",
#       "contingencyRemovalDate": "2017-04-28T19:29:24.563Z",
#       "appraisalContingencyDate": "2017-04-28T19:29:24.563Z",
#       "loanContingencyDate": "2017-04-28T19:29:24.563Z",
#       "insepctionContingencyDate": "2017-04-28T19:29:24.563Z",
#       "expectedClosingDate": "2017-04-28T19:29:24.563Z",
#       "actualCloseDate": "2017-04-28T19:29:24.563Z",
#       "financingTypeId": "string",
#       "earnestMoneyAmount": 0,
#       "entityHoldingEarnestMoney": "string",
#       "mortgageProvider": "string",
#       "titleProvider": "string",
#       "insuranceProvider": "string",
#       "homeWarrantyProvider": "string",
#       "relocationCompany": "string",
#       "relocationPercentage": 0,
#       "escrowProvider": "string",
#       "surveyProvider": "string",
#       "companyContactName": "string",
#       "companyAddress1": "string",
#       "companyAddress2": "string",
#       "companyState": "string",
#       "companyPostalCode": "string",
#       "companyCity": "string",
#       "companyPhone": "string",
#       "companyEmail": "string",
#       "companyConfirmation": "string",
#       "localContractAmount": 0,
#       "localCurrentListingAmount": 0,
#       "localEarnestMoneyAmount": 0,
#       "localOriginalListingAmount": 0,
#       "comment": "string",
#       "isUnderContract": true,
#       "closedStatusId": "string",
#       "localCurrencyId": "string",
#       "seller1": {
#         "company": "string",
#         "email": "string",
#         "name": "string",
#         "homePhone": "string",
#         "cellPhone": "string",
#         "businessPhone": "string",
#         "address1": "string",
#         "address2": "string",
#         "city": "string",
#         "stateId": "string",
#         "postalCode": "string",
#         "countryId": "string"
#       },
#       "seller2": {
#         "company": "string",
#         "email": "string",
#         "name": "string",
#         "homePhone": "string",
#         "cellPhone": "string",
#         "businessPhone": "string",
#         "address1": "string",
#         "address2": "string",
#         "city": "string",
#         "stateId": "string",
#         "postalCode": "string",
#         "countryId": "string"
#       },
#       "buyer1": {
#         "company": "string",
#         "email": "string",
#         "name": "string",
#         "homePhone": "string",
#         "cellPhone": "string",
#         "businessPhone": "string",
#         "address1": "string",
#         "address2": "string",
#         "city": "string",
#         "stateId": "string",
#         "postalCode": "string",
#         "countryId": "string"
#       },
#       "buyer2": {
#         "company": "string",
#         "email": "string",
#         "name": "string",
#         "homePhone": "string",
#         "cellPhone": "string",
#         "businessPhone": "string",
#         "address1": "string",
#         "address2": "string",
#         "city": "string",
#         "stateId": "string",
#         "postalCode": "string",
#         "countryId": "string"
#       },
#       "buyerAgent1Company": "string",
#       "buyerAgent1Email": "string",
#       "buyerAgent1Name": "string",
#       "buyerAgent1Phone": "string",
#       "buyerAgent2Company": "string",
#       "buyerAgent2Email": "string",
#       "buyerAgent2Name": "string",
#       "buyerAgent2Phone": "string",
#       "buyerSideCommission": 0,
#       "listingAgent1Company": "string",
#       "listingAgent1Email": "string",
#       "listingAgent1Name": "string",
#       "listingAgent1Phone": "string",
#       "listingAgent2Company": "string",
#       "listingAgent2Email": "string",
#       "listingAgent2Name": "string",
#       "listingAgent2Phone": "string",
#       "listSideCommission": 0,
#       "sellerConcession": 0,
#       "internalReferral": "string",
#       "internalReferralPercentage": 0,
#       "outsideReferral": "string",
#       "outsideReferralPercentage": 0,
#       "apiClientData": {}
#     },
#     "auctionDetails": {
#       "itemNumber": "string",
#       "winningBid": 0,
#       "buyersPremium": 0,
#       "totalPurchasePrice": 0,
#       "subjectToSellerConf": true,
#       "sellerDecisionTypeId": "string",
#       "subjectToDecisionDate": "2017-04-28T19:29:24.564Z",
#       "contractSentToSellerDate": "2017-04-28T19:29:24.564Z",
#       "sellerExecutedContractDate": "2017-04-28T19:29:24.564Z",
#       "deedSentToSellerDate": "2017-04-28T19:29:24.564Z",
#       "deedRecvdFromSellerDate": "2017-04-28T19:29:24.564Z",
#       "prelimHudSentSellerDate": "2017-04-28T19:29:24.564Z",
#       "prelimHudRecvdFromSellerDate": "2017-04-28T19:29:24.564Z"
#     },
#     "roomImageUrl": "string",
#     "integratorData": {},
#     "creationDetails": {
#       "userId": 0,
#       "firstName": "string",
#       "lastName": "string",
#       "created": "2017-04-28T19:29:24.564Z"
#     },
#     "loneWolfDetails": {
#       "number": "string",
#       "classificationId": "string",
#       "propertyTypeId": "string",
#       "agentCommission": {
#         "agentId": "string",
#         "endCode": "string",
#         "endCount": 0,
#         "commission": 0
#       },
#       "agentCommission2": {
#         "agentId": "string",
#         "endCode": "string",
#         "endCount": 0,
#         "commission": 0
#       },
#       "externalAgentCommission": {
#         "firstName": "string",
#         "lastName": "string",
#         "emailAddresses": "string",
#         "companyName": "string",
#         "contactTypeId": "string",
#         "endCode": "string",
#         "commission": 0
#       },
#       "clientContact": {
#         "firstName": "string",
#         "lastName": "string",
#         "emailAddress": "string",
#         "contactTypeId": "string"
#       },
#       "businessContact": {
#         "companyName": "string",
#         "endCode": "string",
#         "firstName": "string",
#         "lastName": "string",
#         "emailAddress": "string",
#         "contactTypeId": "string"
#       },
#       "isLoneWolfEnabled": true
#     },
#     "integrationRoomDetails": {}
#   }
# ]
