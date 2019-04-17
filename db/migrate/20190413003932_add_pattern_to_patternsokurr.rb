class AddPatternToPatternsokurr < ActiveRecord::Migration[5.2]
  def change
      add_column :patterns, :pattern, :string
  end
end
