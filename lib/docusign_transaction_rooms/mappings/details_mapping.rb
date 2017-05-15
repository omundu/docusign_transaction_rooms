module DocusignTransactionRooms
  class DetailsMapping
    include Kartograph::DSL

    kartograph do
      mapping Details

      scoped :read, :create do
        property :officeId
        property :mlsId
        property :propertyTypeId
        property :yearBuilt
        property :specialCircumstancesId
        property :originOfLeadId
        property :listingDate
        property :listingExpirationDate
        property :originalListingAmount
        property :currentListingAmount
        property :relisting
        property :offerDate
        property :contractDate
        property :contractAmount
        property :bindingDate
        property :contingencyRemovalDate
        property :appraisalContingencyDate
        property :loanContingencyDate
        property :insepctionContingencyDate
        property :expectedClosingDate
        property :actualCloseDate
        property :financingTypeId
        property :earnestMoneyAmount
        property :entityHoldingEarnestMoney
        property :mortgageProvider
        property :titleProvider
        property :insuranceProvider
        property :homeWarrantyProvider
        property :relocationCompany
        property :relocationPercentage
        property :escrowProvider
        property :surveyProvider
        property :companyContactName
        property :companyAddress1
        property :companyAddress2
        property :companyState
        property :companyPostalCode
        property :companyCity
        property :companyPhone
        property :companyEmail
        property :companyConfirmation
        property :localContractAmount
        property :localCurrentListingAmount
        property :localEarnestMoneyAmount
        property :localOriginalListingAmount
        property :comment
        property :isUnderContract
        property :closedStatusId
        property :localCurrencyId
        property :seller1, include: TransactionPartyMapping
        property :seller2, include: TransactionPartyMapping
        property :buyer1, include: TransactionPartyMapping
        property :buyer2, include: TransactionPartyMapping
        property :buyerAgent1Company
        property :buyerAgent1Email
        property :buyerAgent1Name
        property :buyerAgent1Phone
        property :buyerAgent2Company
        property :buyerAgent2Email
        property :buyerAgent2Name
        property :buyerAgent2Phone
        property :buyerSideCommission
        property :listingAgent1Company
        property :listingAgent1Email
        property :listingAgent1Name
        property :listingAgent1Phone
        property :listingAgent2Company
        property :listingAgent2Email
        property :listingAgent2Name
        property :listingAgent2Phone
        property :listSideCommission
        property :sellerConcession
        property :internalReferral
        property :internalReferralPercentage
        property :outsideReferral
        property :outsideReferralPercentage
        property :apiClientData
      end

      scoped :minimalist_create do
        property :mlsId
        property :seller1, include: TransactionPartyMapping
        property :seller2, include: TransactionPartyMapping
        property :buyer1, include: TransactionPartyMapping
        property :buyer2, include: TransactionPartyMapping
      end

      scoped :update do
        property :mlsId
        property :propertyTypeId
        property :yearBuilt
        property :specialCircumstancesId
        property :originOfLeadId
        property :listingDate
        property :listingExpirationDate
        property :originalListingAmount
        property :currentListingAmount
        property :relisting
        property :offerDate
        property :contractDate
        property :contractAmount
        property :bindingDate
        property :contingencyRemovalDate
        property :appraisalContingencyDate
        property :loanContingencyDate
        property :insepctionContingencyDate
        property :expectedClosingDate
        property :actualCloseDate
        property :financingTypeId
        property :earnestMoneyAmount
        property :entityHoldingEarnestMoney
        property :mortgageProvider
        property :titleProvider
        property :insuranceProvider
        property :homeWarrantyProvider
        property :relocationCompany
        property :relocationPercentage
        property :escrowProvider
        property :surveyProvider
        property :companyContactName
        property :companyAddress1
        property :companyAddress2
        property :companyState
        property :companyPostalCode
        property :companyCity
        property :companyPhone
        property :companyEmail
        property :companyConfirmation
        property :localContractAmount
        property :localCurrentListingAmount
        property :localEarnestMoneyAmount
        property :localOriginalListingAmount
        property :comment
        property :isUnderContract
        property :closedStatusId
        property :localCurrencyId
        property :seller1, include: TransactionPartyMapping
        property :seller2, include: TransactionPartyMapping
        property :buyer1, include: TransactionPartyMapping
        property :buyer2, include: TransactionPartyMapping
        property :buyerAgent1Company
        property :buyerAgent1Email
        property :buyerAgent1Name
        property :buyerAgent1Phone
        property :buyerAgent2Company
        property :buyerAgent2Email
        property :buyerAgent2Name
        property :buyerAgent2Phone
        property :buyerSideCommission
        property :listingAgent1Company
        property :listingAgent1Email
        property :listingAgent1Name
        property :listingAgent1Phone
        property :listingAgent2Company
        property :listingAgent2Email
        property :listingAgent2Name
        property :listingAgent2Phone
        property :listSideCommission
        property :sellerConcession
        property :internalReferral
        property :internalReferralPercentage
        property :outsideReferral
        property :outsideReferralPercentage
        property :apiClientData
      end

    end
  end
end

# "details": {
#   "officeId": 0,
#   "mlsId": "string",
#   "propertyTypeId": "string",
#   "yearBuilt": 0,
#   "specialCircumstancesId": "string",
#   "originOfLeadId": "string",
#   "listingDate": "2017-05-02T13:45:51.385Z",
#   "listingExpirationDate": "2017-05-02T13:45:51.385Z",
#   "originalListingAmount": 0,
#   "currentListingAmount": 0,
#   "relisting": true,
#   "offerDate": "2017-05-02T13:45:51.385Z",
#   "contractDate": "2017-05-02T13:45:51.385Z",
#   "contractAmount": 0,
#   "bindingDate": "2017-05-02T13:45:51.385Z",
#   "contingencyRemovalDate": "2017-05-02T13:45:51.385Z",
#   "appraisalContingencyDate": "2017-05-02T13:45:51.385Z",
#   "loanContingencyDate": "2017-05-02T13:45:51.385Z",
#   "insepctionContingencyDate": "2017-05-02T13:45:51.385Z",
#   "expectedClosingDate": "2017-05-02T13:45:51.385Z",
#   "actualCloseDate": "2017-05-02T13:45:51.385Z",
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
