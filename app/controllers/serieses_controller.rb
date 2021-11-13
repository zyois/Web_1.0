class SeriesesController < ApplicationController
  def show
    @works = Work.all
    @serieses = Seriese.all
    @seasons = Season.all
    @seriese = Seriese.find_by(name: params[:id])
    @lists = List.where(name: @seriese.name)
  end
end