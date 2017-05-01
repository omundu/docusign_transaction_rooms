require "docusign_transaction_rooms/version"
require 'active_support/all'
require 'resource_kit'
require 'kartograph'

module DocusignTransactionRooms
  autoload :Client, 'docusign_transaction_rooms/client'

  # Models
  autoload :BaseModel, 'docusign_transaction_rooms/models/base_model'
  autoload :Office, 'docusign_transaction_rooms/models/office'
  autoload :Address, 'docusign_transaction_rooms/models/address'
   # Resources
  autoload :CompanyResource, 'docusign_transaction_rooms/resources/company_resource'
  # JSON Maps
  autoload :OfficeMapping, 'docusign_transaction_rooms/mappings/office_mapping'

   # Utils
  autoload :ErrorHandlingResourcable, 'docusign_transaction_rooms/error_handling_resourcable'

  # Errors
  autoload :ErrorMapping, 'droplet_kit/mappings/error_mapping'
  Error = Class.new(StandardError)

end
