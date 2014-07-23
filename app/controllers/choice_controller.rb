class ChoiceController < ApplicationController
  def index

  end
  def choice
    render :json => { :name => params[:name], :id => params[:id] }
  end
end
