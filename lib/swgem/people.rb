require 'faraday'
require 'json'
require 'pry'

module SWGEM
 class People
   BASE_URL = 'http://swapi.co/api/people/'

   def initialize
     @conn = Faraday.new(:url => BASE_URL) do |faraday|
      faraday.request :url_encoded
      faraday.adapter Faraday.default_adapter
     end
   end

   def validate_api_status
       conn.get.status
   end

   def all(options = {})
      (JSON.parse((conn.get '',:page => options["page"]).body))["results"]
   end

   private

   attr_reader :conn

 end
end
