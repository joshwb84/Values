class ValuesController < ApplicationController
  skip_before_action :require_user, only: [:index, :show]

  def index
    @values = Value.all
  end

  def show
    @value = Value.find_by(id: params["id"])
    @choice = @value.choices
  end

  def edit
    #@movie = Movie.find_by(id: params["id"])
  end

  def update
    #movie_params = params.require(:movie).permit!
    #@movie = Movie.find_by(id: params["id"])
    #@movie.update(movie_params)
    #if @movie.valid?
     # redirect_to movies_path
    #else
     # render text: "FAIL"
    #end
  end

  def destroy
    #@movie = Movie.find_by(id: params["id"])
    #@movie.destroy
    #redirect_to movies_path
  end

end