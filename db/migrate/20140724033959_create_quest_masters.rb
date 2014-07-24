class CreateQuestMasters < ActiveRecord::Migration
  def change
    create_table :quest_masters do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.integer :opened_at, null: false
      t.integer :closed_at, null: false
      t.timestamps
    end
  end
end
