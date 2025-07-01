class Goal < ApplicationRecord
  belongs_to :user
  has_many :goal_phases, dependent: :destroy
  has_many :habits, dependent: :destroy

  validates :identity_statement, :why_it_matters, :success_definition, :time_commitment_minutes, :current_level, presence: true
end
