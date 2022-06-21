require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

doc.css(".heading-financier").text.strip

#iterating over elements
courses = doc.css(".card-link")
courses.each do |course|
    puts course.text.strip
end

