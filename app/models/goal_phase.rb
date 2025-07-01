class GoalPhase < ApplicationRecord
  belongs_to :goal

  validates :phase_number, :title, presence: true
end
