class CreateCharacterSummaries < ActiveRecord::Migration
  def change
    create_table :character_summaries do |t|
      t.integer :quest_id, null: false
      t.integer :character_id, null: false
      t.integer :selcted_count, null: false, default: 0
      t.timestamps
    end
  end
end
