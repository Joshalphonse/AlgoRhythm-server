class AddPatternToPatterns < ActiveRecord::Migration[5.2]
  def change
    add_column :patterns, :pattern, :integer, array: true, default: '{}'
  end
end
