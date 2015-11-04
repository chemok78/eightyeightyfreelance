class AddLengthToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :project_length, :date
  end
end
