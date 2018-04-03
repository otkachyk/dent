class Card < ApplicationRecord
  has_many :appointments
  has_many :notes, dependent: :destroy
  has_many :users, through: :appointments
  validates :f_name, :l_name, :birthday, :gender, presence: :true
end
