class CreateDevelopers < ActiveRecord::Migration[7.0]
  def change
    create_table :developers do |t|
      t.integer :team_id, null: false
      t.string :name, null: false
      t.string :skill1_name, null: false
      t.integer :skill1_months, null: false
      t.string :skill2_name, null: false
      t.integer :skill2_months, null: false
      t.string :skill3_name, null: false
      t.integer :skill3_months, null: false
      t.string :skill4_name, null: false
      t.integer :skill4_months, null: false
      t.string :ruby, null: false
      t.string :picture, null: false
      t.string :domain_knowledge, null: true
      t.decimal :skill_score, :precision => 10, :scale => 2, null: false
      t.integer :skill_rader_front, null: false
      t.integer :skill_rader_back, null: false
      t.integer :skill_rader_infra, null: false
      t.integer :skill_rader_mobile, null: false
      t.integer :skill_rader_db, null: false
      t.integer :skill_rader_design, null: false
      t.integer :Influence_rader_reward, null: false
      t.integer :Influence_rader_penalty, null: false
      t.integer :Influence_rader_proper, null: false
      t.integer :influence_rader_charm, null: false
      t.integer :Influence_rader_reference, null: false
      t.integer :Influence_rader_specialty, null: false
      t.timestamps
    end
  end
end
