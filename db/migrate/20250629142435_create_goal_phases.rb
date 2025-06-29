class CreateGoalPhases < ActiveRecord::Migration[7.1]
  def change
    create_table :goal_phases do |t|
      t.references :goal, null: false, foreign_key: true
      t.integer :phase_number
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
