class GratitudesController < ApplicationController

  def index
    @gratitudes = Gratitude.all
    render json: @gratitudes
  end

  def create 
    @gratitude = Gratitude.create(gratitude_params)
    render json: @gratitude
  end

private

  def gratitude_params
    params.require(:gratitudes).permit(:date, :user_id, :entry1, :entry2, :entry3, :entry4, :entry5, :entry6,)
  end

end
