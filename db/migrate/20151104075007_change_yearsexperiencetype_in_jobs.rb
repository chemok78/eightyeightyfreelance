class ChangeYearsexperiencetypeInJobs < ActiveRecord::Migration
  def up 
    change_column :jobs, :yearsexperience, :string
  end
  
  def down
    change_column :jobs, :yearsexperience, :integer
  end
end
