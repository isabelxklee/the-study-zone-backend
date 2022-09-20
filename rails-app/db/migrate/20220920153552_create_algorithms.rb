class CreateAlgorithms < ActiveRecord::Migration[7.0]
  def change
    create_table :algorithms do |t|
      t.string :name
      t.text :description
      t.integer :category_id
      t.integer :difficulty_id

      t.timestamps
    end
  end
end
