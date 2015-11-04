class EmployerregistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:employer).permit(:company_name, :street_name, :house_number, :postal_code, :city, :region, :phone, :gender, :first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:employer).permit(:company_name, :street_name, :house_number, :postal_code, :city, :region, :phone, :gender, :first_name, :last_name, :email, :password, :password_confirmation)
  end
  
end

