class WorksController < ApplicationController
  def index
    @works = Work
  end
  
  def show
    @work = Work.find_by(work_name: 'yorimoi')
    @lists = @work.lists
  end
end
