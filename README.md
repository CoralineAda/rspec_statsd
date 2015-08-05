# RspecStatsd

Custom formatter for RSpec that outputs test run summary to statsd.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec_statsd'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec_statsd

## Usage

    rspec spec/ --format RspecStatsD::StatsDFormatter --format documentation

## Local statsd/graphite server via docker

    docker run -d --name graphite --restart=always -p 8000:80 -p 2003:2003 -p 8125:8125/udp hopsoft/graphite-statsd

Then hit [ip_address]:8000 to see your stats.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rspec_statsd/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
