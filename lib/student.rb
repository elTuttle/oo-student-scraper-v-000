class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    if student_hash.has_key?(:name)
      @name = student_hash[:name]
    end
    if student_hash.has_key?(:location)
      @location = student_hash[:location]
    end
    if student_hash.has_key?(:twitter)
      @twitter = student_hash[:twitter]
    end
    if student_hash.has_key?(:linkedin)
      @linkedin = student_hash[:linkedin]
    end
    if student_hash.has_key?(:github)
      @github = student_hash[:github]
    end
    if student_hash.has_key?(:blog)
      @blog = student_hash[:blog]
    end
    if student_hash.has_key?(:profile_url)
      @profile_url = student_hash[:profile_url]
    end
    if student_hash.has_key?(:bio)
      @bio = student_hash[:bio]
    end
    if student_hash.has_key?(:profile_quote)
      @profile_quote = student_hash[:profile_quote]
    end

  end

  def self.create_from_collection(students_array)

  end

  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end
