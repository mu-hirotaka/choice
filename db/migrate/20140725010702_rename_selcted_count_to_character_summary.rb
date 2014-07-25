class RenameSelctedCountToCharacterSummary < ActiveRecord::Migration
  def change
    rename_column :character_summaries, :selcted_count, :selected_count
  end
end
