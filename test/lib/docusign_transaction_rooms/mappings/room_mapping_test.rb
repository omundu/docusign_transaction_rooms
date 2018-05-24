require 'test_helper'

module DocusignTransactionRooms
  class RoomMappingTest < Minitest::Test

    def setup
      @room_model = DocusignTransactionRooms::Room.new
    end
    
    def test_update_has_the_expected_hash_keys
      expected_keys = ["integratorData", "roomName", "address", "details", "roomImageUrl", "loneWolfDetails", "auctionDetails", "profitPowerDetails", "integrationRoomDetails"]
      
      assert_equal expected_keys, DocusignTransactionRooms::RoomMapping.hash_for(:update, @room_model).keys
    end
    
  end
  
end