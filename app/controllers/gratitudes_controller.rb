class GratitudesController < ApplicationController

  def index
    @gratitudes = Gratitude.all
    render.json: @gratitudes
  end

end
