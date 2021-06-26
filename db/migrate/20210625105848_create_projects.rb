class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.datetime :date
      t.string :url

      t.timestamps
    end
  end
end
