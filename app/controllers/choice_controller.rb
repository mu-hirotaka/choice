class ChoiceController < ApplicationController
  def index
    @left_character = {id:1, name:"ロナウド"}
    @right_character = {id:2, name:"ロッベン"}
    @question = QuestMaster.first
  end
  def choice
    characters = [{id:1,name:"ロナウド"} ,{id:2,name:"ロッベン"}]
    question = QuestMaster.first
    elected = characters.sample
logger.debug( elected )
    render :json => { :name => elected[:name], :character_id => elected[:id], :question_id => question.id }
  end
end
