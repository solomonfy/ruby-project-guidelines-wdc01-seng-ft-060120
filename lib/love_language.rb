class LoveLanguage < ActiveRecord::Base
  has_many :stud_love_languages
  has_many :students, through: :stud_love_languages

  def self.most_common_lovelanguage(give_get)
    if_cond = if give_get.downcase == "Give".downcase || "Get".downcase
    common_lovel = StudLoveLanguage.where(type: give_get).group(:type).group(:love_language_id).order('count(love_language_id) desc').limit(3).pluck(:love_language_id)
    common_lovel_name = LoveLanguage.find(common_lovel).pluck(:name).join(", ")
    else
      try_again = "Try again!"
      puts try_again
    end
    if_cond
  end

  def self.least_common_lovelanguage(give_get)
    if give_get.downcase == "Give".downcase || "Get".downcase
      rare_lovel = StudLoveLanguage.where(type: give_get).group(:type).group(:love_language_id).order(love_language_id_count: :asc).limit(3).pluck(:love_language_id)
      rare_lovel_name = LoveLanguage.find(rare_lovel).pluck(:name).join(", ")
    end
  end

end
