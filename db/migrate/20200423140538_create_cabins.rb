class CreateCabins < ActiveRecord::Migration[6.0]
  def change
    create_table :cabins do |t|
      t.string :name
      t.text :description
      t.float :multiplier

      t.timestamps
    end
  end
end
