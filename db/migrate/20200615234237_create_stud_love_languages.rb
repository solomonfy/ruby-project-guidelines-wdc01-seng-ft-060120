class CreateStudLoveLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :stud_love_languages do |t|
      t.integer :student_id
      t.integer :love_language_id
      t.string :type
  end
end
end
