class CreateLoveLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :love_languages do |t|
      t.string :name
      t.string :description
  end
end
end
