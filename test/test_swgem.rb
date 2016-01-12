require 'minitest/autorun'
require 'swgem'

class SWGEMTest < Minitest::Test
  def test_portuguese_hi
    assert_equal "Eu gosto de star wars I,II,III! #tretaFoiPlantada", SWGEM.hi("portuguese")
  end

  def test_any_hi
    assert_equal "I like, star wars I, II, III! #tretaHasBeanPlanted", SWGEM.hi("ruby")
  end
end
