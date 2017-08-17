require 'nokogiri'

doc = Nokogiri::XML(open('./bakery_xml.xml')) #not using this at this time

#puts doc #By doing this it will display everything on baker_xml.xml file, good way to see if its linked
#XML PARSING !!
#puts doc.xpath(('//name')).first #Prints out name
#puts doc.xpath(('//name')).last

#puts doc.search('price').#Prints out all the price
#puts doc.search('price').length #The amount of prices on the menu
#puts doc.search(('name')).first

# doc.search('price').each do |x|
# 	puts x.text.gsub('£','').to_f
# end

#Using http://www.rubydoc.info/github/sparklemotion/nokogiri/Nokogiri/XML << using this to help



doc.xpath('//calories').each do |calorie|
	calorie.text.to_i
end

doc.xpath('//price').each do |price|
	price.text.to_i
end