class SprintsController < ApplicationController
  def getProjectSprint
    sprint = Sprint.where(['project_id = ?', params[:id]]).order('num_sprint ASC')
    render json: sprint
  end

  def getSprintButton
    now_sprint = Sprint.where(['num_sprint = ?', params[:id]])
    prev_sprint = Sprint.where(['num_sprint = ?', now_sprint[0].num_sprint - 1])
    render json: {
      now_data: now_sprint,
      prev_data: prev_sprint
    }
  end

  def getSprintPr
    project_id = Sprint.getProjectId(params[:id])
    sprint_pr = Sprint.getSprintPr(project_id[0].project_id)
    render json: sprint_pr
  end
end
