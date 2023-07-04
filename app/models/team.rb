class Team < ApplicationRecord
  def self.getTeamInfo
    teams = Team.select('teams.id as id', 'projects.name as name', 'vpms.name as vpm_name', :picture)
      .joins('LEFT JOIN projects ON projects.id = teams.project_id')
      .joins('LEFT JOIN vpms ON vpms.id = projects.vpm_id')
  end

  def self.getTeamDetail(id)
    team = Team.select('teams.id as id', 'projects.name as name', :alert, :organization_chart, :operation_alert)
      .joins('LEFT JOIN projects ON projects.id = teams.project_id')
      .where('teams.id = :id', id: id)
  end
end
