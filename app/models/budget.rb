class Budget < ApplicationRecord
  belongs_to :wallet

  enum time_period: [:monthly, :weekly, :daily]
end
