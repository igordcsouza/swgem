require 'faraday'
require 'json'
require 'pry'


module SWGEM
 class Films
   BASE_URL = 'http://swapi.co/api/films/'

   def initialize
     @conn = Faraday.new(:url => BASE_URL) do |faraday|
       faraday.request  :url_encoded             # form-encode POST params
       faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
     end
   end

   def validate_api_status
     conn.get.status
   end

   def all(options = {})
     (JSON.parse((conn.get).body))["results"]
   end

   def by_id(id)
     JSON.parse((conn.get "#{id}/").body)
   end

  private

  attr_reader :conn
 end
end
