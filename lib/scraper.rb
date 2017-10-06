require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    people = []
    #binding.pry
    #doc.css(".student-name").first.text
    #doc.css(".student-location").first.text
    #doc.css("div.student-card a").attribute("href").value
    doc.css(".student-card").each do |person|

      people << {
          :name => person.css(".student-name").text,
          :location => person.css(".student-location").text,
          :profile_url => person.css("a").attribute("href").value
        }
    end
    people

  end

  def self.scrape_profile_page(profile_url)
    doc = Nokogiri::HTML(open(profile_url))
    student_bio = []
    twitter = ""
    linkedin = ""
    github = ""
    blog = ""
    temp_string
    #binding.pry
    #doc.css(".vitals-text-container .profile-name").text
    #doc.css(".social-icon-container a img").attribute("src").value
    doc.css(".social-icon").each do |person|
      temp_string = person.css("a")


      binding.pry
    end

  end
end
