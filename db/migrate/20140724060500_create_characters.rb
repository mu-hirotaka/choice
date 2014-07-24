class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :quest_id, null: false
      t.integer :character_id, null: false
      t.string :name, null: false
    end
  end
end
