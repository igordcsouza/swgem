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

  describe "Planets.search()" do
    it 'return all movies with the string pass as argument in the title' do
      arg = ["Alderaan", "raan", "Rodia", "io", "asdasad"]
      planets = SWGEM::Planets.new
      str = arg.sample
      planets.search(str).each do |planet|
        expect(planet["name"].downcase.include?(str.downcase)).to be(true)
      end
    end
  end

end
