class Student < ActiveRecord::Base
  
  has_many :stud_love_languages
  has_many :love_languages, through: :stud_love_languages
  belongs_to :personality

  def have_pets

  end

end
