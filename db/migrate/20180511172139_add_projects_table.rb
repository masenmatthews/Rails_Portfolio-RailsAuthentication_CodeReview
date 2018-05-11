class AddProjectsTable < ActiveRecord::Migration[5.2]
    def change
      create_table :projects do |t|
        t.column :project_title, :string
        t.column :project_description, :string
        t.column :link, :string

        t.timestamps
      end
    end
  end
