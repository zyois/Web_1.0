class WorksController < ApplicationController
  def new
    @work = Work.new
  end
  
  def index
    @works = Work.all
    @level1_works = Work.where(level: 1)
    @level2_works = Work.where(level: 2)
    @level3_works = Work.where(level: 3)
  end

  def show
    @work = Work.find_by(name: params[:id])
    @lists = List.where(work_name: @work.name)
  end
end
