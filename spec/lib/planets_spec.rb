require 'spec_helper'

describe SWGEM::Planets do
  describe "Status" do
    it 'return 200 OK' do
      planet = SWGEM::Planets.new
      expect(planet.validate_api_status).to be(200)
    end
  end

  describe "planets" do
    it '.planets return all planets' do
       planets = SWGEM::Planets.new
       planets.all.each do |planet|
	expect(planet.empty?).to_not be(true)
       end
    end
    
   it 'return a planet by id' do
      planets = SWGEM::Planets.new
      expect(planets.by_id(1).empty?).to_not be(true)
   end
  
   it 'return null for a wrong id' do
      planets = SWGEM::Planets.new
      result = planets.by_id(9999)
      expect(result["detail"]).to eq("Not found")
   end
   
  end

end
