class ChoiceController < ApplicationController
  def index
    @quest = QuestMaster.first
    all_characters = Character.where(:quest_id => @quest.id).map { |character| character }
    all_characters.shuffle!
    @left_character = all_characters.pop
    @right_character = all_characters.pop
  end
  def choice
    quest = QuestMaster.first
    all_characters = Character.where(:quest_id => quest.id).map { |character| character }
    candidates = all_characters.select {|character| character.character_id != params[:l_character_id].to_i && character.character_id != params[:r_character_id].to_i }
    elected = candidates.sample
    render :json => { :name => elected.name, :character_id => elected.character_id, :quest_id => quest.id }
  end
  def done
    @character = Character.where('quest_id = ? AND character_id = ?', params[:qid], params[:cid]).sample
  end
end
