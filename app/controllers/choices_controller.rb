class ChoicesController < ApplicationController
  before_action :find_value
   skip_before_action :require_user, only: [:index, :show]
  #before_action :require_user, only: [:index, :show, :update, :delete]

  def index
    @values = Value.all
  end

  def new
    @choice = Choice.new
    @values = Value.all
  end



  def create
    choice_params = params.require(:value)
    @choice = @value.choices.new(choice_params)
    @choice.user = current_user
    if @choice.save
      redirect_to @choice, notice: "Good choice!"
    else
      render "new"
    end
  end

 def find_value
    @value = Value.find_by(id: params["value_id"])
  end

end













  