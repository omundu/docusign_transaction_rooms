module DocusignTransactionRooms
  class RoomMapping
    include Kartograph::DSL

    kartograph do
      mapping Room
      root_key plural: 'rooms', scopes: [:read]

      scoped :read do
        property :roomId
        property :viewLink
        property :roomName
        property :status
        property :address
        property :owners
        property :details
        property :auctionDetails
        property :roomImageUrl
        property :integratorData
        property :creationDetails
        property :loneWolfDetails
        property :integrationRoomDetails
      end

      scoped :create, :update do
        property :ownerId
        property :transactionSideId
        property :integratorData
        property :roleId
        property :roomName
        property :address, include: AddressMapping
        property :details, include: DetailsMapping
        property :roomImageUrl
        property :loneWolfDetails, include: LoneWolfDetailsMapping
        property :auctionDetails, include: AuctionDetailsMapping
        property :profitPowerDetails, include: ProfitPowerDetailsMapping
        property :integrationRoomDetails
      end

    end
  end
end

# Rooms
# {
#   "resultSetSize": 1,
#   "previousUri": null,
#   "nextUri": null,
#   "startPosition": 0,
#   "endPosition": 0
# }

# Create
# {
#   "ownerId": 0,
#   "transactionSideId": "string",
#   "integratorData": {},
#   "roleId": "string",
#   "roomName": "string",
#   "address": {
#     "address1": "string",
#     "address2": "string",
#     "city": "string",
#     "county": "string",
#     "stateId": "string",
#     "postalCode": "string",
#     "countryId": "string",
#     "timeZoneId": "string"
#   },
#   "details": {
#     "officeId": 0,
#     "mlsId": "string",
#     "propertyTypeId": "string",
#     "yearBuilt": 0,
#     "specialCircumstancesId": "string",
#     "originOfLeadId": "string",
#     "listingDate": "2017-05-02T13:45:51.385Z",
#     "listingExpirationDate": "2017-05-02T13:45:51.385Z",
#     "originalListingAmount": 0,
#     "currentListingAmount": 0,
#     "relisting": true,
#     "offerDate": "2017-05-02T13:45:51.385Z",
#     "contractDate": "2017-05-02T13:45:51.385Z",
#     "contractAmount": 0,
#     "bindingDate": "2017-05-02T13:45:51.385Z",
#     "contingencyRemovalDate": "2017-05-02T13:45:51.385Z",
#     "appraisalContingencyDate": "2017-05-02T13:45:51.385Z",
#     "loanContingencyDate": "2017-05-02T13:45:51.385Z",
#     "insepctionContingencyDate": "2017-05-02T13:45:51.385Z",
#     "expectedClosingDate": "2017-05-02T13:45:51.385Z",
#     "actualCloseDate": "2017-05-02T13:45:51.385Z",
#     "financingTypeId": "string",
#     "earnestMoneyAmount": 0,
#     "entityHoldingEarnestMoney": "string",
#     "mortgageProvider": "string",
#     "titleProvider": "string",
#     "insuranceProvider": "string",
#     "homeWarrantyProvider": "string",
#     "relocationCompany": "string",
#     "relocationPercentage": 0,
#     "escrowProvider": "string",
#     "surveyProvider": "string",
#     "companyContactName": "string",
#     "companyAddress1": "string",
#     "companyAddress2": "string",
#     "companyState": "string",
#     "companyPostalCode": "string",
#     "companyCity": "string",
#     "companyPhone": "string",
#     "companyEmail": "string",
#     "companyConfirmation": "string",
#     "localContractAmount": 0,
#     "localCurrentListingAmount": 0,
#     "localEarnestMoneyAmount": 0,
#     "localOriginalListingAmount": 0,
#     "comment": "string",
#     "isUnderContract": true,
#     "closedStatusId": "string",
#     "localCurrencyId": "string",
#     "seller1": {
#       "company": "string",
#       "email": "string",
#       "name": "string",
#       "homePhone": "string",
#       "cellPhone": "string",
#       "businessPhone": "string",
#       "address1": "string",
#       "address2": "string",
#       "city": "string",
#       "stateId": "string",
#       "postalCode": "string",
#       "countryId": "string"
#     },
#     "seller2": {
#       "company": "string",
#       "email": "string",
#       "name": "string",
#       "homePhone": "string",
#       "cellPhone": "string",
#       "businessPhone": "string",
#       "address1": "string",
#       "address2": "string",
#       "city": "string",
#       "stateId": "string",
#       "postalCode": "string",
#       "countryId": "string"
#     },
#     "buyer1": {
#       "company": "string",
#       "email": "string",
#       "name": "string",
#       "homePhone": "string",
#       "cellPhone": "string",
#       "businessPhone": "string",
#       "address1": "string",
#       "address2": "string",
#       "city": "string",
#       "stateId": "string",
#       "postalCode": "string",
#       "countryId": "string"
#     },
#     "buyer2": {
#       "company": "string",
#       "email": "string",
#       "name": "string",
#       "homePhone": "string",
#       "cellPhone": "string",
#       "businessPhone": "string",
#       "address1": "string",
#       "address2": "string",
#       "city": "string",
#       "stateId": "string",
#       "postalCode": "string",
#       "countryId": "string"
#     },
#     "buyerAgent1Company": "string",
#     "buyerAgent1Email": "string",
#     "buyerAgent1Name": "string",
#     "buyerAgent1Phone": "string",
#     "buyerAgent2Company": "string",
#     "buyerAgent2Email": "string",
#     "buyerAgent2Name": "string",
#     "buyerAgent2Phone": "string",
#     "buyerSideCommission": 0,
#     "listingAgent1Company": "string",
#     "listingAgent1Email": "string",
#     "listingAgent1Name": "string",
#     "listingAgent1Phone": "string",
#     "listingAgent2Company": "string",
#     "listingAgent2Email": "string",
#     "listingAgent2Name": "string",
#     "listingAgent2Phone": "string",
#     "listSideCommission": 0,
#     "sellerConcession": 0,
#     "internalReferral": "string",
#     "internalReferralPercentage": 0,
#     "outsideReferral": "string",
#     "outsideReferralPercentage": 0,
#     "apiClientData": {}
#   },
#   "roomImageUrl": "string",
#   "loneWolfDetails": {
#     "number": "string",
#     "classificationId": "string",
#     "propertyTypeId": "string",
#     "agentCommission": {
#       "agentId": "string",
#       "endCode": "string",
#       "endCount": 0,
#       "commission": 0
#     },
#     "agentCommission2": {
#       "agentId": "string",
#       "endCode": "string",
#       "endCount": 0,
#       "commission": 0
#     },
#     "externalAgentCommission": {
#       "firstName": "string",
#       "lastName": "string",
#       "emailAddresses": "string",
#       "companyName": "string",
#       "contactTypeId": "string",
#       "endCode": "string",
#       "commission": 0
#     },
#     "clientContact": {
#       "firstName": "string",
#       "lastName": "string",
#       "emailAddress": "string",
#       "contactTypeId": "string"
#     },
#     "businessContact": {
#       "companyName": "string",
#       "endCode": "string",
#       "firstName": "string",
#       "lastName": "string",
#       "emailAddress": "string",
#       "contactTypeId": "string"
#     },
#     "isLoneWolfEnabled": true
#   },
#   "auctionDetails": {
#     "itemNumber": "string",
#     "winningBid": 0,
#     "buyersPremium": 0,
#     "totalPurchasePrice": 0,
#     "subjectToSellerConf": true,
#     "sellerDecisionTypeId": "string",
#     "subjectToDecisionDate": "2017-05-02T13:45:51.386Z",
#     "contractSentToSellerDate": "2017-05-02T13:45:51.386Z",
#     "sellerExecutedContractDate": "2017-05-02T13:45:51.386Z",
#     "deedSentToSellerDate": "2017-05-02T13:45:51.386Z",
#     "deedRecvdFromSellerDate": "2017-05-02T13:45:51.386Z",
#     "prelimHudSentSellerDate": "2017-05-02T13:45:51.386Z",
#     "prelimHudRecvdFromSellerDate": "2017-05-02T13:45:51.386Z"
#   },
#   "profitPowerDetails": {
#     "listingAgent1Unit": 0,
#     "listingAgent2Unit": 0,
#     "buyerAgent1Unit": 0,
#     "buyerAgent2Unit": 0,
#     "isProfitPowerEnabled": true
#   },
#   "integrationRoomDetails": {}
# }
