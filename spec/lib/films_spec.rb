require 'spec_helper'
require 'pry'

describe SWGEM::Films do
  describe "Status" do
    it 'return 200 OK' do
       expect(SWGEM.api_status).to be(200)
    end
  end
  describe "Films" do
    it '.films return all films' do
       films = SWGEM.films
       films.each do |film|
	expect(film.empty?).to_not be(true)
       end
    end
  end

end
