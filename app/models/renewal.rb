class Renewal < ApplicationRecord
  belongs_to :insurance_policy
  validates :policyno, :begin_date, :expiry_date, presence: true
  
end
