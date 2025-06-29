class CreateGoals < ActiveRecord::Migration[7.1]
  def change
    create_table :goals do |t|
      t.references :user, null: false, foreign_key: true
      t.string :identity_statement
      t.text :why_it_matters
      t.text :success_definition
      t.integer :time_commitment_minutes
      t.string :current_level

      t.timestamps
    end
  end
end
