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
    
    def test_update_has_the_expected_values
      update_hash = {
        roomName: "TOMTESTING1",
        address: {
          address1: "0 Lot 6 Island View Lane",
          city: "Lummi Island",
          stateId: "US-IL",
          postalCode: "60504",
          countryId: "US"
        },
        details: {
          roomContacts: [
            {
              roomId: 1234,
              roomContactTypeId: "buyer",
              contactIndex: 1,
              name: "Nick Wilde",
              email: "nick.wilde@zootopia.net"
            }
          ],
        }
      }
      address = DocusignTransactionRooms::Address.new(address1: "0 Lot 6 Island View Lane", city: "Lummi Island", stateId: "US-IL", postalCode: "60504", countryId: "US")
      room_contact = DocusignTransactionRooms::RoomContact.new(roomId: 1234, roomContactTypeId: "buyer", contactIndex: 1, name: "Nick Wilde", email: "nick.wilde@zootopia.net")
      details = DocusignTransactionRooms::Details.new(roomContacts: [room_contact])
      room = DocusignTransactionRooms::Room.new(roomName: 'TOMTESTING1', roomId: 1234, address: address, details: details)
      
      assert_equal update_hash, DocusignTransactionRooms::RoomMapping.hash_for(:update, room)
    end
  end
  
end