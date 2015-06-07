class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :id_asana
      t.integer :business_id

      t.timestamps null: false
    end
  end
end
