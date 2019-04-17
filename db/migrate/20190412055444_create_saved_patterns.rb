class CreateSavedPatterns < ActiveRecord::Migration[5.2]
  def change
    create_table :saved_patterns do |t|
      t.integer :user_id
      t.integer :pattern_id
      t.belongs_to :user, foreign_key: true
      t.belongs_to :pattern, foreign_key: true

      t.timestamps
    end
  end
end
