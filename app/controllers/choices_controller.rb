class ChoicesController < ApplicationController
  before_action :find_value
   skip_before_action :require_user, only: [:index, :show]
  #before_action :require_user, only: [:index, :show, :update, :delete]

  def index
    @values = Value.all
  end

  def show
  # do something with params
  @choices = Choice.current_user.all
  end

  def new
    @choice = Choice.new
    @values = Value.all
  end

  def create
    choice_params = params.require(:choice).permit(:value_id  )
    @choice = Choice.new(choice_params)
    @choice.user = current_user
    if @choice.save
      redirect_to user_path(current_user), notice: "Good choice!"
    else
      render "new"
    end
  end

 def edit
    @choice = Choice.find_by(id: params["id"])
    @values = Value.all
  end

  def update
    #movie_params = params.require(:
    #).permit!
    #@movie = Movie.find_by(id: params["id"])
    #@movie.update(movie_params)
    #if @movie.valid?
     # redirect_to movies_path
    #else
     # render text: "FAIL"
    #end
  end

 def find_value
   @value = Value.find_by(id: params["value_id"])
  end




end










  