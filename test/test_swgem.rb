require 'minitest/autorun'
require 'swgem'

class SWGEMTest < Minitest::Test
  def test_portuguese_hi
    assert_equal "Eu gosto de star wars I,II,III! #tretaFoiPlantada", SWGEM.hi("portuguese")
  end


  def test_any_hi
    assert_equal "I like, star wars I, II, III! #tretaHasBeanPlanted", SWGEM.hi("ruby")
  end

  def test_v1_connect
    assert_equal 200, SWGEM.api_status
  end

  def test_films_request
    assert_operator 1, :<=, SWGEM.films["count"]
  end
end
