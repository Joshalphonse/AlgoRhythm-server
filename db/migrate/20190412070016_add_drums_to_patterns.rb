class AddDrumsToPatterns < ActiveRecord::Migration[5.2]
  def change
      add_column :patterns, :drums, :integer, array: true, default: '{}'
  end
end
