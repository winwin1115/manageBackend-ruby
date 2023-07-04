class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :desc, null: true
      t.integer :vpm_id, null: false
      t.integer :team_id, null: false
      t.integer :mission_type, null: false
      t.integer :sprint_progress, default: 1, null: false
      t.integer :num_docs, default: 0, null: false
      t.integer :num_plan, default: 0, null: false
      t.integer :num_review, default: 0, null: false
      t.integer :num_retrospect, default: 0, null: false
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
