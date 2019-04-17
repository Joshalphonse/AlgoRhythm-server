class CreatePatterns < ActiveRecord::Migration[5.2]
  def change
    create_table :patterns do |t|
      t.integer :pattern


      t.timestamps
    end
  end
end
