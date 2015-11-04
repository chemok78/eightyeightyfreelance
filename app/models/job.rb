class Job < ActiveRecord::Base
    belongs_to :employer
    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates :job_title, presence: true
  validates :description, presence: true
  validates :education_level, presence: true
  validates :years_experience, presence: true
  validates :business_field1, presence: true
  validates :region, presence: true
  validates :hourly_rate, presence: true
  validates :city, presence: true
end
