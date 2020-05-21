require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    learn_students = Nokogiri::HTML(open(index_url))

    students = []

    learn_students.css("div.student-card").each do |student|
      name = student.css(".student-name").text
      location = student.css(".student-location").text
      profile = student.css("a").attribute("href").value
      student_info = {
        :name => name,
        :location => location,
<<<<<<< HEAD
        :profile_url => profile
=======
        :profile => profile
>>>>>>> 0236703dd1824c5da001be3c5bb7645193f4173a
      }
      students << student_info
      end
    students
  end

  def self.scrape_profile_page(profile_url)
<<<<<<< HEAD
    student_profile = Nokogiri::HTML(open(profile_url))

    profile = {}

    container = student_profile.css(".social-icon-container a").collect{|icon| icon.attribute("href").value}
    container.each do |link|
      if link.include?("twitter")
        profile[:twitter] = link
      elsif link.include?("linkedin")
        profile[:linkedin] = link
      elsif link.include?("github")
        profile[:github] = link
      elsif link.include?(".com")
        profile[:blog] = link
      end
    end
    profile[:profile_quote] = student_profile.css(".vitals-container .vitals-text-container .profile-quote").text
    profile[:bio] = student_profile.css("div.description-holder p").text
    profile
  end
=======
  #  html = File.read('https://learn-co-curriculum.github.io/student-scraper-test-page/')

  end

>>>>>>> 0236703dd1824c5da001be3c5bb7645193f4173a
end
