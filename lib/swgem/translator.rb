class SWGEM::Translator
  def initialize(language)
    @language = language
  end

  def hi
    case @language
    when "portuguese"
      "Eu gosto de star wars I,II,III! #tretaFoiPlantada"
    else
      "I like, star wars I, II, III! #tretaHasBeanPlanted"
    end
  end
end
