class AddTermsOfServiceToFreelancers < ActiveRecord::Migration
  def change
    add_column :freelancers, :terms_of_service, :boolean
  end
end
