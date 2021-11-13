class WorksController < ApplicationController
  def new
    @work = Work.new
  end
  
  def index
    @works = Work.all
    @serieses = Seriese.all
    @seasons = Season.all
  end

  def show
    @works = Work.all
    @serieses = Seriese.all
    @seasons = Season.all
    @work = Work.find_by(name: params[:id])
    @seriese = Seriese.find_by(name: params[:id])
    @lists = List.where(name: @seriese.name)
    @lists = List.where(name: @work.name)
  end

  private

  def html_safe_newline(str)
    h(str).gsub(/\n|\r|\r\n/, "<br>").html_safe
  end
end
