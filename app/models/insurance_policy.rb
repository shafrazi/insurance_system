class InsurancePolicy < ApplicationRecord
  belongs_to :customer
  has_many :renewals, dependent: :destroy, inverse_of: :insurance_policy
  accepts_nested_attributes_for :renewals, reject_if: :all_blank, allow_destroy: true
  validates :policyno, :insurer, :value, :insurance_type, :current_expiry, :customer_id, presence: true


end
