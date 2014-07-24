class ChoiceController < ApplicationController
  def index
    @quest = QuestMaster.first
    all_characters = Character.where(:quest_id => @quest.id).map { |character| character }
    all_characters.shuffle!
    @left_character = all_characters.pop
    @right_character = all_characters.pop
  end
  def choice
    characters = [{id:1,name:"ロナウド"} ,{id:2,name:"ロッベン"}]
    quest = QuestMaster.first
    elected = characters.sample
logger.debug( elected )
    render :json => { :name => elected[:name], :character_id => elected[:id], :quest_id => quest.id }
  end
end
