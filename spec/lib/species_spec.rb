require 'spec_helper'
require 'pry'

describe SWGEM::Species do
  describe "Status" do
    it 'return 200 OK' do
      specie = SWGEM::Species.new
      expect(specie.validate_api_status).to be(200)
    end
  end

  describe "Species" do
    it '.species return all species' do
       species = SWGEM::Species.new
       species.all.each do |specie|
	expect(specie.empty?).to_not be(true)
       end
    end
    
   it 'return a specie by id' do
      species = SWGEM::Species.new
      expect(species.by_id(1).empty?).to_not be(true)
   end
  
   it 'return null for a wrong id' do
      species = SWGEM::Species.new
      result = species.by_id(9999)
      expect(result["detail"]).to eq("Not found")
   end
   
  end

end
