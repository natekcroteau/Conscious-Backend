class FreewritesController < ApplicationController

  def index
    @freewrites = Freewrite.all
    render.json: @freewrites
  end

end
