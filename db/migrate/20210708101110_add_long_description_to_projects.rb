class AddLongDescriptionToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :long_description, :string
  end
end
