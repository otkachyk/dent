class Appointment < ApplicationRecord
validates :user_id, :card_id, presence: :true
belongs_to :user
belongs_to :card
end
