class CreateHabitLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :habit_logs do |t|
      t.references :habit, null: false, foreign_key: true
      t.integer :duration_minutes
      t.datetime :logged_at

      t.timestamps
    end
  end
end
