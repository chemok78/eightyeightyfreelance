class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:freelancer).permit(:gender, :first_name, :last_name, :street_name, :house_number, :postal_code, :city, :region, :phone, :profession, :terms_of_service, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:freelancer).permit(:gender, :first_name, :last_name, :street_name, :house_number, :postal_code, :city, :region, :phone, :profession, :terms_of_service, :email, :password, :password_confirmation)
  end
  
  def sign_up_params
    params.require(:employer).permit(:company_name, :street_name, :house_number, :postal_code, :city, :region, :phone, :gender, :first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:employer).permit(:company_name, :street_name, :house_number, :postal_code, :city, :region, :phone, :gender, :first_name, :last_name, :email, :password, :password_confirmation)
  end
end