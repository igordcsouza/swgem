require 'spec_helper'
require 'pry'

describe SWGEM::Vehicles do
  describe "Status" do
    it 'return 200 OK' do
      vehicle = SWGEM::Vehicles.new
      expect(vehicle.validate_api_status).to be(200)
    end
  end

  describe "Vehicles" do
    it '.vehicles return all vehicles' do
       vehicles = SWGEM::Vehicles.new
       vehicles.all.each do |vehicle|
	expect(vehicle.empty?).to_not be(true)
       end
    end
    
   it 'return a vehicle by id' do
      vehicles = SWGEM::Vehicles.new
      expect(vehicles.by_id(1).empty?).to_not be(true)
   end
  
   it 'return null for a wrong id' do
      vehicles = SWGEM::Vehicles.new
      result = vehicles.by_id(9999)
      expect(result["detail"]).to eq("Not found")
   end
   
  end

  describe "Vehicles.search()" do
    it 'return all movies with the string pass as argument in the title' do
      arg = ["Crawler", "asd", "Sand", "and" , "asdajdhjaskdn"]
      vehicles = SWGEM::Vehicles.new
      str = arg.sample
      vehicles.search(str).each do |vehicle|
        expect(
            vehicle["name"].downcase.include?(str.downcase) ||
            vehicle["model"].downcase.include?(str.downcase)
        ).to be(true)
      end
    end
  end

end
