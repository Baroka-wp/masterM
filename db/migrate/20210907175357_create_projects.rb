class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :statut
      t.date :start
      t.date :deadline
      t.text :description

      t.timestamps
    end
  end
end
