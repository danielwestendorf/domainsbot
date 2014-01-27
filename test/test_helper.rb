require 'bundler'
Bundler.require(:default, :test)
require 'minitest/autorun'
require 'minitest/pride'
require 'webmock/minitest'
require File.expand_path('../../lib/domainsbot.rb', __FILE__)

RESPONSE_DATA = '{"Domains":[{"Extension":"com","DomainName":"DirectlyBuilt.com","NameWithoutExtension":"DirectlyBuilt","Keys":["directly","built"],"Data":[[{"Name":"database","Data":"available"},{"Name":"language","Data":"en"},{"Name":"PercentileRank","Data":99},{"Name":"length","Data":13},{"Name":"keyscount","Data":2},{"Name":"bad","Data":false},{"Name":"dash","Data":false},{"Name":"numbers","Data":false},{"Name":"idn","Data":false},{"Name":"#synonyms","Data":true}]]},{"Extension":"com","DomainName":"StraightforwardBuilt.com","NameWithoutExtension":"StraightforwardBuilt","Keys":["straightforward","built"],"Data":[[{"Name":"database","Data":"available"},{"Name":"language","Data":"en"},{"Name":"PercentileRank","Data":99},{"Name":"length","Data":20},{"Name":"keyscount","Data":2},{"Name":"bad","Data":false},{"Name":"dash","Data":false},{"Name":"numbers","Data":false},{"Name":"idn","Data":false},{"Name":"#synonyms","Data":true}]]}],"Keys":[["simply","directly","straightforward","plainly","modestly"],["built"]],"PageIndex":0,"PageSize":2,"TotalResults":347}'