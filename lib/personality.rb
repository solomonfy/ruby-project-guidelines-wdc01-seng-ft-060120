class Personality < ActiveRecord::Base
  has_many :students

  def self.most_common_personality
    common_personality = Student.group(:personality_id).order(Arel.sql('count(personality_id) desc')).limit(3).pluck(:personality_id)
    common_pers_name = Personality.find(common_personality).pluck(:personality_name).join(", ")
      puts "The most common personalities are:"
      # puts ""
      puts "#{common_pers_name}"

  end

  
  def self.least_common_personality
    rare_personality = Student.group(:personality_id).order(Arel.sql('count(personality_id) asc')).limit(3).pluck(:personality_id)
    rare_pers_name = Personality.find(rare_personality).pluck(:personality_name).join(", ")
    puts "The least common personalities are:" 
    puts "#{rare_pers_name}"
  end

end

