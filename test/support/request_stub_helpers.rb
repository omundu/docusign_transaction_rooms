module RequestStubHelpers

  def register_rooms_webmocks
    stub_request(:get, 'https://stage.cartavi.com/restapi/v1/rooms/1234').
      to_return(status: 200, body: Pathname.new('./test/fixtures/rooms/1234.json').read)

    stub_request(:get, 'https://api.mylittlepony.com/v1/towns/rooms/1234').
      to_return(status: 200, body: Pathname.new('./test/fixtures/rooms/1234.json').read)

    stub_request(:get, 'https://stage.cartavi.com/restapi/v1/rooms').
      with(query: {count: 50, startPosition: 0}).
      to_return(status: 200, body: Pathname.new('./test/fixtures/rooms/all.json').read)

    stub_request(:get, 'https://stage.cartavi.com/restapi/v1/rooms').
      with(query: {count: 50, startPosition: 50}).
      to_return(status: 200, body: Pathname.new('./test/fixtures/rooms/all_2.json').read)

    stub_request(:get, 'https://stage.cartavi.com/restapi/v1/rooms').
      with(query: {count: 50, startPosition: 100}).
      to_return(status: 200, body: Pathname.new('./test/fixtures/rooms/all_3.json').read)

    stub_request(:get, 'https://api.mylittlepony.com/v1/towns/rooms').
      with(query: {count: 50, startPosition: 0}).
      to_return(status: 200, body: Pathname.new('./test/fixtures/rooms/all.json').read)

    stub_request(:get, 'https://api.mylittlepony.com/v1/towns/rooms').
      with(query: {count: 50, startPosition: 50}).
      to_return(status: 200, body: Pathname.new('./test/fixtures/rooms/all_2.json').read)

    stub_request(:get, 'https://api.mylittlepony.com/v1/towns/rooms').
      with(query: {count: 50, startPosition: 100}).
      to_return(status: 200, body: Pathname.new('./test/fixtures/rooms/all_3.json').read)
  end
  
end
