require 'test_helper'

module DocusignTransactionRooms
  class RoomResourceTest < Minitest::Test

    def test_all_creates_a_paginated_resource
      connection = DocusignTransactionRooms::Client.new('access_token').connection
      resource = DocusignTransactionRooms::RoomResource.new(connection: connection)
      rooms = resource.all

      assert_instance_of DocusignTransactionRooms::PaginatedResource, rooms
    end

    def test_rooms_can_be_accessed_to_all_rooms
      register_rooms_webmocks

      connection = DocusignTransactionRooms::Client.new('access_token').connection
      resource = DocusignTransactionRooms::RoomResource.new(connection: connection)
      
      rooms = resource.all(count: 50).collect{|room| room}

      assert_instance_of Array, rooms
      assert_instance_of DocusignTransactionRooms::Room, rooms.first
      assert_equal 123, rooms.size
      assert_equal (1..123).to_a, rooms.map(&:roomId)
    end

    def test_all_does_not_choke_on_empty_body
      register_rooms_webmocks
      connection = DocusignTransactionRooms::Client.new('access_token').connection
      resource = DocusignTransactionRooms::RoomResource.new(connection: connection)
      rooms = resource.all(dateRangeType: 'LastUpdated', startDate: '2018-07-18').collect{|room| room}

      assert_instance_of Array, rooms
      assert_empty rooms
    end

    def test_find_fetches_and_parsers_a_room
      register_rooms_webmocks
      connection = DocusignTransactionRooms::Client.new('access_token').connection
      resource = DocusignTransactionRooms::RoomResource.new(connection: connection)
      room = resource.find(id: 1234)

      assert_instance_of DocusignTransactionRooms::Room, room
      assert_instance_of DocusignTransactionRooms::Owner, room.owners.first
      assert_instance_of DocusignTransactionRooms::Details, room.details
      assert_equal 1234, room.roomId
      assert_equal 'Active', room.status
      assert_equal 'Bananagrams', room.roomName
    end
    
    def test_update_has_the_expected_values
      skip('this is a resource spec that needs some work')
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
