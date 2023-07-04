class DevsprintsController < ApplicationController
  def getDevRate
    dev_rate = Devsprint.getDevRate(params[:id])
    render json: dev_rate
  end
end
