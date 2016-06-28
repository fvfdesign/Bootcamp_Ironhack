class AddDescriptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :description, :string
    add_column :projects, :text, :string
  end
end
