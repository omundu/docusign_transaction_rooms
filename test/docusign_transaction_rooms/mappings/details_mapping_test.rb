require 'test_helper'

module DocusignTransactionRooms
  class DetailsTest < Minitest::Test

    def setup
      @details_mapping = DocusignTransactionRooms::Details.new
    end

    def test_minimalist_create_has_the_expected_hash_keys
      expected_keys = ["mlsId", "officeId", "seller1", "seller2", "buyer1", "buyer2"]

      assert_equal expected_keys, DocusignTransactionRooms::DetailsMapping.hash_for(:minimalist_create, @details_mapping).keys
    end

    def test_create_has_the_expected_hash_keys
      expected_keys = ["officeId", "mlsId", "propertyTypeId", "yearBuilt", "specialCircumstancesId", "originOfLeadId", "listingDate", "listingExpirationDate", "originalListingAmount", "currentListingAmount", "relisting", "offerDate", "contractDate", "contractAmount", "bindingDate", "contingencyRemovalDate", "appraisalContingencyDate", "loanContingencyDate", "insepctionContingencyDate", "expectedClosingDate", "actualCloseDate", "financingTypeId", "earnestMoneyAmount", "entityHoldingEarnestMoney", "mortgageProvider", "titleProvider", "insuranceProvider", "homeWarrantyProvider", "relocationCompany", "relocationPercentage", "escrowProvider", "surveyProvider", "companyContactName", "companyAddress1", "companyAddress2", "companyState", "companyPostalCode", "companyCity", "companyPhone", "companyEmail", "companyConfirmation", "localContractAmount", "localCurrentListingAmount", "localEarnestMoneyAmount", "localOriginalListingAmount", "comment", "isUnderContract", "closedStatusId", "localCurrencyId", "seller1", "seller2", "buyer1", "buyer2", "buyerAgent1Company", "buyerAgent1Email", "buyerAgent1Name", "buyerAgent1Phone", "buyerAgent2Company", "buyerAgent2Email", "buyerAgent2Name", "buyerAgent2Phone", "buyerSideCommission", "listingAgent1Company", "listingAgent1Email", "listingAgent1Name", "listingAgent1Phone", "listingAgent2Company", "listingAgent2Email", "listingAgent2Name", "listingAgent2Phone", "listSideCommission", "sellerConcession", "internalReferral", "internalReferralPercentage", "outsideReferral", "outsideReferralPercentage", "apiClientData"]

      assert_equal expected_keys, DocusignTransactionRooms::DetailsMapping.hash_for(:create, @details_mapping).keys
    end

    def test_read_has_the_expected_hash_keys
      expected_keys = ["officeId", "mlsId", "propertyTypeId", "yearBuilt", "specialCircumstancesId", "originOfLeadId", "listingDate", "listingExpirationDate", "originalListingAmount", "currentListingAmount", "relisting", "offerDate", "contractDate", "contractAmount", "bindingDate", "contingencyRemovalDate", "appraisalContingencyDate", "loanContingencyDate", "insepctionContingencyDate", "expectedClosingDate", "actualCloseDate", "financingTypeId", "earnestMoneyAmount", "entityHoldingEarnestMoney", "mortgageProvider", "titleProvider", "insuranceProvider", "homeWarrantyProvider", "relocationCompany", "relocationPercentage", "escrowProvider", "surveyProvider", "companyContactName", "companyAddress1", "companyAddress2", "companyState", "companyPostalCode", "companyCity", "companyPhone", "companyEmail", "companyConfirmation", "localContractAmount", "localCurrentListingAmount", "localEarnestMoneyAmount", "localOriginalListingAmount", "comment", "isUnderContract", "closedStatusId", "localCurrencyId", "seller1", "seller2", "buyer1", "buyer2", "buyerAgent1Company", "buyerAgent1Email", "buyerAgent1Name", "buyerAgent1Phone", "buyerAgent2Company", "buyerAgent2Email", "buyerAgent2Name", "buyerAgent2Phone", "buyerSideCommission", "listingAgent1Company", "listingAgent1Email", "listingAgent1Name", "listingAgent1Phone", "listingAgent2Company", "listingAgent2Email", "listingAgent2Name", "listingAgent2Phone", "listSideCommission", "sellerConcession", "internalReferral", "internalReferralPercentage", "outsideReferral", "outsideReferralPercentage", "apiClientData"]

      assert_equal expected_keys, DocusignTransactionRooms::DetailsMapping.hash_for(:read, @details_mapping).keys
    end

    def test_update_has_the_expected_hash_keys
      expected_keys = ["mlsId", "propertyTypeId", "yearBuilt", "specialCircumstancesId", "originOfLeadId", "listingDate", "listingExpirationDate", "originalListingAmount", "currentListingAmount", "relisting", "offerDate", "contractDate", "contractAmount", "bindingDate", "contingencyRemovalDate", "appraisalContingencyDate", "loanContingencyDate", "insepctionContingencyDate", "expectedClosingDate", "actualCloseDate", "financingTypeId", "earnestMoneyAmount", "entityHoldingEarnestMoney", "mortgageProvider", "titleProvider", "insuranceProvider", "homeWarrantyProvider", "relocationCompany", "relocationPercentage", "escrowProvider", "surveyProvider", "companyContactName", "companyAddress1", "companyAddress2", "companyState", "companyPostalCode", "companyCity", "companyPhone", "companyEmail", "companyConfirmation", "localContractAmount", "localCurrentListingAmount", "localEarnestMoneyAmount", "localOriginalListingAmount", "comment", "isUnderContract", "closedStatusId", "localCurrencyId", "seller1", "seller2", "buyer1", "buyer2", "buyerAgent1Company", "buyerAgent1Email", "buyerAgent1Name", "buyerAgent1Phone", "buyerAgent2Company", "buyerAgent2Email", "buyerAgent2Name", "buyerAgent2Phone", "buyerSideCommission", "listingAgent1Company", "listingAgent1Email", "listingAgent1Name", "listingAgent1Phone", "listingAgent2Company", "listingAgent2Email", "listingAgent2Name", "listingAgent2Phone", "listSideCommission", "sellerConcession", "internalReferral", "internalReferralPercentage", "outsideReferral", "outsideReferralPercentage", "apiClientData"]

      assert_equal expected_keys, DocusignTransactionRooms::DetailsMapping.hash_for(:update, @details_mapping).keys
    end

  end
end
