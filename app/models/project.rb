class Project < ApplicationRecord
  def self.getDashInfo
    projects = Project.select(:id, :name, :desc, :mission_type, :team_id, :sprint_progress, 'vpms.name as vpm_name', :picture, :team_operation_rate, :team_score)
      .joins('LEFT JOIN vpms ON vpms.id = projects.vpm_id')
      .joins('LEFT JOIN sprints ON sprints.num_sprint = projects.sprint_progress')
  end

  def self.getProjectDetail(id)
    project = Project.select(:id, :name, :desc, :mission_type, 'vpms.name as vpm_name', :picture, :sprint_progress, :num_docs, :num_plan, :num_review, :num_retrospect, :excess_cause_bug, :excess_cause_technical, :excess_cause_middle, :excess_cause_support, :excess_cause_business, :excess_cause_emergency, :excess_cause_communication, :excess_cause_outside)
      .joins('LEFT JOIN vpms ON vpms.id = projects.vpm_id')
      .where('projects.id = :id', id: id)
  end

  def self.getSprintNow
    sprint = Project.select('sprints.num_sprint', 'sprints.num_ticket', 'sprints.num_emergency', 'sprints.num_done', 'sprints.num_improvement')
      .joins('LEFT JOIN sprints ON sprints.num_sprint = projects.sprint_progress')
      .where('projects.id = 1')
  end
end
