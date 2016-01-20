module SWGEM
 class Base

 BASE_URL = 'http://swapi.co/api/'

 def initialize
  @conn = Faraday.new(:url => BASE_URL) do |faraday|
   faraday.request :url_encoded
   faraday.adapter Faraday.default_adapter
  end
 end

 def all
   (JSON.parse((conn.get "#{class_name}/").body))["results"]
 end

 def by_id(id)
  JSON.parse((conn.get "#{class_name}/#{id}/").body)
 end

 def class_name
  self.class.name.split("::")[1].downcase
 end

 def validate_api_status
  (conn.get "#{class_name}/").status
 end

 private

 attr_reader :conn

 end
end

require "swgem/people"
require "swgem/films"
require "swgem/planets"
