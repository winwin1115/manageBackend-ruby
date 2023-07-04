class ProjectsController < ApplicationController
  def getDashInfo
    projects = Project.getDashInfo
    render json: projects
  end

  def getProjectDetail
    project = Project.getProjectDetail(params[:id])
    render json: project
  end

  def getTotalCount
    info = [Project.count, Team.count, Developer.count]
    render json: info
  end
  
  def getSprintNow
    now_sprint = Project.getSprintNow
    prev_sprint = Sprint.where(['num_sprint = ?', now_sprint[0].num_sprint - 1])
    render json: {
      now_data: now_sprint,
      prev_data: prev_sprint
    }
  end
end
