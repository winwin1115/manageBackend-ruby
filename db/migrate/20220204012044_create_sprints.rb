class CreateSprints < ActiveRecord::Migration[7.0]
  def change
    create_table :sprints do |t|
      t.integer :project_id, null: false
      t.integer :num_sprint, default: 1, null: false
      t.integer :num_backlog, default: 0, null: false
      t.integer :num_ticket, default: 0, null: false
      t.integer :num_done, default: 0, null: false
      t.integer :num_push, default: 0, null: false
      t.integer :num_pr, default: 0, null: false
      t.integer :num_release, default: 0, null: false
      t.integer :num_debt, default: 0, null: false
      t.integer :num_communication, default: 0, null: false
      t.integer :num_emergency, default: 0, null: false
      t.integer :num_improvement, default: 0, null: false
      t.integer :team_score, default: 0, null: false
      t.decimal :team_operation_rate, :precision => 10, :scale => 2, null: false
      t.string :schedule_alert, null: true
      t.decimal :excess_cause_bug, :precision => 10, :scale => 2, null: false
      t.decimal :excess_cause_technical, :precision => 10, :scale => 2, null: false
      t.decimal :excess_cause_middle, :precision => 10, :scale => 2, null: false
      t.decimal :excess_cause_support, :precision => 10, :scale => 2, null: false
      t.decimal :excess_cause_business, :precision => 10, :scale => 2, null: false
      t.decimal :excess_cause_emergency, :precision => 10, :scale => 2, null: false
      t.decimal :excess_cause_communication, :precision => 10, :scale => 2, null: false
      t.decimal :excess_cause_outside, :precision => 10, :scale => 2, null: false
      t.timestamps
    end
  end
end
