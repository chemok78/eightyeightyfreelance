class Freelancer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :gender, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :street_name, presence: true
  validates :house_number, presence: true, numericality: { only_integer: true } 
  validates :postal_code, presence: true, numericality: { only_integer: true }
  validates :city, presence: true
  validates :region, presence: true
  validates :phone, numericality: { only_integer: true }, allow_blank: true
  validates :profession, presence: true
  validates :terms_of_service, :acceptance => {:accept => true}
end
