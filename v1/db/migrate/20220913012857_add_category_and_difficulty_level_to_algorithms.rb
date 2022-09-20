class AddCategoryAndDifficultyLevelToAlgorithms < ActiveRecord::Migration[7.0]
  def change
    add_column :algorithms, :category_id, :integer
    add_column :algorithms, :difficulty_level_id, :integer
  end
end
