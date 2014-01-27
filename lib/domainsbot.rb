# Simple API wrapper for the Domainsbot API
# Visit https://developers.domainsbot.com/docs for more information about the API
# Built for API v4
#
# Author:: Daniel Westendorf (daniel@prowestech.com)
# License:: MIT

require 'net/http'
require 'json'

class Domainsbot
    @@api_key = nil

    BASE_URI = 'https://api.domainsbot.com/v4'

    # Set the API key to be used for all requests
    #
    # ==== Attributes
    #
    # * +key+ - String Domainsbot API Key
    #
    # ==== Examples
    #
    #    Domainsbot.api_key = "MYAPIKEY"
    def self.api_key=(key)
        @@api_key = key
    end

    def self.api_key; @@api_key; end

    # Accepts a hash of options
    # All options will be added as a query paramerter

    # ==== Attributes
    #
    # * +options+ - Hash query parameters
    #
    # ==== Examples
    #
    #    Domainsbot.suggest({q: 'example.com', pageSize: 2, tlds: 'com,org,net'})
    def self.suggest(options={q: '', pageSize: 25, tlds: 'com,org,net', format: 'json'})
        options['auth-token'] = @@api_key
        options[:json] = 'json'
        uri = build_uri('/spinner', options)

        response = Net::HTTP.get_response(uri)
        return JSON.parse(response.body)
    end

    # Helper method for building the URI
    # Shouldn't ever be called directly
    def self.build_uri(path, options) #:nodoc: all
        uri = URI("#{BASE_URI}#{path}")
        uri.query = URI.encode_www_form(options)
        return uri
    end
end
