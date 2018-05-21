module DocusignTransactionRooms
  class Details < BaseModel
    attribute :closedDate
    attribute :rejectedDate
    attribute :dateSubmittedForReview
    attribute :latitude
    attribute :longitude
    attribute :companyId
    attribute :officeId
    attribute :mlsId
    attribute :propertyTypeId
    attribute :yearBuilt
    attribute :specialCircumstancesId
    attribute :originOfLeadId
    attribute :listingDate
    attribute :listingExpirationDate
    attribute :originalListingAmount
    attribute :currentListingAmount
    attribute :relisting, Boolean, :default => false
    attribute :offerDate
    attribute :contractDate
    attribute :contractAmount
    attribute :bindingDate
    attribute :contingencyRemovalDate
    attribute :appraisalContingencyDate
    attribute :loanContingencyDate
    attribute :insepctionContingencyDate
    attribute :expectedClosingDate
    attribute :actualCloseDate
    attribute :financingTypeId
    attribute :earnestMoneyAmount
    attribute :entityHoldingEarnestMoney
    attribute :mortgageProvider
    attribute :titleProvider
    attribute :insuranceProvider
    attribute :homeWarrantyProvider
    attribute :relocationCompany
    attribute :relocationPercentage
    attribute :escrowProvider
    attribute :surveyProvider
    attribute :companyContactName
    attribute :companyAddress1
    attribute :companyAddress2
    attribute :companyState
    attribute :companyPostalCode
    attribute :companyCity
    attribute :companyPhone
    attribute :companyEmail
    attribute :companyConfirmation
    attribute :localContractAmount
    attribute :localCurrentListingAmount
    attribute :localEarnestMoneyAmount
    attribute :localOriginalListingAmount
    attribute :comment
    attribute :isUnderContract, Boolean, :default => false
    attribute :closedStatusId
    attribute :localCurrencyId
    attribute :seller1, TransactionParty
    attribute :seller2, TransactionParty
    attribute :buyer1, TransactionParty
    attribute :buyer2, TransactionParty
    attribute :roomContacts, Array(RoomContact)
    attribute :buyerAgent1Company
    attribute :buyerAgent1Email
    attribute :buyerAgent1Name
    attribute :buyerAgent1Phone
    attribute :buyerAgent2Company
    attribute :buyerAgent2Email
    attribute :buyerAgent2Name
    attribute :buyerAgent2Phone
    attribute :buyerSideCommission
    attribute :listingAgent1Company
    attribute :listingAgent1Email
    attribute :listingAgent1Name
    attribute :listingAgent1Phone
    attribute :listingAgent2Company
    attribute :listingAgent2Email
    attribute :listingAgent2Name
    attribute :listingAgent2Phone
    attribute :listSideCommission
    attribute :sellerConcession
    attribute :internalReferral
    attribute :internalReferralPercentage
    attribute :outsideReferral
    attribute :outsideReferralPercentage
    attribute :apiClientData
  end
end

# "details": {
#   "closedDate": "2017-04-28T19:29:24.562Z",
#   "rejectedDate": "2017-04-28T19:29:24.562Z",
#   "dateSubmittedForReview": "2017-04-28T19:29:24.562Z",
#   "latitude": 0,
#   "longitude": 0,
#   "companyId": 0,
#   "officeId": 0,
#   "mlsId": "string",
#   "propertyTypeId": "string",
#   "yearBuilt": 0,
#   "specialCircumstancesId": "string",
#   "originOfLeadId": "string",
#   "listingDate": "2017-04-28T19:29:24.563Z",
#   "listingExpirationDate": "2017-04-28T19:29:24.563Z",
#   "originalListingAmount": 0,
#   "currentListingAmount": 0,
#   "relisting": true,
#   "offerDate": "2017-04-28T19:29:24.563Z",
#   "contractDate": "2017-04-28T19:29:24.563Z",
#   "contractAmount": 0,
#   "bindingDate": "2017-04-28T19:29:24.563Z",
#   "contingencyRemovalDate": "2017-04-28T19:29:24.563Z",
#   "appraisalContingencyDate": "2017-04-28T19:29:24.563Z",
#   "loanContingencyDate": "2017-04-28T19:29:24.563Z",
#   "insepctionContingencyDate": "2017-04-28T19:29:24.563Z",
#   "expectedClosingDate": "2017-04-28T19:29:24.563Z",
#   "actualCloseDate": "2017-04-28T19:29:24.563Z",
#   "financingTypeId": "string",
#   "earnestMoneyAmount": 0,
#   "entityHoldingEarnestMoney": "string",
#   "mortgageProvider": "string",
#   "titleProvider": "string",
#   "insuranceProvider": "string",
#   "homeWarrantyProvider": "string",
#   "relocationCompany": "string",
#   "relocationPercentage": 0,
#   "escrowProvider": "string",
#   "surveyProvider": "string",
#   "companyContactName": "string",
#   "companyAddress1": "string",
#   "companyAddress2": "string",
#   "companyState": "string",
#   "companyPostalCode": "string",
#   "companyCity": "string",
#   "companyPhone": "string",
#   "companyEmail": "string",
#   "companyConfirmation": "string",
#   "localContractAmount": 0,
#   "localCurrentListingAmount": 0,
#   "localEarnestMoneyAmount": 0,
#   "localOriginalListingAmount": 0,
#   "comment": "string",
#   "isUnderContract": true,
#   "closedStatusId": "string",
#   "localCurrencyId": "string",
#   "seller1": {
#     "company": "string",
#     "email": "string",
#     "name": "string",
#     "homePhone": "string",
#     "cellPhone": "string",
#     "businessPhone": "string",
#     "address1": "string",
#     "address2": "string",
#     "city": "string",
#     "stateId": "string",
#     "postalCode": "string",
#     "countryId": "string"
#   },
#   "seller2": {
#     "company": "string",
#     "email": "string",
#     "name": "string",
#     "homePhone": "string",
#     "cellPhone": "string",
#     "businessPhone": "string",
#     "address1": "string",
#     "address2": "string",
#     "city": "string",
#     "stateId": "string",
#     "postalCode": "string",
#     "countryId": "string"
#   },
#   "buyer1": {
#     "company": "string",
#     "email": "string",
#     "name": "string",
#     "homePhone": "string",
#     "cellPhone": "string",
#     "businessPhone": "string",
#     "address1": "string",
#     "address2": "string",
#     "city": "string",
#     "stateId": "string",
#     "postalCode": "string",
#     "countryId": "string"
#   },
#   "buyer2": {
#     "company": "string",
#     "email": "string",
#     "name": "string",
#     "homePhone": "string",
#     "cellPhone": "string",
#     "businessPhone": "string",
#     "address1": "string",
#     "address2": "string",
#     "city": "string",
#     "stateId": "string",
#     "postalCode": "string",
#     "countryId": "string"
#   },
#   "buyerAgent1Company": "string",
#   "buyerAgent1Email": "string",
#   "buyerAgent1Name": "string",
#   "buyerAgent1Phone": "string",
#   "buyerAgent2Company": "string",
#   "buyerAgent2Email": "string",
#   "buyerAgent2Name": "string",
#   "buyerAgent2Phone": "string",
#   "buyerSideCommission": 0,
#   "listingAgent1Company": "string",
#   "listingAgent1Email": "string",
#   "listingAgent1Name": "string",
#   "listingAgent1Phone": "string",
#   "listingAgent2Company": "string",
#   "listingAgent2Email": "string",
#   "listingAgent2Name": "string",
#   "listingAgent2Phone": "string",
#   "listSideCommission": 0,
#   "sellerConcession": 0,
#   "internalReferral": "string",
#   "internalReferralPercentage": 0,
#   "outsideReferral": "string",
#   "outsideReferralPercentage": 0,
#   "apiClientData": {}
# }
