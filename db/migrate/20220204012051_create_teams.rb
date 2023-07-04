class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.integer :project_id, null: false
      t.string :organization_chart, null: false
      t.string :operation_alert, null: false
      t.string :alert, null: false
      t.timestamps
    end
  end
end
