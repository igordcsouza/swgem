require 'faraday'
require 'json'

class SWGEM::V1
  BASE_URL = 'http://swapi.co/api/'

  def initialize
    @conn = Faraday.new(:url => BASE_URL) do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
  end

  def validate_api_status
    @conn.get.status
  end

  def films(options = {})
    JSON.parse((@conn.get "films/#{options[:id]}", { page: (options[:page] || 1) }).body)
  end

end
