require 'spec_helper'
require 'pry'

describe SWGEM::Starships do
  describe "Status" do
    it 'return 200 OK' do
      starship = SWGEM::Starships.new
      expect(starship.validate_api_status).to be(200)
    end
  end

  describe "Starships" do
    it '.starships return all starships' do
       starships = SWGEM::Starships.new
       starships.all.each do |starship|
	expect(starship.empty?).to_not be(true)
       end
    end
    
   it 'return a starship by id' do
      starships = SWGEM::Starships.new
      expect(starships.by_id(1).empty?).to_not be(true)
   end
  
   it 'return null for a wrong id' do
      starships = SWGEM::Starships.new
      result = starships.by_id(9999)
      expect(result["detail"]).to eq("Not found")
   end
   
  end

  describe "Starship.search()" do
    it 'return all movies with the string pass as argument in the title' do
      arg = ["corvette", "landing", "Millennium", "falcon", "Executor" , "asdajdhjaskdn"]
      starships = SWGEM::Starships.new
      str = arg.sample
      starships.search(str).each do |starship|
        expect(starship["name"].downcase.include?(str.downcase)).to be(true)
      end
    end
  end

end
