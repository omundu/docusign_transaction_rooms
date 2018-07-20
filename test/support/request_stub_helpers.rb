module RequestStubHelpers

  def register_rooms_webmocks
    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/rooms/1234").
      to_return(status: 200, body: Pathname.new('./test/fixtures/rooms/1234.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/rooms").
      with(query: {count: 50, startPosition: 0}).
      to_return(status: 200, body: Pathname.new('./test/fixtures/rooms/all.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/rooms").
      with(query: {count: 50, startPosition: 50}).
      to_return(status: 200, body: Pathname.new('./test/fixtures/rooms/all_2.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/rooms").
      with(query: {count: 50, startPosition: 100}).
      to_return(status: 200, body: Pathname.new('./test/fixtures/rooms/all_3.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/rooms").
      with(query: {dateRangeType: 'LastUpdated', startDate: '2018-07-18', startPosition: 0, count: 100}).
      to_return(status: 204, body: '')
  end


  def register_meta_webmocks
    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/meta/activity_types").
      to_return(status: 200, body: Pathname.new('./test/fixtures/meta/activity_types.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/meta/closing_statuses").
      to_return(status: 200, body: Pathname.new('./test/fixtures/meta/closing_statuses.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/meta/countries").
      to_return(status: 200, body: Pathname.new('./test/fixtures/meta/countries.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/meta/currencies").
      to_return(status: 200, body: Pathname.new('./test/fixtures/meta/currencies.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/meta/financing_types").
      to_return(status: 200, body: Pathname.new('./test/fixtures/meta/financing_types.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/meta/origin_of_lead_types").
      to_return(status: 200, body: Pathname.new('./test/fixtures/meta/origin_of_lead_types.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/meta/property_types").
      to_return(status: 200, body: Pathname.new('./test/fixtures/meta/property_types.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/meta/roles").
      to_return(status: 200, body: Pathname.new('./test/fixtures/meta/roles.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/meta/seller_decision_types").
      to_return(status: 200, body: Pathname.new('./test/fixtures/meta/seller_decision_types.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/meta/special_circumstances_types").
      to_return(status: 200, body: Pathname.new('./test/fixtures/meta/special_circumstances_types.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/meta/task_date_types").
      to_return(status: 200, body: Pathname.new('./test/fixtures/meta/task_date_types.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/meta/timezones").
      to_return(status: 200, body: Pathname.new('./test/fixtures/meta/timezones.json').read)

    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/#{DocusignTransactionRooms.configuration.path_url}/meta/transaction_sides").
      to_return(status: 200, body: Pathname.new('./test/fixtures/meta/transaction_sides.json').read)
  end

  def register_pagination_webmock
    stub_request(:get, "#{DocusignTransactionRooms.configuration.api_url}/rooms").
      to_return(status: 200, body: Pathname.new('./test/fixtures/rooms/tiny_all.json').read)
  end
  
end
