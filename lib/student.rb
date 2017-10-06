class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    students_array = [@name,@location,@twitter,@linkedin,@github,@blog,@profile_quote,@bio,@profile_url]
    students_array.each do |attribute|
      if student_hash.has_key?(attribute)
        attribute = student_hash[attribute]
      end
    end
    puts @name

  end

  def self.create_from_collection(students_array)

  end

  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end
