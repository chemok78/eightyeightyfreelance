class AddInfoToFreelancers < ActiveRecord::Migration
  def change
    add_column :freelancers, :gender, :string, :default => 'Sir'
    add_column :freelancers, :first_name, :string
    add_column :freelancers, :street_name, :string
    add_column :freelancers, :house_number, :integer
    add_column :freelancers, :postal_code, :integer
    add_column :freelancers, :city, :string
    add_column :freelancers, :region, :string
    add_column :freelancers, :phone, :integer
    add_column :freelancers, :profession, :string
  end
end
