class RemoveDrumsFromPatterns < ActiveRecord::Migration[5.2]
  def change
    remove_column :patterns, :drums
  end
end
