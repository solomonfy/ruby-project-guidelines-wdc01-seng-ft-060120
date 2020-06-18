class Student < ActiveRecord::Base
  
  has_many :stud_love_languages
  has_many :love_languages, through: :stud_love_languages
  belongs_to :personality

  def self.have_siblings
    have_siblings = Student.where(siblings: true)
    puts "Students who have siblings are:"
    puts have_siblings.map {|a| "#{a.first_name} #{a.last_name}"}.join (", ")
  end

  def self.have_no_siblings
    no_siblings = Student.where(siblings: false)
    puts "Students who have no siblings are:"
    puts no_siblings.map {|a| "#{a.first_name} #{a.last_name}"}.join (", ")
  end

  def self.have_pets_object
    # puts "Students who have pets are:"
    Student.where(pets: true)
  end

  def self.have_pets_string
    puts "Students who have pets are:"
    puts Student.have_pets_object.map {|a| "#{a.first_name} #{a.last_name}"}.join (", ")
  end

  def self.have_no_pets_object
    Student.where(pets: false)
  end

  def self.have_no_pets_string
    puts "Students who have no pets are:"
    puts Student.have_no_pets_object.map {|a| "#{a.first_name} #{a.last_name}"}.join (", ")
  end

  def self.pets_majority
    ans = Student.have_pets_object.count <=> Student.have_no_pets_object.count
      if ans == -1
        p "There are more students without pets!"
      elsif ans == 0
        p "Students with AND without pets is the same!"
      elsif ans == 1
        p "There are more students who have pets!"
      end
  end
  
  


end
