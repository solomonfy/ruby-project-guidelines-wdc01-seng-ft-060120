class LoveLanguage < ActiveRecord::Base
  has_many :stud_love_languages
  has_many :students, through: :stud_love_languages

  def self.most_common_lovelanguage
    common_lovel = StudLoveLanguage.group(:type).group(:love_language_id).order('count(love_language_id) desc').limit(3).pluck(:love_language_id)
    common_lovel_name = LoveLanguage.find(common_lovel).pluck(:name).join(", ")
  end

  def self.least_common_lovelanguage
    rare_lovel = StudLoveLanguage.group(:love_language_id && :type).order('count(love_language_id) asc').limit(3).pluck(:love_language_id)
    rare_lovel_name = LoveLanguage.find(rare_lovel).pluck(:name).join(", ")
  end

end
