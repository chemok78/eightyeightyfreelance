class AddLastnameToFreelancers < ActiveRecord::Migration
  def change
    add_column :freelancers, :last_name, :string
  end
end
