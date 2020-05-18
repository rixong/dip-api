class CreateCabinMultipliers < ActiveRecord::Migration[6.0]
  def change
    create_table :cabin_multipliers do |t|
      t.float :multiplier
      t.integer :annual_report_id
      t.integer :cabin_id
      t.timestamps
    end
  end
end
