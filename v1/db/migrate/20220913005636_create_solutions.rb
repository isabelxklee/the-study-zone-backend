class CreateSolutions < ActiveRecord::Migration[7.0]
  def change
    create_table :solutions do |t|
      t.text :explanation
      t.string :time_complexity
      t.string :space_complexity

      t.timestamps
    end
  end
end
