# DocusignTransactionRooms

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/docusign_transaction_rooms`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'docusign_transaction_rooms'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install docusign_transaction_rooms

## Usage

```ruby
client = DocusignTransactionRooms::Client.new('access_token')
```
### Company
```ruby
client.company.integrations
client.company.offices
client.company.room_fields
```

### Member
```ruby
client.members.all
client.members.find(id: 1234)
client.members.create(member)
client.members.destroy(id: 1234)
client.members.update(member, id: 1234)
```

### Meta
```ruby
client.meta.activity_types
client.meta.allintegrations
client.meta.closing_statuses
client.meta.countries
client.meta.currencies
client.meta.envelope_actions
client.meta.financing_types
client.meta.origin_of_lead_types
client.meta.property_types
client.meta.roles
client.meta.seller_decision_types
client.meta.special_circumstances_types
client.meta.states
client.meta.task_date_types
client.meta.timezones
client.meta.transaction_sides
```

### Office
```ruby
client.offices.all
```

### Room
```ruby
client.rooms.all
client.rooms.create
client.rooms.destroy(id: 1234)
client.rooms.find(id: 1234)
# client.rooms.patch(id: 1234) pending a better understanding of json-patch
client.rooms.update(id: 1234)
client.rooms.activity(id: 1234)
client.rooms.approval(id: 1234)
client.rooms.documents(id: 1234)
client.rooms.create_document(id: 1234)
client.rooms.rejection(id: 1234)
client.rooms.room_fields(id: 1234)
client.rooms.submission(id: 1234)
client.rooms.task_lists(id: 1234)
client.rooms.create_task_list(id: 1234)
client.rooms.users(id: 1234)
client.rooms.invite_user(id: 1234)
client.rooms.remove_user(id: 1234, user_id: 5678)
client.rooms.add_user(id: 1234, user_id: 5678)
```

### User
```ruby
client.users.contact_info(id: 1234)
client.users.forms_terms(id: 1234)
client.users.picture(id: 1234)
client.users.profile(id: 1234)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/docusign_transaction_rooms. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

