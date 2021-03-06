class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :deal
  validates :user_id, presence: true
  validates :amount, presence: true
  enum status: %i[not_received received invested cancelled refunded]
end
