class ChoiceController < ApplicationController
  def index
    @left_character = {id:1, name:"ロナウド"}
    @right_character = {id:2, name:"ロッベン"}
    @question = {id:1, content:"ドリブルスピード速いのはどっち？"}
  end
  def choice
    characters = [{id:1,name:"ロナウド"} ,{id:2,name:"ロッベン"}]
    current_question_id = 1
    elected = characters.sample
logger.debug( elected )
    render :json => { :name => elected[:name], :character_id => elected[:id], :question_id => current_question_id }
  end
end
