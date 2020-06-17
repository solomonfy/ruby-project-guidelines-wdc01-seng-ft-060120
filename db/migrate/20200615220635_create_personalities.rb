class CreatePersonalities < ActiveRecord::Migration[5.2]
  def change
    create_table :personalities do |t|
      t.string :personality_name
      t.string :personality_code
    end
  end
end
