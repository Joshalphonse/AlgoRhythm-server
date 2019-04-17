class AddNameToPatterns < ActiveRecord::Migration[5.2]
  def change
    add_column :patterns, :name, :string
  end
end
