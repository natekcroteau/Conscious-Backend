class FreewritesController < ApplicationController


  def index
    @freewrites = Freewrite.all
    render json: @freewrites
  end

  def create 
    @freewrite = Freewrite.create(freewrite_params)
    render json: @freewrite
  end

private

  def freewrite_params
    params.require(:freewrites).permit(:date, :entry, :user_id)
  end


end

