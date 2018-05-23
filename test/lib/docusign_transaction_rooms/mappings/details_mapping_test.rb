require 'test_helper'

module DocusignTransactionRooms
  class DetailsMappingTest < Minitest::Test

    def setup
      @details_model = DocusignTransactionRooms::Details.new
    end

    def test_minimalist_create_has_the_expected_hash_keys
      expected_keys = ["mlsId", "officeId", "roomContacts"]

      assert_equal expected_keys, DocusignTransactionRooms::DetailsMapping.hash_for(:minimalist_create, @details_model).keys
    end

    def test_create_has_the_expected_hash_keys
      expected_keys = ["officeId", "mlsId", "propertyTypeId", "yearBuilt", "specialCircumstancesId", "originOfLeadId", "listingDate", "listingExpirationDate", "originalListingAmount", "currentListingAmount", "relisting", "offerDate", "contractDate", "contractAmount", "bindingDate", "contingencyRemovalDate", "appraisalContingencyDate", "loanContingencyDate", "insepctionContingencyDate", "expectedClosingDate", "actualCloseDate", "financingTypeId", "earnestMoneyAmount", "entityHoldingEarnestMoney", "mortgageProvider", "titleProvider", "insuranceProvider", "homeWarrantyProvider", "relocationCompany", "relocationPercentage", "escrowProvider", "surveyProvider", "companyContactName", "companyAddress1", "companyAddress2", "companyState", "companyPostalCode", "companyCity", "companyPhone", "companyEmail", "companyConfirmation", "localContractAmount", "localCurrentListingAmount", "localEarnestMoneyAmount", "localOriginalListingAmount", "comment", "isUnderContract", "closedStatusId", "localCurrencyId", "seller1", "seller2", "buyer1", "buyer2", "roomContacts", "buyerAgent1Company", "buyerAgent1Email", "buyerAgent1Name", "buyerAgent1Phone", "buyerAgent2Company", "buyerAgent2Email", "buyerAgent2Name", "buyerAgent2Phone", "buyerSideCommission", "listingAgent1Company", "listingAgent1Email", "listingAgent1Name", "listingAgent1Phone", "listingAgent2Company", "listingAgent2Email", "listingAgent2Name", "listingAgent2Phone", "listSideCommission", "sellerConcession", "internalReferral", "internalReferralPercentage", "outsideReferral", "outsideReferralPercentage", "apiClientData"]

      assert_equal expected_keys, DocusignTransactionRooms::DetailsMapping.hash_for(:create, @details_model).keys
    end

    def test_read_has_the_expected_hash_keys
      expected_keys = ["officeId", "mlsId", "propertyTypeId", "yearBuilt", "specialCircumstancesId", "originOfLeadId", "listingDate", "listingExpirationDate", "originalListingAmount", "currentListingAmount", "relisting", "offerDate", "contractDate", "contractAmount", "bindingDate", "contingencyRemovalDate", "appraisalContingencyDate", "loanContingencyDate", "insepctionContingencyDate", "expectedClosingDate", "actualCloseDate", "financingTypeId", "earnestMoneyAmount", "entityHoldingEarnestMoney", "mortgageProvider", "titleProvider", "insuranceProvider", "homeWarrantyProvider", "relocationCompany", "relocationPercentage", "escrowProvider", "surveyProvider", "companyContactName", "companyAddress1", "companyAddress2", "companyState", "companyPostalCode", "companyCity", "companyPhone", "companyEmail", "companyConfirmation", "localContractAmount", "localCurrentListingAmount", "localEarnestMoneyAmount", "localOriginalListingAmount", "comment", "isUnderContract", "closedStatusId", "localCurrencyId", "seller1", "seller2", "buyer1", "buyer2", "roomContacts", "buyerAgent1Company", "buyerAgent1Email", "buyerAgent1Name", "buyerAgent1Phone", "buyerAgent2Company", "buyerAgent2Email", "buyerAgent2Name", "buyerAgent2Phone", "buyerSideCommission", "listingAgent1Company", "listingAgent1Email", "listingAgent1Name", "listingAgent1Phone", "listingAgent2Company", "listingAgent2Email", "listingAgent2Name", "listingAgent2Phone", "listSideCommission", "sellerConcession", "internalReferral", "internalReferralPercentage", "outsideReferral", "outsideReferralPercentage", "apiClientData"]

      assert_equal expected_keys, DocusignTransactionRooms::DetailsMapping.hash_for(:read, @details_model).keys
    end

    def test_update_has_the_expected_hash_keys
      expected_keys = ["mlsId", "propertyTypeId", "yearBuilt", "specialCircumstancesId", "originOfLeadId", "listingDate", "listingExpirationDate", "originalListingAmount", "currentListingAmount", "relisting", "offerDate", "contractDate", "contractAmount", "bindingDate", "contingencyRemovalDate", "appraisalContingencyDate", "loanContingencyDate", "insepctionContingencyDate", "expectedClosingDate", "actualCloseDate", "financingTypeId", "earnestMoneyAmount", "entityHoldingEarnestMoney", "mortgageProvider", "titleProvider", "insuranceProvider", "homeWarrantyProvider", "relocationCompany", "relocationPercentage", "escrowProvider", "surveyProvider", "companyContactName", "companyAddress1", "companyAddress2", "companyState", "companyPostalCode", "companyCity", "companyPhone", "companyEmail", "companyConfirmation", "localContractAmount", "localCurrentListingAmount", "localEarnestMoneyAmount", "localOriginalListingAmount", "comment", "isUnderContract", "closedStatusId", "localCurrencyId", "seller1", "seller2", "buyer1", "buyer2", "roomContacts", "buyerAgent1Company", "buyerAgent1Email", "buyerAgent1Name", "buyerAgent1Phone", "buyerAgent2Company", "buyerAgent2Email", "buyerAgent2Name", "buyerAgent2Phone", "buyerSideCommission", "listingAgent1Company", "listingAgent1Email", "listingAgent1Name", "listingAgent1Phone", "listingAgent2Company", "listingAgent2Email", "listingAgent2Name", "listingAgent2Phone", "listSideCommission", "sellerConcession", "internalReferral", "internalReferralPercentage", "outsideReferral", "outsideReferralPercentage", "apiClientData"]

      assert_equal expected_keys, DocusignTransactionRooms::DetailsMapping.hash_for(:update, @details_model).keys
    end

  end
end


# {
#   "transactionSideId":"sell",
#   "roleId":"reagent",
#   "roomName":"Zootopia Classic",
#   "address":{
#     "address1":"321 Summer Street",
#     "address2":null,
#     "city":"Boston",
#     "county":null,
#     "stateId":"US-MA",
#     "postalCode":"02210",
#     "countryId":"US",
#     "timeZoneId":null
#   },
#   "details":{
#     "mlsId":"01235",
#     "officeId":null,
#     "roomContacts":[
#       {
#         "roomContactId":null,
#         "roomId":null,
#         "roomContactTypeId":"sell",
#         "contactIndex":1,
#         "name":"Nick Wilde",
#         "company":null,
#         "email":"nick.wilde@zootopia.net",
#         "businessPhone":null,
#         "phone":"9012345678",
#         "cellPhone":"1234567890",
#         "address1":"123 Summer Street",
#         "address2":null,
#         "city":"Boston",
#         "stateId":"US-MA",
#         "postalCode":"02110",
#         "countryId":"US",
#         "side":null,
#         "roomContactType":null
#       }
#     ]
#   }
# }
#
#
#
#
# {
#   "roomId": 1677738,
#   "roomName": "TOMTESTING1",
#   "mlsId": "612367",
#   "address": {
#     "address1": "0 Lot 6 Island View Lane",
#     "city": "Lummi Island",
#     "stateId": "US-IL",
#     "postalCode": "60504",
#     "countryId": "US"
#   },
#   "roomContacts": [
#     {
#       "roomContactId": 0,
#       "roomId": 0,
#       "roomContactTypeId": "string",
#       "contactIndex": 0,
#       "name": "string",
#       "company": "string",
#       "email": "string",
#       "businessPhone": "string",
#       "phone": "string",
#       "cellPhone": "string",
#       "address1": "string",
#       "address2": "string",
#       "city": "string",
#       "stateId": "string",
#       "postalCode": "string",
#       "countryId": "string",
#       "side": "string",
#       "roomContactType": {
#         "roomContactTypeId": "string",
#         "roomContactTypeName": "string",
#         "contactIndex": 0,
#         "updatedDisplayName": "string",
#         "roomContactIntegrations": [
#           {
#             "integrationTypeId": "string",
#             "integrationContactType": "string",
#             "integrationContactId": "string"
#           }
#         ]
#       }
#     }
#   ]
#
#
#
# ################################################
#
# {
#   "roomId": 1677738,
#   "roomName": "TOMTESTING1",
#   "mlsId": "612367",
#   "address": {
#     "address1": "0 Lot 6 Island View Lane",
#     "city": "Lummi Island",
#     "stateId": "US-IL",
#     "postalCode": "60504",
#     "countryId": "US"
#   },
#   "details": {
#     "roomContacts": [
#       {
#         "roomContactTypeId": "buyer",
#         "contactIndex": 1,
#         "name": "Nick Wilde",
#         "email": "nick.wilde@zootopia.net"
#       }
#     ],
#   }
# }
#
# ###################################################
#
# {
#   "roomName": "TOMTESTING1",
#   "address": {
#     "address1": "0 Lot 6 Island View Lane",
#     "city": "Lummi Island",
#     "stateId": "US-IL",
#     "postalCode": "60504",
#     "countryId": "US"
#   },
#   "details": {
#     "roomContacts": [
#       {
#         "roomId": 1677738,
#         "roomContactTypeId": "buyer",
#         "contactIndex": 1,
#         "name": "Nick Wilde",
#         "email": "nick.wilde@zootopia.net"
#       }
#     ],
#   }
# }
#
# ###################################################
#
# {
#   "roomName": "TOMTESTING1",
#   "address": {
#     "address1": "0 Lot 6 Island View Lane",
#     "city": "Lummi Island",
#     "stateId": "US-IL",
#     "postalCode": "60504",
#     "countryId": "US"
#   },
#   "details": {
#     "roomContacts": [
#       {
#         "roomContactTypeId": "buyer",
#         "contactIndex": 1,
#         "name": "Nick Wilde",
#         "email": "nick.wilde@zootopia.net"
#       }
#     ],
#   }
# }
#
# #####################################################
#
# {
#   "details": {
#     "roomContacts": [
#       {
#         "roomContactTypeId": "buyer",
#         "contactIndex": 1,
#         "name": "Nick Wilde",
#         "email": "nick.wilde@zootopia.net"
#       }
#     ],
#   }
# }