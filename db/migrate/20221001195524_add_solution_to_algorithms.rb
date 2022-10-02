class AddSolutionToAlgorithms < ActiveRecord::Migration[7.0]
  def change
    add_column :algorithms, :solution, :text
  end
end
