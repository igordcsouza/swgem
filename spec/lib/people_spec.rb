require 'spec_helper'
require 'pry'


describe SWGEM::People do
 describe "status" do
  it "200 ok" do
    people = SWGEM::People.new
    expect(people.validate_api_status).to be(200)
  end
 end
 
 describe "get all" do
  it "return the firsts people" do 
    people = SWGEM::People.new
     people.all.each do |p|
      expect(p.empty?).to_not be(true)
     end
  end
 end

 describe "People.search()" do
   it 'return all movies with the string pass as argument in the title' do
     arg = ["r2", "d2", "yoda", "luke"]
     people = SWGEM::People.new
     str = arg.sample
     people.search(str).each do |p|
       expect(p["name"].downcase.include?(str.downcase)).to be(true)
     end
   end
 end
end
