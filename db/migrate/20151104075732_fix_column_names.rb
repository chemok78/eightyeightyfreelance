class FixColumnNames < ActiveRecord::Migration
  def change
    rename_column :jobs, :place, :city
    rename_column :jobs, :function, :job_title
    rename_column :jobs, :educationlevel, :education_level
    rename_column :jobs, :yearsexperience, :years_experience
    rename_column :jobs, :field1, :business_field1
    rename_column :jobs, :field2, :business_field2
    rename_column :jobs, :hourlyrate, :hourly_rate
  end
end
