class HabitLog < ApplicationRecord
  belongs_to :habit

  validates :logged_at, :duration_minutes, presence: true
end
