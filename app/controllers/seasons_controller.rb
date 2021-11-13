class SeasonsController < ApplicationController
  def show
    @works = Work.all
    @serieses = Seriese.all
    @seasons = Season.all
    @season = Season.find_by(name: params[:id])
    @lists = List.where(name: @season.name)
  end
end
