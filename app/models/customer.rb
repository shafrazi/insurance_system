class Customer < ApplicationRecord
  has_many :insurance_policies, dependent: :destroy
end
