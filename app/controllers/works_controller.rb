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
    @work = Work.find_by(name: params[:id])
    @lists = List.where(work_name: @work.name)
  end
end
