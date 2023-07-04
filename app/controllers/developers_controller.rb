class DevelopersController < ApplicationController
  def getDevInfo
    devs = Developer.all
    render json: devs
  end

  def getDevDetail
    dev = Developer.find(params[:id])
    render json: dev
  end

  def getTeamDev
    dev = Developer.where(['team_id = ?', params[:id]]).order('id ASC')
    render json: dev
  end
end
