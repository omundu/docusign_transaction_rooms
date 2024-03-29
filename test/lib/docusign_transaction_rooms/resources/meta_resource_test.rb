require 'test_helper'

module DocusignTransactionRooms
  class MetaResourceTest < Minitest::Test

    def setup
      connection = DocusignTransactionRooms::Client.new('access_token').connection
      @resource = DocusignTransactionRooms::MetaResource.new(connection: connection)

      register_meta_webmocks
    end

    def test_activity_types_works_as_expected
      activity_types = @resource.activity_types

      assert_instance_of Array, activity_types
      activity_types.each{ |activity_type| assert_instance_of DocusignTransactionRooms::Meta, activity_type }

      assert_equal 'envreg', activity_types.first.id
      assert_equal 'Envelope Registered', activity_types.first.name
      assert_equal 0, activity_types.first.displayOrder
    end

    def test_allintegrations_works_as_expected
      skip('this might be removed from the current version of the DTR API')
      allintegrations = @resource.allintegrations

      assert_instance_of Array, allintegrations
      allintegrations.each{ |allintegration| assert_instance_of DocusignTransactionRooms::Meta, allintegration }

      assert_equal '', allintegrations.first.id
      assert_equal '', allintegrations.first.name
      assert_equal 0, allintegrations.first.displayOrder
    end

    def test_closing_statuses_works_as_expected
      closing_statuses = @resource.closing_statuses

      assert_instance_of Array, closing_statuses
      closing_statuses.each{ |closing_status| assert_instance_of DocusignTransactionRooms::Meta, closing_status }

      assert_equal 'sold', closing_statuses.first.id
      assert_equal 'Property Sold', closing_statuses.first.name
      assert_equal 0, closing_statuses.first.displayOrder
    end

    def test_countries_works_as_expected
      countries = @resource.countries

      assert_instance_of Array, countries
      countries.each{ |country| assert_instance_of DocusignTransactionRooms::Meta, country }

      assert_equal 'US', countries.first.id
      assert_equal 'United States', countries.first.name
      assert_equal 0, countries.first.displayOrder
    end

    def test_currencies_works_as_expected
      currencies = @resource.currencies

      assert_instance_of Array, currencies
      currencies.each{ |currency| assert_instance_of DocusignTransactionRooms::Meta, currency }

      assert_equal 'USD', currencies.first.id
      assert_equal 'United States Dollar', currencies.first.name
      assert_equal 0, currencies.first.displayOrder
    end

    def test_envelope_actions_works_as_expected
      skip('this might be removed from the current version of the DTR API')
      envelope_actions = @resource.envelope_actions

      assert_instance_of Array, envelope_actions
      envelope_actions.each{ |envelope_action| assert_instance_of DocusignTransactionRooms::Meta, envelope_action }

      assert_equal '', envelope_actions.first.id
      assert_equal '', envelope_actions.first.name
      assert_equal 0, envelope_actions.first.displayOrder
    end

    def test_financing_types_works_as_expected
      financing_types = @resource.financing_types

      assert_instance_of Array, financing_types
      financing_types.each{ |financing_type| assert_instance_of DocusignTransactionRooms::Meta, financing_type }

      assert_equal 'cash', financing_types.first.id
      assert_equal 'Cash', financing_types.first.name
      assert_equal 0, financing_types.first.displayOrder
    end

    def test_origin_of_lead_types_works_as_expected
      origin_of_lead_types = @resource.origin_of_lead_types

      assert_instance_of Array, origin_of_lead_types
      origin_of_lead_types.each{ |origin_of_lead_type| assert_instance_of DocusignTransactionRooms::Meta, origin_of_lead_type }

      assert_equal 'real', origin_of_lead_types.first.id
      assert_equal 'Realtor.com', origin_of_lead_types.first.name
      assert_equal 0, origin_of_lead_types.first.displayOrder
    end

    def test_property_types_works_as_expected
      property_types = @resource.property_types

      assert_instance_of Array, property_types
      property_types.each{ |property_type| assert_instance_of DocusignTransactionRooms::Meta, property_type }

      assert_equal 'resd', property_types.first.id
      assert_equal 'Residential Detached', property_types.first.name
      assert_equal 0, property_types.first.displayOrder
    end

    def test_roles_works_as_expected
      roles = @resource.roles

      assert_instance_of Array, roles
      roles.each{ |role| assert_instance_of DocusignTransactionRooms::Meta, role }

      assert_equal 'buyer', roles.first.id
      assert_equal 'Buyer', roles.first.name
      assert_equal 0, roles.first.displayOrder
    end

    def test_seller_decision_types_works_as_expected
      seller_decision_types = @resource.seller_decision_types

      assert_instance_of Array, seller_decision_types
      seller_decision_types.each{ |seller_decision_type| assert_instance_of DocusignTransactionRooms::Meta, seller_decision_type }

      assert_equal 'pend', seller_decision_types.first.id
      assert_equal 'Pending', seller_decision_types.first.name
      assert_equal 0, seller_decision_types.first.displayOrder
    end

    def test_special_circumstances_types_works_as_expected
      special_circumstances_types = @resource.special_circumstances_types

      assert_instance_of Array, special_circumstances_types
      special_circumstances_types.each{ |special_circumstances_type| assert_instance_of DocusignTransactionRooms::Meta, special_circumstances_type }

      assert_equal 'ss', special_circumstances_types.first.id
      assert_equal 'Short Sale', special_circumstances_types.first.name
      assert_equal 0, special_circumstances_types.first.displayOrder
    end

    def test_states_works_as_expected
      skip('a couple more attributes that I need to fiugre out houw to handle')
      states = @resource.states

      assert_instance_of Array, states
      states.each{ |state| assert_instance_of DocusignTransactionRooms::Meta, state }

      assert_equal 'buyer', states.first.id
      assert_equal 'Buyer', states.first.name
      assert_equal 0, states.first.displayOrder
    end

    def test_task_date_types_works_as_expected
      task_date_types = @resource.task_date_types

      assert_instance_of Array, task_date_types
      task_date_types.each{ |task_date_type| assert_instance_of DocusignTransactionRooms::Meta, task_date_type }

      assert_equal 'sd', task_date_types.first.id
      assert_equal 'Specific Calendar Date', task_date_types.first.name
      assert_equal 0, task_date_types.first.displayOrder
    end

    def test_timezones_works_as_expected
      timezones = @resource.timezones

      assert_instance_of Array, timezones
      timezones.each{ |timezone| assert_instance_of DocusignTransactionRooms::Meta, timezone }

      assert_equal 'atlantic', timezones.first.id
      assert_equal 'Atlantic', timezones.first.name
      assert_equal 0, timezones.first.displayOrder
    end

    def test_transaction_sides_works_as_expected
      transaction_sides = @resource.transaction_sides

      assert_instance_of Array, transaction_sides
      transaction_sides.each{ |transaction_side| assert_instance_of DocusignTransactionRooms::Meta, transaction_side }

      assert_equal 'sell', transaction_sides.first.id
      assert_equal 'List Side', transaction_sides.first.name
      assert_equal 0, transaction_sides.first.displayOrder
    end

  end
end
