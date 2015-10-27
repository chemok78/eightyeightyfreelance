class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :description
      t.string :place
      t.integer :length
      t.string :function
      t.string :company
      t.string :educationlevel
      t.integer :yearsexperience
      t.string :field1
      t.string :field2
      t.integer :hourlyrate
      t.string :region
      t.string :field2

      t.timestamps null: false
    end
  end
end
