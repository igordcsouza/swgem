require 'spec_helper'
require 'pry'

describe SWGEM::Films do
  describe "Status" do
    it 'return 200 OK' do
      film = SWGEM::Films.new
      expect(film.validate_api_status).to be(200)
    end
  end

  describe "Films" do
    it '.films return all films' do
       films = SWGEM::Films.new
       films.all.each do |film|
	expect(film.empty?).to_not be(true)
       end
    end
    
   it 'return a film by id' do
      films = SWGEM::Films.new
      expect(films.by_id(1).empty?).to_not be(true)
   end
  
  it 'return the film by your episode_id' do
      films = SWGEM::Films.new
      film = films.by_episode(4)
      expect(film["episode_id"]).to be(4)
  end


   it 'return null for a wrong id' do
      films = SWGEM::Films.new
      result = films.by_id(9999)
      expect(result["detail"]).to eq("Not found")
   end

  end

end
