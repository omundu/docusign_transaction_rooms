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
  autoload :Integration, 'docusign_transaction_rooms/models/integration'
  autoload :RoomField, 'docusign_transaction_rooms/models/room_field'
  autoload :RoomFieldDetail, 'docusign_transaction_rooms/models/room_field_detail'

  autoload :Member, 'docusign_transaction_rooms/models/member'
  autoload :Profile, 'docusign_transaction_rooms/models/profile'
  autoload :Agent, 'docusign_transaction_rooms/models/agent'
  autoload :Profile, 'docusign_transaction_rooms/models/profile'
  autoload :Manager, 'docusign_transaction_rooms/models/manager'
  autoload :Access, 'docusign_transaction_rooms/models/access'
  autoload :Permissions, 'docusign_transaction_rooms/models/permissions'
  autoload :DefaultOffice, 'docusign_transaction_rooms/models/default_office'

  autoload :ContactInfo, 'docusign_transaction_rooms/models/contact_info'

   # Resources
  autoload :CompanyResource, 'docusign_transaction_rooms/resources/company_resource'
  autoload :MemberResource, 'docusign_transaction_rooms/resources/member_resource'
  autoload :OfficeResource, 'docusign_transaction_rooms/resources/office_resource'

  autoload :MetaResource, 'docusign_transaction_rooms/resources/meta_resource'
  autoload :RoomResource, 'docusign_transaction_rooms/resources/room_resource'
  autoload :UserResource, 'docusign_transaction_rooms/resources/user_resource'

  # JSON Maps
  autoload :OfficeMapping, 'docusign_transaction_rooms/mappings/office_mapping'
  autoload :IntegrationMapping, 'docusign_transaction_rooms/mappings/integration_mapping'
  autoload :RoomFieldMapping, 'docusign_transaction_rooms/mappings/room_field_mapping'
  autoload :MemberMapping, 'docusign_transaction_rooms/mappings/member_mapping'
  autoload :AgentMapping, 'docusign_transaction_rooms/mappings/agent_mapping'
  autoload :ProfileMapping, 'docusign_transaction_rooms/mappings/profile_mapping'
  autoload :AccessMapping, 'docusign_transaction_rooms/mappings/access_mapping'
  autoload :PermissionsMapping, 'docusign_transaction_rooms/mappings/permissions_mapping'

  autoload :ContactInfoMapping, 'docusign_transaction_rooms/mappings/contact_info_mapping'

   # Utils
  autoload :ErrorHandlingResourcable, 'docusign_transaction_rooms/error_handling_resourcable'

  # Errors
  autoload :ErrorMapping, 'droplet_kit/mappings/error_mapping'
  Error = Class.new(StandardError)

end
