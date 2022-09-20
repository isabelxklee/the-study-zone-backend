class AddAlgorithmToSolutions < ActiveRecord::Migration[7.0]
  def change
    add_column :solutions, :algorithm_id, :integer
  end
end
