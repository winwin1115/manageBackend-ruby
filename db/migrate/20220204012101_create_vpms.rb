class CreateVpms < ActiveRecord::Migration[7.0]
  def change
    create_table :vpms do |t|
      t.string :name, null: false
      t.string :picture, null: false
      t.timestamps
    end
  end
end
