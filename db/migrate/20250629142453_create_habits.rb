class CreateHabits < ActiveRecord::Migration[7.1]
  def change
    create_table :habits do |t|
      t.references :goal, null: false, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
