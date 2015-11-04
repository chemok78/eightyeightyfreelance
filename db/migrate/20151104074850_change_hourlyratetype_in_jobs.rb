class ChangeHourlyratetypeInJobs < ActiveRecord::Migration
  
  def up 
    change_column :jobs, :hourlyrate, :string
  end
  
  def down
    change_column :jobs, :hourlyrate, :integer
  end
  
end
