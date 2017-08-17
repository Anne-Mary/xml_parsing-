require_relative'spec_helper'

describe "save guiseppe's restaurant" do 

	before(:all) do 
		@menu = Nokogiri::XML(open('./bakery_xml.xml')) #Created a variable called menu, that should have the module and call it Nokogiri and open the bakery_xml.xml file
	end

	it "should not have any menu items with calories over 1000" do
		@menu.xpath('//calories').each do |calorie| #xpath basically means that in the file go to the "calories" tag 
			expect(calorie.text.to_i).to be < 1000	
		end

	end

	it "should not have any price over £8" do
		@menu.xpath('//price').each do |price| 
			expect(price.text.gsub("£","").to_f).to be <= 8.00
		end
	end

	it"should have the homestyle breakfast as the most expensive item on the menu" do
		@menu.xpath('//price').each do |price|
			expect(price.text.gsub("£","").to_f).to be < 6.95 #This is not dynamic, if price was to change, homestyle breakfast might not be the most exp meal on the menu
		end
	end

	# it" all waffle items must have two waffles stated in the item desciption" do
	# 	@menu.xpath('//description').each do |description|
	# 		expect(price)
	# 	end
	# end
end
		