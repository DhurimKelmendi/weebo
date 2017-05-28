require 'httparty'
require 'json'

module Weebo
  class ApiData
    include HTTParty
    base_uri 'http://dawa-tools.herokuapp.com'
    def initialize(service, path)
      @options = { query: { site: service } }
      @api_path = path
    end

    def get_data(key)
      response[key]
    end

    def response
      response = self.class.get(@api_path, @options)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
