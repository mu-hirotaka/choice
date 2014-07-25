class WelcomeController < ApplicationController
  def index
    @quest = QuestMaster.first
  end
end
