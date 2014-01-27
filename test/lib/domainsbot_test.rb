require_relative '../test_helper'

describe Domainsbot do
    API_KEY = '123456'
    before do
        Domainsbot.api_key = API_KEY
    end

    it "must have an api_key defined" do
        Domainsbot.api_key.wont_be_nil
    end


    it '#build_uri' do
        uri = Domainsbot.build_uri('/spinner', {pageSize: 40, q: 'flubber'})
        assert_equal("https://api.domainsbot.com/v4/spinner?pageSize=40&q=flubber", uri.to_s)
    end

    describe '#suggest' do

        before do
            stub_request(:get, "https://api.domainsbot.com/v4/spinner").
                with(query: hash_including({}),:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Host'=>'api.domainsbot.com', 'User-Agent'=>'Ruby'}).
                to_return(status: 200, headers: {'Content-Type' => 'application/json'}, body: RESPONSE_DATA)
        end

        it "always gets a JSON Hash response" do
            response = Domainsbot.suggest(q: 'hotpeppers.com', format: 'xml')
            assert_kind_of(Hash, response)
        end

    end

end