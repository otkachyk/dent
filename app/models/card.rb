class Card < ApplicationRecord
  validates :f_name, :l_name, :birthday, :gender, presence: :true
end
