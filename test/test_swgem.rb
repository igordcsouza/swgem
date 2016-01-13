require 'minitest/autorun'
require 'swgem'

class SWGEMTest < Minitest::Test

  def test_v1_connect
    assert_equal 200, SWGEM.api_status
  end

  def test_films_request
    assert_operator 1, :<=, SWGEM.films["count"]
  end

  def test_film_by_id
    assert_operator 1, :<=, SWGEM.films_by_id(1).count
  end

  def test_film_by_wrong_id
    assert_operator 0, :<=, SWGEM.films_by_id(99).count
  end

end
