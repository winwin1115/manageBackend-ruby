class TeamsController < ApplicationController
  def getTeamInfo
    teams = Team.getTeamInfo
    render json: teams
  end

  def getTeamDetail
    team = Team.getTeamDetail(params[:id])
    render json: team
  end
end
