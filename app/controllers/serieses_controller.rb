class SeriesesController < ApplicationController
  def new
    @seriese = Seriese.new
  end
  
  def index
    @serieses = Seriese.all
  end

  def show
    @seriese = Seriese.find_by(name: params[:id])
    @lists = List.where(name: @seriese.name)
  end

  private

  def html_safe_newline(str)
    h(str).gsub(/\n|\r|\r\n/, "<br>").html_safe
  end
end