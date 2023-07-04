class CreateDevsprints < ActiveRecord::Migration[7.0]
  def change
    create_table :devsprints do |t|
      t.integer :dev_id, null: false
      t.integer :sprint_id, null: false
      t.decimal :operation_rate, :precision => 10, :scale => 2, null: false
      t.decimal :productivity_rate, :precision => 10, :scale => 2, null: false
      t.integer :num_mension, default: 0, null: false
      t.timestamps
    end
  end
end
