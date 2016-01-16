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
    
   it 'return a film by id' do
      expect(SWGEM.films_by_id(1).empty?).to_not be(true)
   end
  
   it 'return null for a wrong id' do
      result = SWGEM.films_by_id(9999)
      expect(result["detail"]).to eq("Not found")
   end
   
  end

end
