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
        property :roomContacts, plural: true, include: RoomContactMapping
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
        property :officeId
        property :roomContacts, plural: true, include: RoomContactMapping
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
        property :roomContacts, plural: true, include: RoomContactMapping
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
