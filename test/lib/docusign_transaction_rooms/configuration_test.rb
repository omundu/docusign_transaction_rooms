require 'test_helper'

module DocusignTransactionRooms
  class ConfigurationTest < Minitest::Test

    class ModifiedSettings < Minitest::Test

      def test_the_api_url_can_be_set
        assert_equal 'https://demo.rooms.docusign.com', DocusignTransactionRooms.configuration.api_url

        DocusignTransactionRooms.configure { |config| config.api_url = 'https://api.mylittlepony.com'}

        assert_equal 'https://api.mylittlepony.com', DocusignTransactionRooms.configuration.api_url
      end

      def test_the_path_url_can_be_set
        assert_equal 'restapi/v1', DocusignTransactionRooms.configuration.path_url

        DocusignTransactionRooms.configure { |config| config.path_url = 'v1/towns'}

        assert_equal 'v1/towns', DocusignTransactionRooms.configuration.path_url
      end

      def teardown
        DocusignTransactionRooms.configure do |config|
          config.api_url  = 'https://demo.rooms.docusign.com'
          config.path_url = 'restapi/v1'
        end
      end

    end

  end
end
