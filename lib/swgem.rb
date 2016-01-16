require "swgem/films"
module SWGEM
 class SWGEM
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end

  def self.api_status
    Films.new.validate_api_status
  end

  def self.films(options = {})
    Films.new.all(options)
  end

  def self.films_by_id(id)
    Films.new.by_id(id)
  end

 end
end
