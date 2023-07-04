Rails.application.routes.draw do
  # Dashboard Page
  get 'dash-info', to: 'projects#getDashInfo'
  get 'dash-total', to: 'projects#getTotalCount'

  # Project Page
  get 'project-detail/:id', to: 'projects#getProjectDetail'
  get 'project-sprint/:id', to: 'sprints#getProjectSprint'

  # Team Page
  get 'team-info', to: 'teams#getTeamInfo'
  get 'team-detail/:id', to: 'teams#getTeamDetail'
  get 'team-dev/:id', to: 'developers#getTeamDev'

  # Dev Page
  get 'dev-info', to: 'developers#getDevInfo'
  get 'dev-detail/:id', to: 'developers#getDevDetail'
  get 'dev-rate/:id', to: 'devsprints#getDevRate'

  # Sprint Page
  get 'sprint-now', to: 'projects#getSprintNow'
  get 'sprint-button/:id', to: 'sprints#getSprintButton'
  get 'sprint-pr/:id', to: 'sprints#getSprintPr'
end
