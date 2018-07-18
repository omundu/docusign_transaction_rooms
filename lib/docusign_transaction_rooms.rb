require "docusign_transaction_rooms/version"
require 'docusign_transaction_rooms/configuration'
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

  autoload :Room, 'docusign_transaction_rooms/models/room'
  autoload :Owner, 'docusign_transaction_rooms/models/owner'
  autoload :Details, 'docusign_transaction_rooms/models/details'
  autoload :TransactionParty, 'docusign_transaction_rooms/models/transaction_party'
  autoload :RoomContact, 'docusign_transaction_rooms/models/room_contact'
  autoload :RoomContactType, 'docusign_transaction_rooms/models/room_contact_type'
  autoload :RoomContactIntegration, 'docusign_transaction_rooms/models/room_contact_integration'
  autoload :AuctionDetails, 'docusign_transaction_rooms/models/auction_details'
  autoload :CreationDetails, 'docusign_transaction_rooms/models/creation_details'
  autoload :LoneWolfDetails, 'docusign_transaction_rooms/models/lone_wolf_details'
  autoload :AgentCommission, 'docusign_transaction_rooms/models/agent_commission'
  autoload :ExternalAgentCommission, 'docusign_transaction_rooms/models/external_agent_commission'
  autoload :ClientContact, 'docusign_transaction_rooms/models/client_contact'
  autoload :BusinessContact, 'docusign_transaction_rooms/models/business_contact'
  autoload :ProfitPowerDetails, 'docusign_transaction_rooms/models/profit_power_details'
  autoload :RoomActivity, 'docusign_transaction_rooms/models/room_activity'
  autoload :RoomApproval, 'docusign_transaction_rooms/models/room_approval'
  autoload :RoomDocument, 'docusign_transaction_rooms/models/room_document'
  autoload :RoomRejection, 'docusign_transaction_rooms/models/room_rejection'
  autoload :RoomSubmission, 'docusign_transaction_rooms/models/room_submission'
  autoload :RoomTaskList, 'docusign_transaction_rooms/models/room_task_list'
  autoload :User, 'docusign_transaction_rooms/models/user'
  autoload :Folder, 'docusign_transaction_rooms/models/room'

  autoload :Meta, 'docusign_transaction_rooms/models/meta'
  autoload :MetaInformation, 'docusign_transaction_rooms/models/meta_information'

  autoload :Title, 'docusign_transaction_rooms/models/title'

  autoload :Template, 'docusign_transaction_rooms/models/template'
  autoload :TemplateOffice, 'docusign_transaction_rooms/models/template_office'
  autoload :TemplateRegion, 'docusign_transaction_rooms/models/template_region'

  autoload :Inbox, 'docusign_transaction_rooms/models/inbox'

  autoload :Document, 'docusign_transaction_rooms/models/document'

  autoload :Region, 'docusign_transaction_rooms/models/region'

  autoload :TaskList, 'docusign_transaction_rooms/models/task_list'

  autoload :Task, 'docusign_transaction_rooms/models/task'
  autoload :TaskDocument, 'docusign_transaction_rooms/models/task_document'
  autoload :TaskReminder, 'docusign_transaction_rooms/models/task_reminder'
  autoload :TaskAssignment, 'docusign_transaction_rooms/models/task_assignment'

   # Resources
  autoload :CompanyResource, 'docusign_transaction_rooms/resources/company_resource'
  autoload :MemberResource, 'docusign_transaction_rooms/resources/member_resource'
  autoload :OfficeResource, 'docusign_transaction_rooms/resources/office_resource'
  autoload :RoomResource, 'docusign_transaction_rooms/resources/room_resource'
  autoload :MetaResource, 'docusign_transaction_rooms/resources/meta_resource'

  autoload :UserResource, 'docusign_transaction_rooms/resources/user_resource'

  autoload :TitleResource, 'docusign_transaction_rooms/resources/title_resource'

  autoload :TemplateResource, 'docusign_transaction_rooms/resources/template_resource'

  autoload :InboxResource, 'docusign_transaction_rooms/resources/inbox_resource'

  autoload :DocumentResource, 'docusign_transaction_rooms/resources/document_resource'

  autoload :LoneWolfMetaResource, 'docusign_transaction_rooms/resources/lone_wolf_meta_resource'

  autoload :RegionResource, 'docusign_transaction_rooms/resources/region_resource'

  autoload :TaskListResource, 'docusign_transaction_rooms/resources/task_list_resource'

  autoload :TaskResource, 'docusign_transaction_rooms/resources/task_resource'

  # JSON Maps
  autoload :OfficeMapping, 'docusign_transaction_rooms/mappings/office_mapping'
  autoload :IntegrationMapping, 'docusign_transaction_rooms/mappings/integration_mapping'
  autoload :RoomFieldMapping, 'docusign_transaction_rooms/mappings/room_field_mapping'
  autoload :MemberMapping, 'docusign_transaction_rooms/mappings/member_mapping'
  autoload :AgentMapping, 'docusign_transaction_rooms/mappings/agent_mapping'
  autoload :ProfileMapping, 'docusign_transaction_rooms/mappings/profile_mapping'
  autoload :AccessMapping, 'docusign_transaction_rooms/mappings/access_mapping'
  autoload :PermissionsMapping, 'docusign_transaction_rooms/mappings/permissions_mapping'
  autoload :ManagerMapping, 'docusign_transaction_rooms/mappings/manager_mapping'

  autoload :ContactInfoMapping, 'docusign_transaction_rooms/mappings/contact_info_mapping'

  autoload :RoomMapping, 'docusign_transaction_rooms/mappings/room_mapping'
  autoload :AddressMapping, 'docusign_transaction_rooms/mappings/address_mapping'
  autoload :DetailsMapping, 'docusign_transaction_rooms/mappings/details_mapping'
  autoload :TransactionPartyMapping, 'docusign_transaction_rooms/mappings/transaction_party_mapping'
  autoload :RoomContactMapping, 'docusign_transaction_rooms/mappings/room_contact_mapping'
  autoload :RoomContactTypeMapping, 'docusign_transaction_rooms/mappings/room_contact_type_mapping'
  autoload :RoomContactIntegrationMapping, 'docusign_transaction_rooms/mappings/room_contact_integration_mapping'
  autoload :LoneWolfDetailsMapping, 'docusign_transaction_rooms/mappings/lone_wolf_details_mapping'
  autoload :AgentCommissionMapping, 'docusign_transaction_rooms/mappings/agent_commission_mapping'
  autoload :ExternalAgentCommissionMapping, 'docusign_transaction_rooms/mappings/external_agent_commission_mapping'
  autoload :ClientContactMapping, 'docusign_transaction_rooms/mappings/client_contact_mapping'
  autoload :BusinessContactMapping, 'docusign_transaction_rooms/mappings/business_contact_mapping'
  autoload :AuctionDetailsMapping, 'docusign_transaction_rooms/mappings/auction_details_mapping'
  autoload :ProfitPowerDetailsMapping, 'docusign_transaction_rooms/mappings/profit_power_details_mapping'
  autoload :RoomActivityMapping, 'docusign_transaction_rooms/mappings/room_activity_mapping'
  autoload :RoomApprovalMapping, 'docusign_transaction_rooms/mappings/room_approval_mapping'
  autoload :RoomDocumentMapping, 'docusign_transaction_rooms/mappings/room_document_mapping'
  autoload :RoomRejectionMapping, 'docusign_transaction_rooms/mappings/room_rejection_mapping'
  autoload :RoomSubmissionMapping, 'docusign_transaction_rooms/mappings/room_submission_mapping'
  autoload :RoomTaskListMapping, 'docusign_transaction_rooms/mappings/room_task_list_mapping'
  autoload :FolderMapping, 'docusign_transaction_rooms/mappings/folder_mapping'

  autoload :MetaMapping, 'docusign_transaction_rooms/mappings/meta_mapping'

  autoload :TitleMapping, 'docusign_transaction_rooms/mappings/title_mapping'

  autoload :TemplateMapping, 'docusign_transaction_rooms/mappings/template_mapping'

  autoload :InboxMapping, 'docusign_transaction_rooms/mappings/inbox_mapping'

  autoload :DocumentMapping, 'docusign_transaction_rooms/mappings/document_mapping'

  autoload :RegionMapping, 'docusign_transaction_rooms/mappings/region_mapping'

  autoload :TaskListMapping, 'docusign_transaction_rooms/mappings/task_list_mapping'

  autoload :TaskMapping, 'docusign_transaction_rooms/mappings/task_mapping'

   # Utils
  autoload :ErrorHandlingResourcable, 'docusign_transaction_rooms/error_handling_resourcable'
  autoload :PaginatedResource, 'docusign_transaction_rooms/paginated_resource'

  # Errors
  autoload :ErrorMapping, 'droplet_kit/mappings/error_mapping'
  Error = Class.new(StandardError)

end
