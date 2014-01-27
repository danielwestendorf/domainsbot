# Domainsbot

Simple Ruby API for http://domainsbot.com

## Installation

Add this line to your application's Gemfile:

    gem 'domainsbot'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install domainsbot

## Usage

    require 'domainsbot'

    Domainsbot.api_key = 'MY_API_KEY'
    Domainsbot.suggest(q: 'my-fancy-domain-name.com')

Suggest will add all the options passed to it as query params in the request

## Contributing

1. Fork it ( http://github.com/<my-github-username>/domainsbot/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
