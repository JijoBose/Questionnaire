class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy
  belongs_to :user
  validates :name, presence: true
end
