class SWGEM
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end

  def self.api_status
    V1.new.validate_api_status
  end

  def self.films
    V1.new.films
  end

end

require 'swgem/translator'
require 'swgem/v1'
