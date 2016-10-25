require 'faraday'
require 'json'

module SWGEM
 BASE_URL = 'http://swapi.co/api/'
end

require "swgem/base"
require "swgem/people"
require "swgem/films"
require "swgem/planets"
require "swgem/starships"
require "swgem/vehicles"
require "swgem/species"
