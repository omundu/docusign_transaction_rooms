require 'test_helper'

module DocusignTransactionRooms
  class PaginatedResourceTest < Minitest::Test

    def setup
      connection = DocusignTransactionRooms::Client.new('access_token').connection
      @resource = DocusignTransactionRooms::RoomResource.new(connection: connection)
      @action = ResourceKit::Action.new(:all, :get, '/rooms')

      register_pagination_webmock
    end

    def test_initialize
      paginated_resource = PaginatedResource.new(@action, @resource)

      assert_equal @resource, paginated_resource.resource
      assert_equal @action, paginated_resource.action
      assert_equal [], paginated_resource.collection
      assert_equal 0, paginated_resource.start_position
      assert_nil paginated_resource.end_position
      assert_nil paginated_resource.result_size
    end

    def test_count_is_100_by_default
      paginated_resource = PaginatedResource.new(@action, @resource)

      assert_equal 100, paginated_resource.count
    end

    def test_count_uses_passed_in_value
      paginated_resource = PaginatedResource.new(@action, @resource, {count: 50})

      assert_equal 50, paginated_resource.count
    end

    def test_square_braces
      @action.handler(200) { |r| JSON.load(r.body)['rooms'] }

      paginated_resource = PaginatedResource.new(@action, @resource)

      paginated_resource.each_with_index do |transaction_room, index|
        assert_equal transaction_room, paginated_resource[index]
      end
    end

    def test_each_iterates_over_all_items
      @action.handler(200) { |r| JSON.load(r.body)['rooms'] }
      total = 0
      paginated_resource = PaginatedResource.new(@action, @resource)
      paginated_resource.each{|transction_room| total += 1 }

      assert_equal 15, total
    end

    # def test_last?
    # end

  end
end
