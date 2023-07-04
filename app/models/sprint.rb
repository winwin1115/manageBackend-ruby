class Sprint < ApplicationRecord
  def self.getProjectId(id)
    project_id = Sprint.select(:project_id).where(['num_sprint = ?', id])
  end

  def self.getSprintPr(id)
    sprint_pr = Sprint.where(['project_id = ?', id]).order('num_sprint ASC')
  end
end
