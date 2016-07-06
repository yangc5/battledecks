class TournamentsController < ApplicationController
  def new
    @tournament = Tournament.new
  end

  def create
    @tournament=Tournament.new(tournament_params)
    if @tournament.save
      redirect_to @tournament
    else
      render :new
    end
  end

  private
    def tournament_params
      params.require(:tournament).permit(:name)
    end


end
