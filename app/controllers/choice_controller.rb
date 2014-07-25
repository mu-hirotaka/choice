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
    quest_id = params[:qid]
    character_id = params[:cid]
    character_summary = CharacterSummary.find_or_initialize_by(quest_id: quest_id, character_id: character_id)
    character_summary.selected_count = character_summary.selected_count + 1
    character_summary.save
    @summaries = CharacterSummary.where('quest_id = ?', quest_id).order('selected_count desc')
    @chara_info = {}
    Character.where('quest_id = ?', quest_id).map { |character| @chara_info[character.character_id] = character.name }
    @character = Character.where('quest_id = ? AND character_id = ?', quest_id, character_id).first
  end
  def show_others
    quest_id = params[:qid]
    @summaries = CharacterSummary.where('quest_id = ?', quest_id).order('selected_count desc')
    @chara_info = {}
    Character.where('quest_id = ?', quest_id).map { |character| @chara_info[character.character_id] = character.name }
  end
end
