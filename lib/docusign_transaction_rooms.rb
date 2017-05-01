require "docusign_transaction_rooms/version"
require 'active_support/all'
require 'resource_kit'
require 'kartograph'

module DocusignTransactionRooms
  autoload :Client, 'docusign_transaction_rooms/client'
  # Models
  autoload :BaseModel, 'docusign_transaction_rooms/models/base_model'
   # Resources
  # JSON Maps
   # Utils
  # Errors
  autoload :ErrorMapping, 'droplet_kit/mappings/error_mapping'
  Error = Class.new(StandardError)

end
