class Habit < ApplicationRecord
  belongs_to :goal
  has_many :habit_logs, dependent: :destroy

  validates :title, presence: true
end
