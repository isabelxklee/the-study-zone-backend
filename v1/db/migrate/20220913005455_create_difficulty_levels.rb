class CreateDifficultyLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :difficulty_levels do |t|
      t.string :title

      t.timestamps
    end
  end
end
