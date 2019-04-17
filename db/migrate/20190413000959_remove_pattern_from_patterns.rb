class RemovePatternFromPatterns < ActiveRecord::Migration[5.2]
  def change
    remove_column :patterns, :pattern
  end
end
