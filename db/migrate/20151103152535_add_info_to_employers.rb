class AddInfoToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :company_name, :string
    add_column :employers, :street_name, :string
    add_column :employers, :house_number, :integer
    add_column :employers, :postal_code, :integer
    add_column :employers, :city, :string
    add_column :employers, :region, :string
    add_column :employers, :phone, :integer
    add_column :employers, :gender, :string
    add_column :employers, :first_name, :string
    add_column :employers, :last_name, :string
    add_column :employers, :terms_of_service, :boolean
  end
end
